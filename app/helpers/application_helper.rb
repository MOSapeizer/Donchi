module ApplicationHelper
	def resource_name
		:user
	end
	
	def resource
		@resource ||= User.new
	end
	
	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end

	def need_header? name
		except = ["sessions", "registrations"]
		except.include? name
	end

end