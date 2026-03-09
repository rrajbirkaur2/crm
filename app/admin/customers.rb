ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, :image

  # Only add filters you actually want
  filter :full_name
  filter :phone_number
  filter :email
  filter :notes
  # DO NOT add filter :image

  form do |f|
    f.inputs "Customer Details" do
      f.input :full_name
      f.input :phone_number
      f.input :email
      f.input :notes
      f.input :image, as: :file   # upload works fine
    end
    f.actions
  end
end
