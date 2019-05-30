module github.com/go-swagger-sample/gen/cmd/go-swagger-sample-server

go 1.12

require (
	github.com/go-openapi/loads v0.19.0
	github.com/go-swagger-sample/gen/restapi v0.0.0-00010101000000-000000000000
	github.com/jessevdk/go-flags v1.4.0
)

replace github.com/go-swagger-sample/gen/restapi => ../../restapi/
