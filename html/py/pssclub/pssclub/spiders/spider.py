from scrapy.spiders     import Spider
from scrapy.selector    import HtmlXPathSelector
from pssclub.items  import PssclubItem
from scrapy.http    import Request

class PssclubSpider(Spider):
    name = "pssclub"
    allowed_domains = ["pssclub.com"]
    start_urls  = ["http://pssclub.com/forum.php?mod=forumdisplay&fid=2"]

    def parse(self, response):
        for url in response.css('th.new > a.xst').re('.*/category/.*'):
            yield scrapy.Request(response.urljoin(url), self.parse_titles)

    def parse_titles(self, response):
        for post_title in response.css('div.entries > ul > li a::text').extract():
            yield {'title': post_title}
