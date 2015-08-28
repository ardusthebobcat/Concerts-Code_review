class BandTableAddDescription < ActiveRecord::Migration
  def change
    add_column(:bands, :description, :string)
  end
end
