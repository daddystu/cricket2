class ScorecardsController < ApplicationController
  before_filter :authenticate_user!
  # GET /scorecards
  # GET /scorecards.json
  def index
    @scorecards = Scorecard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scorecards }
    end
  end

  # GET /scorecards/1
  # GET /scorecards/1.json
  def show
    @scorecard = Scorecard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scorecard }
    end
  end

  # GET /scorecards/new
  # GET /scorecards/new.json
  def new
    @scorecard = Scorecard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scorecard }
    end
  end

  # GET /scorecards/1/edit
  def edit
    @scorecard = Scorecard.find(params[:id])
  end

  # POST /scorecards
  # POST /scorecards.json
  def create
    @scorecard = Scorecard.new(params[:scorecard])

    respond_to do |format|
      if @scorecard.save
        format.html { redirect_to @scorecard, notice: 'Scorecard was successfully created.' }
        format.json { render json: @scorecard, status: :created, location: @scorecard }
      else
        format.html { render action: "new" }
        format.json { render json: @scorecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scorecards/1
  # PUT /scorecards/1.json
  def update
    @scorecard = Scorecard.find(params[:id])

    respond_to do |format|
      if @scorecard.update_attributes(params[:scorecard])
        format.html { redirect_to @scorecard, notice: 'Scorecard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scorecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scorecards/1
  # DELETE /scorecards/1.json
  def destroy
    @scorecard = Scorecard.find(params[:id])
    @scorecard.destroy

    respond_to do |format|
      format.html { redirect_to scorecards_url }
      format.json { head :no_content }
    end
  end
end
