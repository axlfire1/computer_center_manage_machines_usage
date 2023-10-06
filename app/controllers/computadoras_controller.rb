class ComputadorasController < ApplicationController
  # GET /computadoras
  # GET /computadoras.json
  def index
    @computadoras = Computadora.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @computadoras }
    end
  end

  # GET /computadoras/1
  # GET /computadoras/1.json
  def show
    @computadora = Computadora.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @computadora }
    end
  end

  # GET /computadoras/new
  # GET /computadoras/new.json
  def new
    @computadora = Computadora.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @computadora }
    end
  end

  # GET /computadoras/1/edit
  def edit
    @computadora = Computadora.find(params[:id])
  end

  # POST /computadoras
  # POST /computadoras.json
  def create
    @computadora = Computadora.new(params[:computadora])

    respond_to do |format|
      if @computadora.save
        format.html { redirect_to @computadora, notice: 'Computadora was successfully created.' }
        format.json { render json: @computadora, status: :created, location: @computadora }
      else
        format.html { render action: "new" }
        format.json { render json: @computadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /computadoras/1
  # PUT /computadoras/1.json
  def update
    @computadora = Computadora.find(params[:id])

    respond_to do |format|
      if @computadora.update_attributes(params[:computadora])
        format.html { redirect_to @computadora, notice: 'Computadora was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @computadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computadoras/1
  # DELETE /computadoras/1.json
  def destroy
    @computadora = Computadora.find(params[:id])
    @computadora.destroy

    respond_to do |format|
      format.html { redirect_to computadoras_url }
      format.json { head :no_content }
    end
  end
end
