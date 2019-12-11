class AddCoordsToPiEstimators < ActiveRecord::Migration[5.2]
  def change
    add_column :pi_estimators, :coords, :text
  end
end
