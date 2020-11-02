class CreatePrefectureUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :prefecture_users do |t|
      t.references :prefecture, foreign_key: true
      t.references :user,       foreign_key: true
      t.timestamps
    end
  end
end
