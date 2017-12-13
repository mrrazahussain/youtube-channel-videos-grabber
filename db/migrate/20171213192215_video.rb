class Video < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :video_id
      t.string :title
      t.text :description
      t.datetime :published_at
      t.string :thumbnail_url
      t.time :duration
      t.references :channel, foreign_key: true
      t.timestamps
    end
  end
end
