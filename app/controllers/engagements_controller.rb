
class EngagementsController < ApplicationController
  respond_to :html, :json

  # GET /engagements
  # GET /engagements.json
  def index
    if(params[:client_id])
      @engagements = Engagement.find_all_by_client_id(params[:client_id])
    else
      @engagements = Engagement.all
    end

    respond_with(@engagements)
  end

  # GET /engagements/1
  # GET /engagements/1.json
  def show
    @engagement = Engagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @engagement }
    end
  end

  # GET /engagements/new
  # GET /engagements/new.json
  def new
    @engagement = Engagement.new
    @clients = Client.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @engagement }
    end
  end

  # GET /engagements/1/edit
  def edit
    @engagement = Engagement.find(params[:id])
    @clients = Client.all
  end

  # POST /engagements
  # POST /engagements.json
  def create
    @engagement = Engagement.new(params[:engagement])

    respond_to do |format|
      if @engagement.save
        format.html { redirect_to @engagement, notice: 'Engagement was successfully created.' }
        format.json { render json: @engagement, status: :created, location: @engagement }
      else
        format.html { render action: "new" }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /engagements/1
  # PUT /engagements/1.json
  def update
    @engagement = Engagement.find(params[:id])

    respond_to do |format|
      if @engagement.update_attributes(params[:engagement])
        format.html { redirect_to @engagement, notice: 'Engagement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engagements/1
  # DELETE /engagements/1.json
  def destroy
    @engagement = Engagement.find(params[:id])
    @engagement.destroy

    respond_to do |format|
      format.html { redirect_to engagements_url }
      format.json { head :no_content }
    end
  end
end
