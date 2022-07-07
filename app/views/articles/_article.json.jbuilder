json.extract! article, :id, :title, :summary, :doc_num, :image_caption, :has_attachments, :worldwide, :date_published, :producing_office, :country, :topic, :non_state_actor, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
