class LinksController < ApplicationController

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link }
    end
  end

  def new
    @link = Link.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
    end
  end

  def create
    @link = Link.new(params[:link])
    @link.long_link = URI(params[:link][:long_link]).to_s
    @link.short_link = @link.randomly_generated_short_link
    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  def go
    @link = Link.find_by_short_link!(params[:short_link])
    redirect_to @link.long_link, :status => @link.http_status
    @link.increment!(:visit_count) 
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :no_content }
    end
  end
end
