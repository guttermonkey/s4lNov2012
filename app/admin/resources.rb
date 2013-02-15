ActiveAdmin.register Resource do
  index do
    column "Resource ID", :id
    column "Title", :name
    column "Link address", :link
    column "Synopsis", :synopsis
    default_actions
  end  
end
