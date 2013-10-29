class BattingLinesController < ApplicationController
  before_filter :authenticate_user!
  # GET /batting_lines
  # GET /batting_lines.json
  def index
    @batting_lines = BattingLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @batting_lines }
    end
  end

  # GET /batting_lines/1
  # GET /batting_lines/1.json
  def show
    @batting_line = BattingLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @batting_line }
    end
  end

  # GET /batting_lines/new
  # GET /batting_lines/new.json
  def new
    @batting_line = BattingLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @batting_line }
    end
  end

  # GET /batting_lines/1/edit
  def edit
    @batting_line = BattingLine.find(params[:id])
  end

  # POST /batting_lines
  # POST /batting_lines.json
  def create
    @batting_line = BattingLine.new(params[:batting_line])

    respond_to do |format|
      if @batting_line.save
        format.html { redirect_to @batting_line, notice: 'Batting line was successfully created.' }
        format.json { render json: @batting_line, status: :created, location: @batting_line }
      else
        format.html { render action: "new" }
        format.json { render json: @batting_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /batting_lines/1
  # PUT /batting_lines/1.json
  def update
    @batting_line = BattingLine.find(params[:id])

    respond_to do |format|
      if @batting_line.update_attributes(params[:batting_line])
        format.html { redirect_to @batting_line, notice: 'Batting line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @batting_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batting_lines/1
  # DELETE /batting_lines/1.json
  def destroy
    @batting_line = BattingLine.find(params[:id])
    @batting_line.destroy

    respond_to do |format|
      format.html { redirect_to batting_lines_url }
      format.json { head :no_content }
    end
  end
end
