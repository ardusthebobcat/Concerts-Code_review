class CreateBandsTable < ActiveRecord::Migration
  def change
    create_table(:bands) do |t|
      t.column(:name, :string)
      t.column(:album, :string)

      t.timestamps()
    end
  end
end
