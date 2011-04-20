class MandatesController < ApplicationController
  # GET /mandates
  # GET /mandates.xml
  def index
    @mandates = Mandate.all
  @interview = []
 #controller code
  

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mandates }
    end
  end

  # GET /mandates/1
  # GET /mandates/1.xml
  def show




    @mandate = Mandate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mandate }
    end
  end

  # GET /mandates/new
  # GET /mandates/new.xml
  def new
    @mandate = Mandate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mandate }
    end
  end

  # GET /mandates/1/edit
  def edit
    @mandate = Mandate.find(params[:id])
  end

  # POST /mandates
  # POST /mandates.xml
  def create
    @mandate = Mandate.new(params[:mandate])

    respond_to do |format|
      if @mandate.save
        format.html { redirect_to(@mandate, :notice => 'Mandate was successfully created.') }
        format.xml  { render :xml => @mandate, :status => :created, :location => @mandate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mandate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mandates/1
  # PUT /mandates/1.xml
  def update
    @mandate = Mandate.find(params[:id])

    respond_to do |format|
      if @mandate.update_attributes(params[:mandate])
        format.html { redirect_to(@mandate, :notice => 'Mandate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mandate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mandates/1
  # DELETE /mandates/1.xml
  def destroy
    @mandate = Mandate.find(params[:id])
    @mandate.destroy

    respond_to do |format|
      format.html { redirect_to(mandates_url) }
      format.xml  { head :ok }
    end
  end
  def select_interview
   @interview= Interview.find(params[:server_value])
   render :partial => 'applicant_select', :locals => { :interviews => @interview.applicants}
   end

  def add_applicants
     render :partial => 'applicants', :locals => {:applicant_object => Applicant.new}
  end

end
