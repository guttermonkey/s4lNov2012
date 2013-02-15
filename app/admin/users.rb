ActiveAdmin.register User do
  index do
    column :name
    column "Facebook ID", :facebook_id
    column "Authorized on", :created_at
    column "Gender", :gender
    default_actions
  end
end
