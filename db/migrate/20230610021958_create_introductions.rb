class CreateIntroductions < ActiveRecord::Migration[6.1]
  def change
    create_table :introductions do |t|
      t.integer :user_id, null: false, default: "" #会員ID
      t.integer :introduction_junre_id, null: false, default: "" #紹介ジャンル
      t.text :content, null: false, default: "" #紹介内容
      t.timestamps
    end
  end
end
