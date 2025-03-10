$:.unshift(File.expand_path("../lib", __FILE__))
require "jekyll/strapi/version"

Gem::Specification.new do |spec|
  spec.version = Jekyll::Strapi::VERSION
  spec.homepage = "https://github.com/Marktawa/jekyll-strapi-mod.git"
  spec.authors = ["marktawa"]
  spec.email = ["markmunyaka@gmail.com"]
  spec.files = %W(README.md LICENSE) + Dir["lib/**/*"]
  spec.summary = "Strapi.io integration for Jekyll"
  spec.name = "jekyll-strapi-mod"
  spec.license = "MIT"
  spec.require_paths = ["lib"]
  spec.description = spec.description = <<-DESC
    A Jekyll plugin for retrieving content from a Strapi API. Works with Strapi v4
  DESC

  spec.add_runtime_dependency("jekyll", "~> 4")
  spec.add_runtime_dependency("http", "~> 3.2")
  spec.add_runtime_dependency("json", "~> 2.1")
end
