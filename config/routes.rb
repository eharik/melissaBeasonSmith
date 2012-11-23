MelissaBeasonSmith::Application.routes.draw do
  root :to => 'visitor#new'

	resources :visitor

	match '/specialization', :to => 'visitor#specialization'
	match '/navbar',				 :to => 'visitor#navbar'

end
