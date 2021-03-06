require_relative("../models/manufacturer.rb")
require_relative("../models/product.rb")
require_relative("../models/types.rb")
require_relative("../models/mail.rb")



Manufacturer.delete_all()
Product.delete_all()
Type.delete_all()

manufacturer1 = Manufacturer.new({
  "name" => "Seymour Duncan",
  "address" => "11 Cheltenham Road, Chorlton, Manchester",
  "phone" => "0794 1708 528",
  "email" => "jaime@creamery-pickups.co.uk"
  })

manufacturer2 = Manufacturer.new({
  "name" => "Harley Benton",
  "address" => "11 Cheltenham Road, Chorlton, Manchester",
  "phone" => "0794 1708 528",
  "email" => "jaime@creamery-pickups.co.uk"
  })

manufacturer3 = Manufacturer.new({
  "name" => "D'Addario",
  "address" => "11 Cheltenham Road, Chorlton, Manchester",
  "phone" => "0794 1708 528",
  "email" => "jaime@creamery-pickups.co.uk"
  })

manufacturer1.save()
manufacturer2.save()
manufacturer3.save()




pickup = Type.new({"name" => "pickup"})

bridge = Type.new({"name" => "bridge"})

string = Type.new({"name" => "string"})



pickup.save()
bridge.save()
string.save()


# manufacturer2.delete()
# manufacturer1.delete()


# p Manufacturer.all()

# p Manufacturer.find(29)



# manufacturer3.name = "Seymour Duncan"
# manufacturer3.update()


product0 = Product.new({
  "name" => "STEVE HARRIS P-BASS",
  "type" => pickup.id,
  "description" => "high output, Anilco V magnet, 4 strings",
  "quantity" => "10",
  "buying_cost" => "30",
  "selling_price" => "60",
  "manufacturer_id" => manufacturer2.id
    })

  product1 = Product.new({
    "name" => "Bass bridge 4 strings",
    "type" => bridge.id,
    "description" => "Nickel wound, Round wound, Gauges: 50 - 67 - 90 - 120, long scale",
    "quantity" => "50",
    "buying_cost" => "10",
    "selling_price" => "20",
    "manufacturer_id" => manufacturer2.id
      })
  product2 = Product.new({
    "name" => "Bass bridge 4 strings",
    "type" => string.id,
    "description" => "String spacing 19 mm, Size 80 x 43 mm, Chrome",
    "quantity" => "1",
    "buying_cost" => "10",
    "selling_price" => "20",
    "manufacturer_id" => manufacturer2.id
      })

  product3 = Product.new({
    "name" => "STEVE HARRIS P-BASS",
    "type" => pickup.id,
    "description" => "high output, Anilco V magnet, 4 strings",
    "quantity" => "1",
    "buying_cost" => "30",
    "selling_price" => "60",
    "manufacturer_id" => manufacturer3.id
      })


      product0.save()
      product1.save()
      product2.save()
      product3.save()





      # email1 = Email.new({"product_id" => product3.id})
      # email1.save()
      #
      # email2 = Email.new({"product_id" => product2.id})
      # email1.save()
      #
      # Product.low_stock(product2)

      Manufacturer.by_name('Seymour')

      # product0.delete()

      # product3.name = "blabla awesome"
      # product3.update()


      # p Product.all()



      # seymour = Product.by_manufacturer(24)
      # p seymour

      # p Product.by_manufacturer(36).by_type(34)


      # input = 'Seymour'
      # result = Manufacturer.by_name(input)
      #
      # p result

      # if manufacturer1.name.include?("Sey")
      #   p manufacturer1.name
      #
      # end



      # Product.low_stock(product3)
