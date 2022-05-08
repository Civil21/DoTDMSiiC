ActiveAdmin.register Project do
  permit_params :name, :description, :start_at, :finish_at, :budject
end
