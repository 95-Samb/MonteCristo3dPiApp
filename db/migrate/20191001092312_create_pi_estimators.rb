class CreatePiEstimators < ActiveRecord::Migration[5.2]
  def change
    create_table :pi_estimators do |t|

      t.timestamps
    end
  end
end
