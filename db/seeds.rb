# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all

Product.create!(title: 'ECM Mechanika V Slim + S-Automatik 64 Bundle',
                description:
                  %(<p> <em> Products inclueded in the Bundle: </em>
                    <br>
                    x1 ECM Mechanika V Slim
                    <br>
                    x1 ECM S-Automatik 64 with timer
                    <br>
                    x1 ECM Tamper flat
                    <br>
                    x1 ECM Leveler
                    <br>
                    x1 ECM portafiler funnel </p>),
                image_url: 'coffee1.jpg',
                price: 1999.00)
# . . . . . . .

Product.create!(title: 'Solis Barista Perfetta Plus Espresso Machine',
                description:
                  %(<p> <em> Robust, Reliable, and Resilient </em>
                    <br>
                    The Barista Perfetta Plus is a compact elegant machine
                     enabling you to customise your perfect cup of coffee.
                     This compact appliance requires only little space, making
                     it perfectly suitable for even the smallest kitchen.
                    <br>
                    A product developed with a passion for coffee to get the
                     best out of every single coffee bean. The perfect tool to
                     create coffee as a real barista does. </p>),
                image_url: 'coffee2.jpg',
                price: 359.00)
# . . . . . . .

Product.create!(title: 'La Pavoni PRH Copper-Brass Espresso Machine',
                description:
                  %(<p> <em> Robust, Reliable, and Resilient </em>
                    <br>
                    La Pavoni Professional PRG (also known as PRG11),one of the
                     most popular and most recognized espresso machine on the market.
                     The Professional PRG-16 is a lever machine well known for its style,
                     classic look and quality. By lifting the lever, one raises a piston
                     inside the group, allowing water under pressure to infuse the coffee
                     in the filter holder. The lever is then lowered causing the piston to
                     force the water through the coffee into the cup. The user can therefore
                     vary the speed at which the water passes through the coffee ensuring it
                     is made exactly to his requirements.
                    <br>
                    16 cup capacity boiler </p>),
                image_url: 'coffee3.jpg',
                price: 806.65)
# . . . . . . .

Product.create!(title: 'La Pavoni en Europiccola Espresso Machine',
                description:
                  %(<p> <em> Robust, Reliable, and Resilient </em>
                    <br>
                    The Stradivari was designed by drawing inspiration from the violin,
                     a work of art thanks to the famous lute-maker, Antonio Stradivari. The
                     base resembles the violin case and the lever, the bow.  Lifting the lever
                     raises the piston inside the group, allowing the water in the boiler to
                     enter the brewing group and mix with the colder water. It reaches the right
                     temperature and pre-infuses the coffee in the filter holder. The lever is then
                     lowered, causing the piston to force the water through the coffee into the cup.
                     The user therefore can vary the speed at which the water passes through the coffee,
                     enabling a level of control not possible on an electric pump machine.
                    <br>
                    16 cup capacity boiler </p>),
                image_url: 'coffee4.jpg',
                price: 1125.00)
# . . . . . . .

Product.create!(title: 'La Pavoni Europiccola EN',
                description:
                  %(<p> <em> Robust, Reliable, and Resilient </em>
                    <br>
                    La Pavoni, making quality espresso machines since 1905, is world-renowned for its exquisite 
                    espresso and cappuccino makers.
                    <br>
                    La Pavoni Europiccola is one of the most popular and most recognized espresso machine on the
                    market. The Europiccola is a lever machine well known for its style, classic look and quality.
                    By lifting the lever, one raises a piston inside the group, allowing water under pressure to
                    infuse the coffee in the filter holder. The lever is then lowered causing the piston to force
                    the water through the coffee into the cup. The user can therefore vary the speed at which the
                    water passes through the coffee ensuring it is made exactly to his requirements. </p>),
                image_url: 'coffee5.jpg',
                price: 975.00)
# . . . . . . .

Product.create!(title: 'Rocket re Doppia Espresso Machine',
                description:
                  %(<p> <em> Robust, Reliable, and Resilient </em>
                    <br>
                    The RE Doppia combines the latest Rocket Espresso  technology with a specification and level
                     of componentry that represents a machine brought to market with an aggressive approach to price
                     versus specification.
                    <br>
                    This does not mean the Doppia is any less of a machine, rather with clever engineering, the Doppia
                     clearly outperforms most machines in this class. </p>),
                image_url: 'coffee6.jpg',
                price: 6600.00)
# . . . . . . .
