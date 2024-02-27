build:
	mdbook build -d book
	mdbook build -d docs
serve:
	mdbook serve -o -d book -p 3004