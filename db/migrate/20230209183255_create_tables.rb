class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.string :cliente
      t.text :descripcion
      t.float :precio
      t.integer :cantidad
      t.string :direccion_vendedor
      t.string :vendedor

      t.timestamps
    end
  end
end
