class Production < ActiveRecord::Base
    def fetch
        Production.new(name: 'string', timestamp: '2/2/2018 15:47:34', taskid: 'string', crawl_Type: 'string', existing: 'string', sub_project: 'string', url: 'string').save
    end
end
