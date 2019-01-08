class SubdomainConstraint   
  
	def self.matches?(request)     
	    request.subdomain.present? && request.subdomain != 'www'   
	end 

end 

Rails.application.routes.draw do  

  constraints SubdomainConstraint do     
    resources :users   
  end   
  resources :enterprises   
  root 'enterprises#index'   
end