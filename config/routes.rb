class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ www admin }
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end

Rails.application.routes.draw do
  constraints SubdomainConstraint do
    resources :leagues
    resources :players
    resources :league_users
    resources :positions
    resources :draft_picks
    resources :nfl_teams
  end
  
  
  devise_for :users
  root 'draft_boards#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
