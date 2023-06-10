class CreateIntroductionJunres < ActiveRecord::Migration[6.1]
  def change
    create_table :introduction_junres do |t|
      t.string :name, null: false, default: ""#ジャンル名
      t.timestamps
    end
  end
end
