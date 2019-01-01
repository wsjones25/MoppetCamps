module ApplicationHelper
	def login_helper
		if parent_signed_in?
			link_to "Logout", destroy_parent_session_path, method: :delete
		elsif user_signed_in?
			link_to "Logout", destroy_user_session_path, method: :delete
		else
			(link_to "Sign up", sign_up_path) + 
	      	"<br>".html_safe + 
	      	(link_to "Login", login_path)
	    end
	end
end
