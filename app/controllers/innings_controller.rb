class InningsController < ApplicationController
  before_filter :authenticate_user!
  # GET /innings
  # GET /innings.json
  def index
    @innings = Inning.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @innings }
    end
  end

  # GET /innings/1
  # GET /innings/1.json
  def show
    @inning = Inning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inning }
    end
  end

  # GET /innings/new
  # GET /innings/new.json
  def new
    @inning = Inning.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inning }
    end
  end

  # GET /innings/1/edit
  def edit
    @inning = Inning.find(params[:id])
  end

  # POST /innings
  # POST /innings.json
  def create
    @inning = Inning.new(params[:inning])

    respond_to do |format|
      if @inning.save
        format.html { redirect_to @inning, notice: 'Inning was successfully created.' }
        format.json { render json: @inning, status: :created, location: @inning }
      else
        format.html { render action: "new" }
        format.json { render json: @inning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /innings/1
  # PUT /innings/1.json
  def update
    @inning = Inning.find(params[:id])

    respond_to do |format|
      if @inning.update_attributes(params[:inning])
        format.html { redirect_to @inning, notice: 'Inning was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /innings/1
  # DELETE /innings/1.json
  def destroy
    @inning = Inning.find(params[:id])
    @inning.destroy

    respond_to do |format|
      format.html { redirect_to innings_url }
      format.json { head :no_content }
    end
  end
end
