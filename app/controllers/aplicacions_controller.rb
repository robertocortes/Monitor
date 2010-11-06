class AplicacionsController < ApplicationController
  # GET /aplicacions
  # GET /aplicacions.xml
  def index
    @aplicacions = Aplicacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aplicacions }
    end
  end

  # GET /aplicacions/1
  # GET /aplicacions/1.xml
  def show
    @aplicacion = Aplicacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aplicacion }
    end
  end

  # GET /aplicacions/new
  # GET /aplicacions/new.xml
  def new
    @aplicacion = Aplicacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aplicacion }
    end
  end

  # GET /aplicacions/1/edit
  def edit
    @aplicacion = Aplicacion.find(params[:id])
  end

  # POST /aplicacions
  # POST /aplicacions.xml
  def create
    @aplicacion = Aplicacion.new(params[:aplicacion])

    respond_to do |format|
      if @aplicacion.save
        format.html { redirect_to(@aplicacion, :notice => 'Aplicacion was successfully created.') }
        format.xml  { render :xml => @aplicacion, :status => :created, :location => @aplicacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aplicacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aplicacions/1
  # PUT /aplicacions/1.xml
  def update
    @aplicacion = Aplicacion.find(params[:id])

    respond_to do |format|
      if @aplicacion.update_attributes(params[:aplicacion])
        format.html { redirect_to(@aplicacion, :notice => 'Aplicacion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aplicacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aplicacions/1
  # DELETE /aplicacions/1.xml
  def destroy
    @aplicacion = Aplicacion.find(params[:id])
    @aplicacion.destroy

    respond_to do |format|
      format.html { redirect_to(aplicacions_url) }
      format.xml  { head :ok }
    end
  end
end
