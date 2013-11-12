ActiveAdmin.register Link do
  index do
    column :long_link
    column :short_link
    column :visit_count
  end
end
