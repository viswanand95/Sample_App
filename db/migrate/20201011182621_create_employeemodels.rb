class CreateEmployeemodels < ActiveRecord::Migration[5.1]
  def change
    create_table :employeemodels do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
