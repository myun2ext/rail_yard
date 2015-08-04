class CreateAppGems < ActiveRecord::Migration
  def change
    create_table :app_gems do |t|
      t.string :name
      t.string :version

      t.timestamps null: false
    end
  end
end
