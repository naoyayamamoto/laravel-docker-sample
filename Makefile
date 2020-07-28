.PHONY: update

update:
	@docker run -it --rm -v `pwd`:/workspace composer \
		bash -c "composer create-project --prefer-dist laravel/laravel . && \
		cp README.md README.LARAVEL.md && \
		cp -aT . /workspace"
