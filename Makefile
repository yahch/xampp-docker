.PHONY: build run enter clean save
xampp_version:=v8.2.4.0
build:
	docker build . -t xampp:$(xampp_version)

run:
	docker run --name xampp_$(xampp_version)_run_test --rm -it xampp:$(xampp_version)
	
enter:
	docker exec -it xampp_$(xampp_version)_run_test /bin/bash
	
clean:
	docker rm -f xampp_$(xampp_version)_run_test
	docker rmi xampp:$(xampp_version)
	
save: build
	docker save xampp:$(xampp_version) > xampp@$(xampp_version).tar
	docker rmi xampp:$(xampp_version)
	gzip -v xampp@$(xampp_version).tar