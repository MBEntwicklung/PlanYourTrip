class TravelTypesController < ApplicationController
  # GET /travel_types
  # GET /travel_types.json
  def index
    @travel_types = TravelType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @travel_types }
    end
  end

  # GET /travel_types/1
  # GET /travel_types/1.json
  def show
    @travel_type = TravelType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @travel_type }
    end
  end

  # GET /travel_types/new
  # GET /travel_types/new.json
  def new
    @travel_type = TravelType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @travel_type }
    end
  end

  # GET /travel_types/1/edit
  def edit
    @travel_type = TravelType.find(params[:id])
  end

  # POST /travel_types
  # POST /travel_types.json
  def create
    @travel_type = TravelType.new(params[:travel_type])

    respond_to do |format|
      if @travel_type.save
        format.html { redirect_to @travel_type, :notice => 'Travel type was successfully created.' }
        format.json { render :json => @travel_type, :status => :created, :location => @travel_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @travel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /travel_types/1
  # PUT /travel_types/1.json
  def update
    @travel_type = TravelType.find(params[:id])

    respond_to do |format|
      if @travel_type.update_attributes(params[:travel_type])
        format.html { redirect_to @travel_type, :notice => 'Travel type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @travel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_types/1
  # DELETE /travel_types/1.json
  def destroy
    @travel_type = TravelType.find(params[:id])
    @travel_type.destroy

    respond_to do |format|
      format.html { redirect_to travel_types_url }
      format.json { head :ok }
    end
  end
end
