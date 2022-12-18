class AddUserReferencesToMarkets < ActiveRecord::Migration[7.0]
  def change
    add_reference :markets, :user, null: false, foreign_key: true
  end
end
