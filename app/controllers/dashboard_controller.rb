class DashboardController < ApplicationController
    
    # GET /dashboard
    def index
        @leagues = League.all
    end
end