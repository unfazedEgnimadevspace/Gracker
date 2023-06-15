#This pages controller serve static pages of the website that require no prior authentication 
# It renders the home page, about page, contact and pricing pages...
class Website::PagesController < ApplicationController
    def show 
      if valid_page? 
       render template: "website/pages/#{params[:page]}"
      else  
        render file: "#{Rails.root}/public/404.html", status: :not_found
      end
    end

    private 

    def valid_page?
      Rails.root.join('app', 'views', 'website', 'pages', "#{params[:page]}.html.erb").exist?
    end
  
end
