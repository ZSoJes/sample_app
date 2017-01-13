class CreateMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :movements do |t|
      t.belongs_to :user, index: true
      t.belongs_to :account, index: true
      t.string :concepto_de_pago
      t.string :reference, default: "Sin Referencia"
      t.date :date
      t.string :detail
      t.belongs_to :category , index:true
      t.integer :withdrawal
      t.integer :deposit
      # se debe calcular en la vista el balance 
    end
  end
end
