# encoding: utf-8
class MyApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  #reload
  configure :development do
    register Sinatra::Reloader
  end

  #首页
  get "/" do
    @info = "hello"
    erb :index
  end
end



#数据库
set :database, {adapter: "sqlite3", database: "my_app.sqlite3"}
# or set :database_file, "path/to/database.yml"
 
#Model
#新闻
class News < ActiveRecord::Base
end
