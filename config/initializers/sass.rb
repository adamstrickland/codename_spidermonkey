Sass::Plugin.options[:template_location] = {'./app/stylesheets' => './public/stylesheets'}
Sass::Plugin.options[:line_numbers] = Rails.env == "production" ? false : true,
Sass::Plugin.options[:style] = Rails.env == "production" ? :compressed : :nested

