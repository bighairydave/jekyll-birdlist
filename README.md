# jekyll-birdlist

Jekyll plugin for bird watchers

This plugin allows you to attach a list of birds to each blog post. These lists will be compiled to provide a lifelist - a list of all the birds ever seen - and a page for each bird with a list of sightings.

## Installation

Assuming you have already installed Jekyll:

1. Place `birdlist.rb` in your `_plugins` folder (if you don't) have one, create it in the root folder of your site.
2. Add `birdpage.html` to your `_layouts` folder.
3. Add the `lifelist` folder and `index.html` to the root of your project.
4. Either replace your post layout (`_layouts/post.html`) with the one in this repository, or add the code below to your own `post.html`

## Usage

Add the following variables to the YAML front-matter of your blog posts. Examples are provided in the two sample posts in the repository.

### birds

This is the list of birds that you wish to record for this post. It can be in a bulleted list or comma separated format.

```yml
birds:
  - Carrion crow
  - Jackdaw
  - Magpie
  - Common Buzzard
```

or

```yml
birds: [Carrion crow, Jackdaw, Magpie, Common Buzzard]
```
### location

You can specify a location for each post; this will appear in the list of sightings on each bird page.

```yml
location: Mirkwood
```

* this is completely optional.
* it's freeform, you will have to decide for yourself how granular to be.
* you can only specify one location per post; if your day's birding takes in multiple locations I can only suggest splitting it into multiple posts?
* in the future I may develop the location idea further, to enable garden, patch, county, state and country lists.