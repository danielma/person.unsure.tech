.PHONY: foreman

foreman:
	foreman start

build:
	(cd themes/unsure && brunch b --production)
	hugo

deploy:
	(cd public && git add --all && git commit -m "Publishing `date`")
	git push origin gh-pages

publish: build && deploy

