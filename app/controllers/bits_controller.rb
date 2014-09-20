class BitsController < ApplicationController
    before_filter :authenticate_user!, :except => [:index, :show]
   # before_filter :set_defalt_path
    
    respond_to :html, :json
    def index
        if params[:episode_id]
          @episode = Episode.find(params[:episode_id])
        end
        freshness = params[:purity] || "fresh"
        #@bits = Bit.includes(:user).search(params[:search]).freshness(freshness).order("updated_at DESC").page(params[:page]).per(50)
        @bits = Bit.includes(:user, :episodes).search(params[:search]).freshness(freshness).order("updated_at DESC").page(params[:page]).per(50)
        
    end

    def new
        if params[:return_url]
            session[:return_to] = params[:return_url]
        else
            session[:return_to] ||= request.referer
        end
        @bit = Bit.new(params[:bit])
        @bit.user = current_user
    end
    
    def show
        @bit = Bit.find(params[:id])
    end

    def create
        @bit = Bit.new(params[:bit])
        if @bit.save
          redirect_smart "Successfully updated bit."
        else
          render :action => 'new'
        end
    end

    def edit
      session[:return_to] ||= request.referer
      @bit = Bit.find(params[:id])
    end
    
    def set_defalt_path
        session[:return_to] = params[:return_url] if params[:return_url]
    end
    
    def redirect_smart (notice)
      if session[:return_to]
        @to_url = session[:return_to]
        session[:return_to] = nil
        redirect_to @to_url, :notice => notice
      else
        redirect_to @bit, :notice => notice
      end
    end

    def update
        @bit = Bit.find(params[:id])
        if @bit.update_attributes(params[:bit])
          redirect_smart "Successfully updated bit."
        else
          render :action => 'edit'
        end
    end

    def destroy
        @bit = Bit.find(params[:id])
        @bit.destroy
        redirect_smart "Successfully destroyed bit."
    end
end
