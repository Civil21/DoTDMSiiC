ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :position, :birthday_at

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :position
    column :birthday_at
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :position, as: :select, collection: User.positions.keys
      f.input :birthday_at
      f.input :password if f.object.new_record?
      f.input :password_confirmation if f.object.new_record?
    end
    f.actions
  end
end
