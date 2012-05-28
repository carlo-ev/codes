class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :title
      t.string :description
      t.string :content

      t.timestamps
    end
  end
end
