class BitsController < ApplicationController
    before_filter :authenticate_user!, :except => [:index, :show]
    
    respond_to :html, :json
    def index
        freshness = params[:purity] || "fresh"
        #@bits = Bit.includes(:user).search(params[:search]).freshness(freshness).order("updated_at DESC").page(params[:page]).per(50)
        @bits = Bit.includes(:user, :episodes).search(params[:search]).freshness(freshness).order("updated_at DESC").page(params[:page]).per(50)
        
    end
    
    def show
        @bit = Bit.find(params[:id])
    end

    def new
        @bit = Bit.new
        @bit.user = current_user
    end

    def create
        @bit = Bit.new(params[:bit])
        if @bit.save
          redirect_to @bit, :notice => "Successfully created bit."
        else
          render :action => 'new'
        end
    end

    def edit
        @bit = Bit.find(params[:id])
    end

    def update
        @bit = Bit.find(params[:id])
        if @bit.update_attributes(params[:bit])
          redirect_to @bit, :notice  => "Successfully updated bit."
        else
          render :action => 'edit'
        end
    end

    def destroy
        @bit = Bit.find(params[:id])
        @bit.destroy
        redirect_to bits_url, :notice => "Successfully destroyed bit."
    end
end
