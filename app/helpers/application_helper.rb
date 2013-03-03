module ApplicationHelper

	#Returns the full title per page
	def full_title(page_title)
		base_title = "East Coast Music Festivals 2013"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
