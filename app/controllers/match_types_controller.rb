class MatchTypesController < ApplicationController
  before_filter :authenticate_user!
  # GET /match_types
  # GET /match_types.json
  def index
    @match_types = MatchType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @match_types }
    end
  end

  # GET /match_types/1
  # GET /match_types/1.json
  def show
    @match_type = MatchType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @match_type }
    end
  end

  # GET /match_types/new
  # GET /match_types/new.json
  def new
    @match_type = MatchType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @match_type }
    end
  end

  # GET /match_types/1/edit
  def edit
    @match_type = MatchType.find(params[:id])
  end

  # POST /match_types
  # POST /match_types.json
  def create
    @match_type = MatchType.new(params[:match_type])

    respond_to do |format|
      if @match_type.save
        format.html { redirect_to @match_type, notice: 'Match type was successfully created.' }
        format.json { render json: @match_type, status: :created, location: @match_type }
      else
        format.html { render action: "new" }
        format.json { render json: @match_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /match_types/1
  # PUT /match_types/1.json
  def update
    @match_type = MatchType.find(params[:id])

    respond_to do |format|
      if @match_type.update_attributes(params[:match_type])
        format.html { redirect_to @match_type, notice: 'Match type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @match_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_types/1
  # DELETE /match_types/1.json
  def destroy
    @match_type = MatchType.find(params[:id])
    @match_type.destroy

    respond_to do |format|
      format.html { redirect_to match_types_url }
      format.json { head :no_content }
    end
  end
end
