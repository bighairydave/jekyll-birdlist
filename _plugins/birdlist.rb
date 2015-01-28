module Jekyll
  class BirdListGenerator < Generator
    def generate(site)
      lifelist = Array.new
      site.posts.each do | post |
        if post.data['birds']
          post.data['lifelist'] = []
          for bird in post.data['birds']
            unless lifelist.include? bird.capitalize
              post.data['lifelist'].push(bird)
              lifelist.push(bird.capitalize)
              site.pages << BirdPage.new(site, "/", "birds/#{ bird.downcase.gsub(" ", "-") }", bird)
            end
          end
        end
      end
      lifelist.sort!
      site.pages <<  LifeListPage.new(site, site.source, "lifelist", "index.html", lifelist)
    end
  end

  class LifeListPage < Page
    def initialize(site, base, dir, name, lifelist)
      super(site, base, dir, name)
      self.data['lifelist'] = lifelist 
    end
  end

  class BirdPage < Page
    def initialize(site, base, dir, bird)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'birdpage.html')
      self.data['bird'] = bird
    end
  end
end

