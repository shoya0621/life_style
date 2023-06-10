class CreateScheduleJunres < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_junres do |t|
      t.string :name, null: false, default: ""#スケジュールジャンル名
      t.timestamps
    end
  end
end
