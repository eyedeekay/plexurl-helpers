
install:
	chmod +x local/bin/* local/lib/*
	install etc/plexurl.cfg /etc/
	install local/bin/pms-login /usr/local/bin
	install local/bin/movie-search /usr/local/bin
	install local/bin/movie-list /usr/local/bin
	install local/lib/plexurl-helper-common.sh /usr/local/lib
