class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :category
      t.string :title
      t.string :body
    end
  end
end
