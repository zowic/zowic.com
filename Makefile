SCSS_IN=scss/**
CSS_OUT=root/static/css/all.css

all: scss

$(CSS_OUT): $(SCSS_IN)
	sassc --style compressed -I external/foundation/scss scss/base.scss $(CSS_OUT)

scss: $(CSS_OUT)

serve:
	cd root && python -m SimpleHTTPServer
