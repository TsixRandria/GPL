class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :ref
      t.string :type
	  t.belongs_to :assurance,index:true
      t.timestamps
    end
  end
end
