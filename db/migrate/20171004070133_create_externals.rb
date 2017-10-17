class CreateExternals < ActiveRecord::Migration
  def change
    create_table :externals do |t|
      t.string :name
      t.string :passport
      t.date :biarthday
      t.string :organisation
      t.boolean :org_success,  default: true

      t.timestamps null: false
    end
  end
end
