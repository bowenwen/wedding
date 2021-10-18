# frozen_string_literal: true

ActiveAdmin.register PlusOne do
  permit_params :first_name, :last_name, :meal, :diet, :child

  form do |_f|
    inputs 'Plus One' do
      input :first_name
      input :last_name
      input :meal, as: :text
      input :diet, as: :text
      input :child
    end
    actions
  end
end
