class ChangeSugarLevelTypeOnReadings < ActiveRecord::Migration
  def change
  		change_column :readings, :sugar_level, :float 
  end
end
