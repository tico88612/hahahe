class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :classify
      t.string :title
      t.text :context
      t.boolean :ontop
      t.boolean :display
      t.timestamps
    end
  end
end
