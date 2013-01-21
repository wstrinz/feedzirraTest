class FeedboxesController < ApplicationController
  # GET /feedboxes
  # GET /feedboxes.json
  def index
    @feedboxes = Feedbox.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedboxes }
    end
  end

  # GET /feedboxes/1
  # GET /feedboxes/1.json
  def show
    @feedbox = Feedbox.find(params[:id])
    # @feedbox.update_feed
    @storyt = @feedbox.current_story.title
    @storyc = @feedbox.current_story.content.html_safe

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feedbox }
    end
  end

  # GET /feedboxes/new
  # GET /feedboxes/new.json
  def new
    @feedbox = Feedbox.new
    #@feedbox.update_feed

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feedbox }
    end
  end

  # GET /feedboxes/1/edit
  def edit
    @feedbox = Feedbox.find(params[:id])
  end

  # POST /feedboxes
  # POST /feedboxes.json
  def create
    @feedbox = Feedbox.new(params[:feedbox])
    @feedbox.update_feed

    respond_to do |format|
      if @feedbox.save
        format.html { redirect_to @feedbox, notice: 'Feedbox was successfully created.' }
        format.json { render json: @feedbox, status: :created, location: @feedbox }
      else
        format.html { render action: "new" }
        format.json { render json: @feedbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feedboxes/1
  # PUT /feedboxes/1.json
  def update
    @feedbox = Feedbox.find(params[:id])

    respond_to do |format|
      if @feedbox.update_attributes(params[:feedbox])
        format.html { redirect_to @feedbox, notice: 'Feedbox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feedbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedboxes/1
  # DELETE /feedboxes/1.json
  def destroy
    @feedbox = Feedbox.find(params[:id])
    @feedbox.destroy

    respond_to do |format|
      format.html { redirect_to feedboxes_url }
      format.json { head :no_content }
    end
  end

  def refresh
    @feedbox = Feedbox.find(params[:id])
    @feedbox.update_feed

    respond_to do |format|
      format.html { redirect_to @feedbox }
      format.json { head :no_content }
    end
  end

  def refresh_all
    Feedbox.all.each do |box|
      box.update_feed
    end

    respond_to do |format|
      format.html { redirect_to @feedbox  }
      format.json { head :no_content }
    end
  end

  def next
    @feedbox = Feedbox.find(params[:id])
    @feedbox.next_article
    # @feedbox.read_index+=1
    # @feedbox.save

    respond_to do |format|
      format.html { redirect_to @feedbox  }
      format.json { head :no_content }
    end
  end

  def prev
    @feedbox = Feedbox.find(params[:id])
    @feedbox.prev_article
    # @feedbox.read_index-=1
    # @feedbox.save

    respond_to do |format|
      format.html { redirect_to @feedbox  }
      format.json { head :no_content }
    end
  end
end
