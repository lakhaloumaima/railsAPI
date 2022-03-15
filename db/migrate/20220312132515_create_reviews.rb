class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      
      t.string :commentClient 
      t.string :commentFreelancer
      t.integer :id_mission 

      t.belongs_to :mission , foreign_key: true

      t.timestamps
    end
  end
end
