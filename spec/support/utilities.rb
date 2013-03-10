def full_title(page_title)
  base_title = "East Coast Music Festivals 2013"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def sign_in(user)
	visit signin_path
	fill_in "Email", 	with: user.email 
	fill_in "Name", 	with: user.name
	click_button "Sign in"
	# Sign in when not using Capybara as well.
  	cookies[:remember_token] = user.remember_token
end