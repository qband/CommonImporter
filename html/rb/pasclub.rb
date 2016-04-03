require 'wombat'

Wombat.crawl do
  base_url "https://www.github.com"
  path "/"

  headline xpath: "//h1"
  subheading css: "p.subheading"

  what_is({ css: ".one-half h3" }, :list)

  links do
    explore xpath: '//*[@class="wrapper"]/div[1]/div[1]/div[2]/ul/li[1]/a' do |e|
      e.gsub(/Explore/, "Love")
    end

    features css: '.features'
    enterprise css: '.enterprise'
    blog css: '.blog'
  end
end
