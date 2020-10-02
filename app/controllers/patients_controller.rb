class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :destroy, :update]
  def show
   
  end
  

  def index
      @patients=Patient.all
      
  end

  def search  
    @parameter = params[:search].downcase
    if params[:search].blank?  
      redirect_to(root_path, alert: "Bitte geben Sie einen Namen ein!") and return 
      
    elsif Patient.all.where("lower(last_name) LIKE :search", search: @parameter).empty?
      redirect_to(patients_path(), alert: "Patient nicht gefunden!") and return
    else 
      @patient = Patient.all.where("lower(last_name) LIKE :search", search: @parameter) 
      
    end  
  end
  
  def new
      @patient = Patient.new
  end

  def edit
   
  end
  

  def create
      @patient = Patient.new(params.require(:patient).permit(:first_name, :last_name, :station, :room_nr, :dining_room, :table_number))
      if @patient.save
        flash[:notice] = "Patient wurde angelegt"
        redirect_to @patient
      else
        render "new"
      end
  end

  def update 
    if @patient.update(params.require(:patient).permit(:first_name, :last_name, :station, :room_nr, :dining_room, :table_number))
      flash[:notice] = "Erfolgreich bearbeitet"
      redirect_to @patient
    else 
      render "edit" 
    end
  end

  def destroy
    if @patient.destroy
      redirect_to patients_path
      flash[:notice] = @patient.first_name + " " + @patient.last_name + " wurde gelöscht!"
    end
  end

  private
    
  def set_patient
    @patient = Patient.find(params[:id])
  end
end