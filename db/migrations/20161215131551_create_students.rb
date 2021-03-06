Hanami::Model.migration do
  change do
    create_table :students do
      primary_key :id

      column :first_name, String, null: false
      column :last_name,  String, null: false
      column :email,      String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
