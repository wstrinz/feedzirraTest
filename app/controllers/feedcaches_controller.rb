class FeedcachesController < ApplicationController
  # GET /feedcaches
  # GET /feedcaches.json
  def index
    @feedcaches = Feedcache.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedcaches }
    end
  end

  # GET /feedcaches/1
  # GET /feedcaches/1.json
  def show
    @feedcach = Feedcache.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feedcach }
    end
  end

  # GET /feedcaches/new
  # GET /feedcaches/new.json
  def new
    @feedcach = Feedcache.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feedcach }
    end
  end

  # GET /feedcaches/1/edit
  def edit
    @feedcach = Feedcache.find(params[:id])
  end

  # POST /feedcaches
  # POST /feedcaches.json
  def create
    @feedcach = Feedcache.new(params[:feedcach])

    respond_to do |format|
      if @feedcach.save
        format.html { redirect_to @feedcach, notice: 'Feedcache was successfully created.' }
        format.json { render json: @feedcach, status: :created, location: @feedcach }
      else
        format.html { render action: "new" }
        format.json { render json: @feedcach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feedcaches/1
  # PUT /feedcaches/1.json
  def update
    @feedcach = Feedcache.find(params[:id])

    respond_to do |format|
      if @feedcach.update_attributes(params[:feedcach])
        format.html { redirect_to @feedcach, notice: 'Feedcache was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feedcach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedcaches/1
  # DELETE /feedcaches/1.json
  def destroy
    @feedcach = Feedcache.find(params[:id])
    @feedcach.destroy

    respond_to do |format|
      format.html { redirect_to feedcaches_url }
      format.json { head :no_content }
    end
  end
end
