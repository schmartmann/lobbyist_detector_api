class CreateLobbyists < ActiveRecord::Migration[5.0]
  def change
    create_table :lobbyists do |t|
      t.string :uniqID
      t.string :lobbyist_raw
      t.string :lobbyist_stdrd
      t.string :lobbyist_id
      t.integer :year
      t.string :official_position
      t.integer :cid
      t.boolean :frmr_congress_mem
      t.timestamps
    end
  end
end
