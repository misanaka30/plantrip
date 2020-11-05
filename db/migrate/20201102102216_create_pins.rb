class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.integer      :title_id  , null: false
      t.references   :prefecture,  foreign_key: true
      t.references   :user,        foreign_key: true
      t.timestamps
    end
  end
end
