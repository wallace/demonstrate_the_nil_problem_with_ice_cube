class CreateSampleModels < ActiveRecord::Migration
  def change
    create_table :sample_models do |t|
      t.text :schedule

      t.timestamps
    end
  end
end
