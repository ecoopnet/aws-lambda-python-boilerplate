.PHONY: run zip

run:
	./exec_docker.sh

zip: out/deploy.zip
	

out/deploy.zip: src/*
	zip -jr out/deploy.zip src/

