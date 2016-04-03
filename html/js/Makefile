all:
	bin/get -u "http://moviejie.com/movie/fc2aaa/" \
		-o attr@href \
		"tr:has(td.movie_name:contains(中英字幕.WEB-HR.AAC.1024X576.x264.mp4))" \
		":last-child:first-child" \
		| sed 's~^~http://moviejie.com~' \
		| xargs -I{} bin/get -u "{}" -o text "#link_text_span"
