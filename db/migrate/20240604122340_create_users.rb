class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :nickname
      t.string :image

      t.timestamps
    end
  end
end
