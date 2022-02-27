class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string   :image_name,  null: false
      t.string   :material,    null: false
      t.string   :quantity,    null: false
      t.text     :process,     null: false
      t.integer  :ganre_id,    null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
