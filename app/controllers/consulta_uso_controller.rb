class ConsultaUsoController < ApplicationController
  def index
    
  
  end
  
  
  def muestra_usos
    
    #selected_day=Date.strptime(params[:fecha],'%m/%d/%Y')
#offset=Time.now.utc_offset
#bod= selected_day.beginning_of_day.utc-offset
#eod= selected_day.end_of_day.utc-offset
 
    if(params[:fecha]=="" )
      
      redirect_to show_available_path, notice: 'Fecha invalida.' 
    else
      
      selected_day=Date.strptime(params[:fecha],'%m/%d/%Y')
      @usos=Uso.all(:include => [:computadora, :usuario],:conditions => {"usos.hora_llegada" => selected_day.beginning_of_day..selected_day.end_of_day})
    end
  end
  
  
  
end
