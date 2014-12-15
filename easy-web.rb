

def fill_template_with_data(template,fill_in_data)
	return fill_in_data if template.nil? || template.empty?
	# need check permession here
	# Otherwise any methods can be executed here
	data=eval(fill_in_data)
	template = ERB.new(template)
	return template.result(binding)
end

def parse_template_with_children(template, children)
	retun template if children.nil?||children.empty?
  html = Liquid::Template.parse(template).render(children)
  html.html_safe
end

def parse_recursively
	children=self.children
	template=''
	children.each do |child|
		if child.children.nil? || child.children.empty?
			parse
			remove child from children
		else 
			children.inject(child)
		end
	end
end

class Widget < ActiveRecord::Base
  has_many :children,:class_name=>'Widget'
  has_one  :parent,:class_name=>'Widget'
end
