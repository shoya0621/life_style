class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :user_id, null: false, default: ""#会員ID
      t.integer :schedule_junre_id, null: false, default: ""#いいねされた会員ID
      t.text :detail, null: false, default: ""#スケジュール詳細
      t.time :schedule_time, null: false, default: ""#時間
      t.date :schedule_date, null: false, default: ""#日付
      t.timestamps
    end
  end
end
