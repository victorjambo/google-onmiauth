class ChartsController < ApplicationController
    def people_birthday
        render json: Person.group_by_month_of_year(:birthday).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
    end
    
    def jumbotron
        render template: 'charts/_jumbotron'
    end
    
    def production
        render json: Production.group_by_hour_of_day(:timestamp).count
    end
end
