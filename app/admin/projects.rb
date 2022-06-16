ActiveAdmin.register Project do
  permit_params :name, :description, :start_at, :finish_at, :budget, :currency

  form do |f|
    f.inputs 'Article' do
      f.input :name
      f.input :description, as: :quill_editor, input_html: { data: { options: { modules: { toolbar: [['bold', 'italic', 'underline'], ['link']] }, placeholder: 'Type something...', theme: 'snow' } } }
      f.input :start_at, as: :datepicker
      f.input :finish_at, as: :datepicker
      f.input :budget, as: :number
      f.input :currency, include_blank: false
    end
    f.actions
  end
end
