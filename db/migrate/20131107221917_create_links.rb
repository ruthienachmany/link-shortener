class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :short_link
      t.string :long_link
      t.integer :visit_count, :default => 0
      t.integer :http_status, :default => 301
      t.timestamps
    end
  end
end
