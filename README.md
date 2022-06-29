# jekyll-strapi-custom

>This plugin is a fork of the original jekyll-strapi plugin. The jekyll-strapi-custom plugin is compatible with Strapi v4

## Install

Add the "jekyll-strapi-custom" gem to your Gemfile:

```ruby
gem "jekyll-strapi-custom"
```

Then add "jekyll-strapi-custom" to your plugins in `_config.yml`:

```yaml
plugins:
    - jekyll-strapi-custom
```

## Configuration

```yaml
strapi:
    # Your API endpoint (optional, default to http://localhost:1337)
    endpoint: http://localhost:1337/api
    # Collections, key is used to access in the strapi.collections
    # template variable
    collections:
        # Example for a "articles" collection
        articles:         
            # Collection name (optional)
            type: article
            # Permalink used to generate the output files (eg. /articles/:id).
            permalink: /articles/:id/
            # Layout file for this collection
            layout: strapi_article.html
            # Generate output files or not (default: false)
            output: true
```

## Usage

This plugin provides the `strapi` template variable. This template provides access to the collections defined in the configuration.

### Using Collections

Collections are accessed by their name in `strapi.collections`. The `articles` collections is available at `strapi.collections.articles`.

To list all documents of the collection:

```html
{% for post in strapi.collections.articles %}
<article>
    <header>
        {{ post.attributes.title }}
    </header>
    <div class="body">
        {{ post.attributes.content }}
    </div>
</article>
{% endfor %}
```
