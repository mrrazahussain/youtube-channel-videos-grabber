class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.integer :videos_limit

      t.timestamps
    end
    Setting.create(videos_limit: 5)
  end
end
