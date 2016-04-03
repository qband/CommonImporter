MSG=pssclub

all:
	cd ${MSG} && scrapy crawl ${MSG} -o data.json

init:
	sudo pip2 install scrapy

create:
	scrapy startproject ${MSG}
