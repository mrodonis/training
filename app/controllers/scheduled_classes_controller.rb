class ScheduledClassesController < ApplicationController
  # GET /scheduled_classes
  # GET /scheduled_classes.xml
  def index
    @scheduled_classes = ScheduledClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scheduled_classes }
    end
  end

  # GET /scheduled_classes/1
  # GET /scheduled_classes/1.xml
  def show
    @scheduled_class = ScheduledClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scheduled_class }
    end
  end

  # GET /scheduled_classes/new
  # GET /scheduled_classes/new.xml
  def new
    @scheduled_class = ScheduledClass.new
    @scheduled_class.instructor = "TBD"
    @scheduled_class.location = "Live Anywhere"
    @scheduled_class.start_date = Date.today
    @scheduled_class.end_date = Date.today + 7


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scheduled_class }
    end
  end

  # GET /scheduled_classes/1/edit
  def edit
    @scheduled_class = ScheduledClass.find(params[:id])
  end

  # POST /scheduled_classes
  # POST /scheduled_classes.xml
  def create
    @scheduled_class = ScheduledClass.new(params[:scheduled_class])

    respond_to do |format|
      if @scheduled_class.save
        format.html { redirect_to(@scheduled_class, :notice => 'ScheduledClass was successfully created.') }
        format.xml  { render :xml => @scheduled_class, :status => :created, :location => @scheduled_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scheduled_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scheduled_classes/1
  # PUT /scheduled_classes/1.xml
  def update
    @scheduled_class = ScheduledClass.find(params[:id])

    respond_to do |format|
      if @scheduled_class.update_attributes(params[:scheduled_class])
        format.html { redirect_to(@scheduled_class, :notice => 'ScheduledClass was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scheduled_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_classes/1
  # DELETE /scheduled_classes/1.xml
  def destroy
    @scheduled_class = ScheduledClass.find(params[:id])
    @scheduled_class.destroy

    respond_to do |format|
      format.html { redirect_to(scheduled_classes_url) }
      format.xml  { head :ok }
    end
  end
end
