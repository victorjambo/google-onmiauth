namespace :db do
	desc "populates production"
	task populate: :environment do
	  # populate production table
	  production = HTTParty.get 'https://sheetsu.com/apis/v1.0bu/a09697e3fcf4'
	  production.map{ |p| Production.new(p).save }
	  
	  #populate quality table
	  quality = HTTParty.get 'https://sheetsu.com/apis/v1.0su/236e77f582a2'
	  quality.map{ |q| Quality.new(q).save}
	end
	task daily: :environment do
	  # Daily.destroy_all
	  # save production count to daily table
	  prodCount = Production.group(:name).count
	  prodCount.each do |name, tasks|
  	  Daily.create(
  	    name: name,
  	    task: tasks,
  	    day: Date.today
  	   )
	  end
	  
	  # Add QA score to daily table
	  qaScore = Quality.group(:name).sum(:score)
	  Daily.all.each do |daily|
	    qaScore.each do |name, score|
	      daily.update_attributes(qa: score) if name == daily.name
	    end
	  end
	end
end