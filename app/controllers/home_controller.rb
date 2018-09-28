class HomeController < ApplicationController
  def index
    @people = Person.all
    
    respond_to do |format|
      format.html
    end
    
    @productions = Production.all
  end
end
