package main

import (
	"fmt"
	"strings"

	"github.com/PuerkitoBio/goquery"
	"github.com/headzoo/surf"
)

func main() {
	bow := surf.NewBrowser()
	err := bow.Open("https://github.com/trending")
	if err != nil {
		panic(err)
	}

	bow.Find("li.repo-list-item").Each(func(_ int, s *goquery.Selection) {
		href, _ := s.Find("h3.repo-list-name a").Attr("href")
		description := s.Find("p.repo-list-description").Text()
		description = strings.TrimSpace(description)
		fmt.Printf("%s%s%s\n", href, "\t", description)
	})
}
