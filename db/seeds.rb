# encoding: utf-8 
# Examples:
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
require File.expand_path('../data_menu.rb', __FILE__)
require File.expand_path('../data_vadm.rb', __FILE__)
require File.expand_path('../data_tpl.rb', __FILE__)
require File.expand_path('../data_xzyz.rb', __FILE__)
require File.expand_path('../data_setting.rb', __FILE__)
include DATA_DEF

createNow=false
createNow=true
data={}
data.merge!(DATA_MENU)
data.merge!(DATA_VADM)
data.merge!(DATA_TPL)
data.merge!(DATA_XZYZ)
data.merge!(DATA_SETTINGS)
data.each  do |resource,val_array|
  model=resource.to_s.classify.constantize
  val_array.each do |row|
    begin
      if createNow
        if model.create!(row) 
          puts "#{resource}(#{row}) created."
        else
          puts "#{resource}(#{row}) failed."  
        end      
      end
    rescue StandardError => e
      puts e.message
    end
  end
end
Widget.first.save_partial() if createNow
