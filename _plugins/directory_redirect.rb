
module DirectoryRedirect
    class DirectoryRedirectGenerator < Jekyll::Generator
        def generate(site)
            for collection in site.collections.each do
                if collection[1].label == "skins"
                    for skin in collection[1].docs.each do
                        site.pages << CustomPage.new(site,skin)
                    end
                end
            end
        end
    end
    
    class CustomPage < Jekyll::Page
        def initialize(site,skin)
            @site = site
    
            # Path to the source directory.
            @base = site.source
    
            # Directory the page will reside in.
            @dir = 'skins/' + skin.data["skinid"].to_s
    
            # All pages have the same filename.
            @basename = 'index'
            @ext = '.html'
            @name = 'index.html'
    
            # Define any custom data you want.
            @data = {
            'layout' => 'redirect',
            'redirectLink' =>  site.baseurl + skin.url,
            }
        end
    end
  end