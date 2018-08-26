class League < ApplicationRecord
    has_many :users, :through => :league_users
    has_many :drafts

    after_create :create_tenant

    private
        def create_tenant
            Apartment::Tenant.create(subdomain)
        end
end
