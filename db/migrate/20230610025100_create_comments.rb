class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false, default: ""#会員ID
      t.integer :sender_id, null: false, default: ""#コメント先会員ID
      t.integer :reply_id, null: false, default: ""#返信先コメントID
      t.text :content, null: false, defautl: ""#コメント
      t.timestamps
    end
  end
end
