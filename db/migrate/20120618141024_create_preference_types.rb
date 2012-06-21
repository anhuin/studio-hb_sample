class CreatePreferenceTypes < ActiveRecord::Migration
  def change
    create_table :preference_types do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
