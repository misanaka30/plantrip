class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string       :name
      t.text         :url
      t.references   :prefecture,  foreign_key: true
      t.references   :user,        foreign_key: true
      t.timestamps
    end
  end
end
