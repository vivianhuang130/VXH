class RemoveUrlFromPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :url, :string
  end
end
