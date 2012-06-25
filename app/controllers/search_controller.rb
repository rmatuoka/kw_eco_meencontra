class SearchController < ApplicationController
 layout "internal"
  def index
  
  end
  
  def new
    @Cidades = Provider.all(:group => "city")
    @Categorias = Provider.all(:group => "state")
    @Atuacao = Provider.all(:group => "area_of_​​expertise")
    @Disponibilidade = Provider.all(:group => "availability")
    #@Estados = Reseller.all(:conditions => "active =  true", :group => "state", :order => "state ASC")
    
  end
  
  def results
    @Cidades = Provider.all(:group => "city")
    @Categorias = Provider.all(:group => "state")
    @Atuacao = Provider.all(:group => "area_of_​​expertise")
    @Disponibilidade = Provider.all(:group => "availability")
    
    #Parameters: {"search"=>{"atuacao"=>"teste2", "categoria"=>"sp", "disponibilidade"=>"teste2"}, "utf8"=>"✓", "y"=>"26", "x"=>"62", "cidade"=>""}
    
    @Resultados = Provider.all(:conditions => ['area_of_​​expertise = ? AND category = ? AND availability = ?', params[:search][:atuacao],params[:search][:categoria], params[:search][:disponibilidade]])
  end
end
