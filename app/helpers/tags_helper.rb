module TagsHelper

	def display_tags(taggable_object)
		if taggable_object.tags.any? 
			content_tag :p do 
		 	taggable_object.tags.each do |tag|
		 	concat	content_tag(:span, tag.name, class: "label label-danger")
   			end	
   		end
   	end  
	end

	def display_tools(project)
    if project.tools.any?
      content_tag :span do
        project.tools.each do |tool|
          concat content_tag(:span, tool.name, class: "label label-info")
        end
      end
    end
  end


end