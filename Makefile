
FILES=$(shell git ls-files lib/ spec/ example.rb simplyrets.gemspec)

generate: ruby-client.zip
	rm -rf ruby-client/
	unzip ruby-client.zip
	cp -r ruby-client/lib/swagger_client.rb lib/simplyrets.rb
	cp -r ruby-client/lib/swagger_client/* lib/simplyrets/

	sed -i 's/SwaggerClient/SimplyRetsClient/g' $(FILES)
	sed -i 's/swagger_client/simplyrets/g' $(FILES)

	git grep -I --name-only -z -e '' | \
		xargs -0 sed -i -e 's/[ \t]\+\(\r\?\)$$/\1/'

ruby-client.zip:
	curl -XPOST http://generator.swagger.io/api/gen/clients/ruby			\
		--verbose -D - --fail --show-error --insecure -s			\
		-H 'Origin: http://editor.swagger.io'					\
		-H 'Referer: http://editor.swagger.io'					\
		-H 'Accept: application/json'						\
		-H 'Content-Type: application/json'					\
		-d '{"swaggerUrl": "https://docs.simplyrets.com/api/resources.json"}'	\
		-o ruby-client.meta

	cat ruby-client.meta | \
		jq --raw-output .link | \
		xargs curl  --output ruby-client.zip

test:
	bundle exec ./example.rb
