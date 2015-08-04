class CreateAppGems < ActiveRecord::Migration
  def change
    create_table :app_gems do |t|
      t.string :name, null: false
      t.string :version
      t.index  :name, unique: true

      t.timestamps null: false
    end
  end
end
