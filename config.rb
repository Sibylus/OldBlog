puts "Loading compass config with environment #{ENV['OCTOPRESS_ENV']}"
# Require any additional compass plugins here.
project_type = :stand_alone

# Publishing paths
http_path = "/blog/"
http_images_path = ENV['OCTOPRESS_ENV'] == "preview" ? "/blog/images" : "http://oblog.rentobo.com/images"
http_fonts_path = "/blog/fonts"
css_dir = "public/blog/stylesheets"

# Local development paths
sass_dir = "sass"
images_dir = "source/images"
fonts_dir = "source/fonts"
asset_cache_buster :none

line_comments = false
output_style = :compressed
