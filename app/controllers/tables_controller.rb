class TablesController < ApplicationController
    def index

    end
    def save
        file = params[:table]
        fileInfo = Roo::Spreadsheet.open(file.path)
        header = fileInfo.row(1)
        (2..fileInfo.last_row).each do |i|
        row = Hash[[header, fileInfo.row(i)].transpose]
        Table.create!(cliente: row["Cliente"], descripcion: row["Descripción del Producto"], precio: row["Precio por pieza"], cantidad: row["Numero de piezas"], direccion_vendedor: row["Diección del vendedor"], vendedor: row["Nombre del Vendedor"])
        end
        redirect_to action: "show"
    end
    def show
        @total = 0
        @data = Table.all
        @data.each do |sale|
            @total+= sale.precio*sale.cantidad
        end
    end
end