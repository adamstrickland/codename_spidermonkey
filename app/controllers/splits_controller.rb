class SplitsController < ApplicationController
  # GET /splits
  # GET /splits.xml
  def index
    @splits = Split.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @splits }
    end
  end

  # GET /splits/1
  # GET /splits/1.xml
  def show
    @split = Split.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @split }
    end
  end

  # GET /splits/new
  # GET /splits/new.xml
  def new
    @split = Split.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @split }
    end
  end

  # GET /splits/1/edit
  def edit
    @split = Split.find(params[:id])
  end

  # POST /splits
  # POST /splits.xml
  def create
    @split = Split.new(params[:split])

    respond_to do |format|
      if @split.save
        format.html { redirect_to(@split, :notice => 'Split was successfully created.') }
        format.xml  { render :xml => @split, :status => :created, :location => @split }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @split.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /splits/1
  # PUT /splits/1.xml
  def update
    @split = Split.find(params[:id])

    respond_to do |format|
      if @split.update_attributes(params[:split])
        format.html { redirect_to(@split, :notice => 'Split was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @split.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /splits/1
  # DELETE /splits/1.xml
  def destroy
    @split = Split.find(params[:id])
    @split.destroy

    respond_to do |format|
      format.html { redirect_to(splits_url) }
      format.xml  { head :ok }
    end
  end
end
