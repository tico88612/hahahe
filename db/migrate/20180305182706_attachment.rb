class Attachment < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :attachment, :string
  end
end
