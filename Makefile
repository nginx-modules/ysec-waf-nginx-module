with:
	cd $(shell pwd)/../../../../ && ./configure --add-module=$(shell pwd) --without-mail_pop3_module --without-mail_smtp_module --without-mail_imap_module --without-http_uwsgi_module --without-http_scgi_module && make -j6 && make install

with-debug:
	cd $(shell pwd)/../../../../ && ./configure --add-module=$(shell pwd) --without-mail_pop3_module --without-mail_smtp_module --without-mail_imap_module --without-http_uwsgi_module --without-http_scgi_module --with-debug && make -j6 && make install

nginx:
	cd $(shell pwd)/../../../../ && make -j6&& make install

clean:
	cd $(shell pwd)/../../../../ && make clean

test:
	prove -r t/*.t
