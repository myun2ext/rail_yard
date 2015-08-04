class CreateAppModelColumns < ActiveRecord::Migration
  def change
    create_table :app_model_columns do |t|
      t.references :app_model, index: true, foreign_key: true
      t.string :name, null: false
      t.string :type, null: false
      t.boolean :allow_nil, null: false, default: false
      t.boolean :unique,    null: false, default: false
      t.boolean :index,     null: false, default: false

      t.timestamps null: false
    end
  end
end
