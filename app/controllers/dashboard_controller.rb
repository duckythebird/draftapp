class DashboardController < ApplicationController
    
    # GET /dashboard
    def index
        @leagues = League.joins(:league_users).where('league_users.user' => current_user)
    end
end