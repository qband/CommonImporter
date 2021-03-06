# slice the web page

a cli tool to extract data from web page

## feature
- selector chains to get specific tag element
- proxy support env variable `http_proxy`
- @TODO extractor chains to get accurate data

## real world example
    bin/get -u "http://moviejie.com/movie/fc2aaa/" \
      -o attr@href \
      "tr:has(td.movie_name:contains(中英字幕.WEB-HR.AAC.1024X576.x264.mp4))" \
      ":last-child:first-child" \
      | sed 's~^~http://moviejie.com~' \
      | xargs -I{} bin/get -u "{}" -o text "#link_text_span"

## reference
- how to get useful data
  - query language
  - dom element
    - selector/querySelectorAll - [1](https://stackoverflow.com/questions/190253/jquery-selector-regular-expressions) - [2](https://stackoverflow.com/questions/9309763/jquery-selector-contains-use-regular-expressions)
      - selector chains - [1](https://github.com/ded/qwery) - [2](https://github.com/rvagg/traversty)
    - xpath - [1](https://stackoverflow.com/questions/10596417/is-there-a-way-to-get-element-by-xpath-using-javascript-in-selenium-webdriver) - [2](https://stackoverflow.com/questions/2994198/xpath-to-return-only-elements-containing-the-text-and-not-its-parents)
  - text processing
    - regex

- impl in mind
  - headless browser
  - http client + html parser
  - browser remote debug
  - browser plugin

- impl in real world
  - x-ray
  - Scrapy
  - zombie
  - phantomjs
    - scraperjs
    - CasperJS
  - YQL

- tools to make cli
  - nodejs - [1](http://node-modules.com/search?q=command+line) - [2](https://github.com/search?l=JavaScript&o=desc&q=command&s=stars&type=Repositories&utf8=%E2%9C%93) - [3](http://nipstr.com/#command)

- command exectution - cross platform
  - nodejs spawn
  - cross-spawn

- pass the value not the reference
  - closure [1](https://stackoverflow.com/questions/2568966/how-do-i-pass-the-value-not-the-reference-of-a-js-variable-to-a-function)
  - create function - [1](https://stackoverflow.com/questions/7650071/is-there-a-way-to-create-a-function-from-a-string-with-javascript)
    - eval
    - Function
    -  sjsClass
