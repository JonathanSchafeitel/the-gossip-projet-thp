class CreateGossips < ActiveRecord::Migration[7.0]
  def change
    create_table :gossips do |t|
      t.string :gossip_author
      t.text :gossip_content

      t.timestamps
    end
  end
end
