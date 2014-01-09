class Railgun::AdminsController < Railgun::ResourcesController
  
  option :icon, "user"

  actions :all

  #attributes :created_at, :updated_at, :viewable => false
  
end