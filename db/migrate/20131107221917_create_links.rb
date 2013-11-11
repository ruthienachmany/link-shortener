class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :user_id
      t.string :short_link
      t.string :long_link
      t.integer :http_status, :default => 301
      t.timestamps
    end
  end
end
