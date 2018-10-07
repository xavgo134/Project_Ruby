require_relative("../db/sql_runner.rb")

class guitar

  attr_accessor :name, :type, :description, :quantity, :buying_cost, :selling_price
  attr_reader :id, :manufacturer_id

  def initialize(options)
    @id = options["id"].to_i
    @pickup = options["pickup"].to_i
    @bridge = options["bridge"].to_i
    @description = options["description"]
    @quantity = options["quantity"].to_i
    @buying_cost = options["buying_cost"]
    @selling_price = options["selling_price"]
    @manufacturer_id = options["manufacturer_id"].to_i
  end

  def save()
    sql = "
    INSERT INTO bridges
    (name, type, description, quantity, buying_cost, selling_price, manufacturer_id)
    VALUES($1, $2, $3, $4, $5, $6, $7)
    RETURNING id
    "
    values = [@name, @type, @description, @quantity, @buying_cost, @selling_price, @manufacturer_id]

    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM bridges"
    result = SqlRunner.run(sql)
    products = result.map{|product| Bridge.new(product)}
    return products

  end


  def self.delete_all
    sql = "DELETE FROM bridges"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM bridges WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.find(id)
    sql = "
    SELECT * FROM bridges WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    return product = Product.new(result[0])
  end

  def update()
    sql = "UPDATE bridges
    SET (name, type, description, quantity, buying_cost, selling_price, manufacturer_id) = ($1, $2, $3, $4, $5, $6, $7)
    WHERE id = $8"

    values = [@name, @type, @description, @quantity, @buying_cost, @selling_price, @manufacturer_id, @id]

    SqlRunner.run(sql, values)
  end



























end
