class PagesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :destroy, :update]
    
    def news
        if current_user
            @pages_ontop = Page.where(:ontop => true).order(created_at: :desc)
            @pages_display = Page.where(:ontop => [false, nil]).order(created_at: :desc)
        else
            @pages_ontop = Page.where(:display => true,:ontop => true).order(created_at: :desc)
            @pages_display = Page.where(:display => true,:ontop => false).order(created_at: :desc)
        end
    end
    def new
      @page = Page.new
    end
    def create
      @page = Page.new page_params
      if @page.save
        redirect_to root_path
      else
        render 'new'
      end
    end
    def edit
      @page = Page.find_by(id: params[:id]) 
    end
    def update
      @page = Page.find_by(id: params[:id]) 
      @page.update page_params
      if @page.remove_attachment
        @page.remove_attachment!
        @page.attachment = nil
      end
      
      if @page.save
        redirect_to root_path
      else
        render 'edit'
      end
    end
    def destroy
      @page = Page.find_by(id: params[:id]) 
      @page.destroy
      redirect_to root_path
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
    
    private
    def authenticate_user!
        if !current_user
            redirect_to root_path
        end
    end
    def page_params
      params.require(:page).permit(:title, :classify, :context, :ontop, :display, :attachment, :remove_attachment)
    end
    
end
