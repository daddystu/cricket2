class BowlingLinesController < ApplicationController
  before_filter :authenticate_user!
  # GET /bowling_lines
  # GET /bowling_lines.json
  def index
    @bowling_lines = BowlingLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bowling_lines }
    end
  end

  # GET /bowling_lines/1
  # GET /bowling_lines/1.json
  def show
    @bowling_line = BowlingLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bowling_line }
    end
  end

  # GET /bowling_lines/new
  # GET /bowling_lines/new.json
  def new
    @bowling_line = BowlingLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bowling_line }
    end
  end

  # GET /bowling_lines/1/edit
  def edit
    @bowling_line = BowlingLine.find(params[:id])
  end

  # POST /bowling_lines
  # POST /bowling_lines.json
  def create
    @bowling_line = BowlingLine.new(params[:bowling_line])

    respond_to do |format|
      if @bowling_line.save
        format.html { redirect_to @bowling_line, notice: 'Bowling line was successfully created.' }
        format.json { render json: @bowling_line, status: :created, location: @bowling_line }
      else
        format.html { render action: "new" }
        format.json { render json: @bowling_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bowling_lines/1
  # PUT /bowling_lines/1.json
  def update
    @bowling_line = BowlingLine.find(params[:id])

    respond_to do |format|
      if @bowling_line.update_attributes(params[:bowling_line])
        format.html { redirect_to @bowling_line, notice: 'Bowling line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bowling_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowling_lines/1
  # DELETE /bowling_lines/1.json
  def destroy
    @bowling_line = BowlingLine.find(params[:id])
    @bowling_line.destroy

    respond_to do |format|
      format.html { redirect_to bowling_lines_url }
      format.json { head :no_content }
    end
  end
end
