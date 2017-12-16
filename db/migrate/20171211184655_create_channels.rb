class CreateChannels < ActiveRecord::Migration[5.1]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :channel_id
      t.boolean :active, default: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
