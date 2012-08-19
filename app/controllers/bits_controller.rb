class BitsController < ApplicationController
    respond_to :html, :json
    def index
        @bits = Bit.where(:status => "on").paginate(:page => params[:page])
    end

    def show
        @bit = Bit.find(params[:id])
    end

    def new
        @bit = Bit.new
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
