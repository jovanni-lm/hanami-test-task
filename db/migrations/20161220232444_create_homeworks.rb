Hanami::Model.migration do
  change do
    create_table :homeworks do
      primary_key :id
      foreign_key :student_id, :students, on_delete: :cascade, null: false

      column :title,       String, null: false
      column :description, String, null: false
      column :url,         String, null: false
    end
  end
end
