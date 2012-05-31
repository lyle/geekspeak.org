class SegmentBitsController < ApplicationController
  def index
    @segment_bits = SegmentBit.all
  end

  def show
    @segment_bit = SegmentBit.find(params[:id])
  end

  def new
    @segment_bit = SegmentBit.new
  end

  def create
    @segment_bit = SegmentBit.new(params[:segment_bit])
    if @segment_bit.save
      redirect_to @segment_bit, :notice => "Successfully created segment bit."
    else
      render :action => 'new'
    end
  end

  def edit
    @segment_bit = SegmentBit.find(params[:id])
  end

  def update
    @segment_bit = SegmentBit.find(params[:id])
    if @segment_bit.update_attributes(params[:segment_bit])
      redirect_to @segment_bit, :notice  => "Successfully updated segment bit."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @segment_bit = SegmentBit.find(params[:id])
    @segment_bit.destroy
    redirect_to segment_bits_url, :notice => "Successfully destroyed segment bit."
  end
end
