from scrapy.spiders     import Spider
from scrapy.selector    import HtmlXPathSelector
from pssclub.items  import PssclubItem
from scrapy.http    import Request

class PssclubSpider(Spider):
    name = "pssclub"
    allowed_domains = ["pssclub.com"]
    start_urls  = ["http://pssclub.com/forum.php?mod=forumdisplay&fid=2"]

    def parse(self, response):
        for title in response.css('th.new > a.xst::text').extract():
            item = PssclubItem()
            item['title'] = title
            yield item
