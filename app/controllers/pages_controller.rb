class PagesController < ApplicationController
    def news
        @pages_ontop = Page.where(:display => true,:ontop => true).order(created_at: :desc)
        @pages_display = Page.where(:display => true,:ontop => false).order(created_at: :desc)
    end
    def about
    end
    def show
        @announcement = Page.find_by(id: params[:id]) 
        if @announcement == nil
            redirect_to root_path
        end
    end
    def race
    end
    def score
    end
end
