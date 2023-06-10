class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false, default: ""#会員ID
      t.integer :receiver_id, null: false, default: ""#いいねされた会員ID
      t.timestamps
    end
  end
end
