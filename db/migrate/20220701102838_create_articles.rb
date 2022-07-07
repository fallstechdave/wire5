class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, limit: 4000
      t.string :summary, limit: 4000
      t.string :doc_num, limit: 100
      t.string :image_caption, limit: 1000
      t.boolean :has_attachments
      t.boolean :worldwide
      t.date :date_published
      t.string :producing_office
      t.string :country
      t.string :topic
      t.string :non_state_actor
      t.text :body

      t.timestamps
    end
  end
end
