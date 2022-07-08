require 'sinatra' 
 
# Folder structure 
# . 
# -- server.rb 
# -- public 
#    |-- project-name 
#        |-- index.html 
 
get '/' do 
  folderDir = settings.public_folder + '/project-name'  # ng build output folder 
  send_file File.join(folderDir, 'index.html') 
end