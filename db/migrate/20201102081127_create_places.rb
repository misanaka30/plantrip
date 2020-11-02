class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string     :name
      t.text       :url
      t.references :user,        foreign_key: true
      t.references :prefecture,  foreign_key: true
      t.timestamps
    end
  end
end
