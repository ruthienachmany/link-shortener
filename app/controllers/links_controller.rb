class LinksController < ApplicationController
  # GET /links
  # GET /links.json
  def index
    @links = Link.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @links }
    end
  end

  

  # GET /links/1
  # GET /links/1.json
  def show
    # code
    # redirect_to "#{@link.long_link}"#, :status => :301 


    # redirect_to @link.long_link, :status => :301
    # shortened_link = @link.short_link
    # shortened_link = Link.find_by_unique_key()


    # @link = Link.find(params[:id])
    # redirect_to "#{@link.long_link}", :status => 301
    # #@link.visit_count += 1

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/new
  # GET /links/new.json
  def new
    @link = Link.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/1/edit
  def edit
    @link = Link.find(params[:id])
  end

  # POST /links
  # POST /links.json
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

  # PUT /links/1
  # PUT /links/1.json
  def update
    @link = Link.find(params[:id])

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

def go
  @link = Link.find_by_short_link!(params[:short_link])
  redirect_to @link.long_link, :status => @link.http_status
  @link.increment!(:visit_count) 
end


  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :no_content }
    end
  end
end
