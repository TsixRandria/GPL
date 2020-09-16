class CreateAgences < ActiveRecord::Migration[6.0]
  def change
    create_table :agences do |t|
      t.datetime :heureouv
      t.datetime :heurefer
      t.datetime :heuresup
      t.datetime :ouvsup
      t.datetime :fermex
      t.datetime :jourferr

      t.timestamps
    end
  end
end
