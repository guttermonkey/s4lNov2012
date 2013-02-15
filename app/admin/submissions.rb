ActiveAdmin.register Submission do
  index do
    column "User ID", :user_id
    column "Submission", :content
    column "Date Created", :created_at
    default_actions
  end
end
