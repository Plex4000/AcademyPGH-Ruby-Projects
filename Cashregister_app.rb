require 'bigdecimal'

puts "Please enter an amount owed"
money_Owed = BigDecimal.new(gets.chomp)
puts "Please enter payment"
payment = BigDecimal.new(gets.chomp)

change = payment - money_Owed

#amount  = BigDecimal.new(change) * ( BigDecimal.new(7)/BigDecimal.new(100))
#puts (amount * 100).to_i
#change_to = "%f" % change
#sprintf("%.2f", change_to)
#amount = BigDecimal.new(change)
#change_rounded = ((amount * 100).round)
#printf('%.02f', change_rounded)

#puts

hundreds = 0
fifties = 0
twenties = 0
tens = 0
fives = 0
ones = 0
quarters = 0
dimes = 0
nickles = 0
pennies = 0

if change%3==0

        rando = 1 + rand(10)

    while change >0.00

            if rando == 10 && change >= 100
                change -= 100
                hundreds += 1
                
            end

            if rando == 9 && change >= 50
                change -=50
                fifties +=1
            end

            if rando == 8 && change >= 20
                change -=20
                twenties +=1
            end

            if rando == 7 && change >= 10
                change -=10
                tens +=1
            end

            if rando == 6 && change >=5
                change -=5
                fives +=1
            end

            if rando == 5 && change>=1
                change -=1
                ones +=1
            end

            if rando == 4 && change >= 0.25 
                change -=0.25
                quarters +=1
            end

            if rando == 3 && change >=0.10
                change -=0.10
                dimes += 1
            end

            if rando == 2 && change >=0.05
                change -=0.05
                nickles +=1
            end

            if rando == 1 && change >=0.01
                change -=0.01
                pennies +=1
            end
            rando = 1 + rand(10)
        end
    

    else
        while change >= 100
            change -= 100
            hundreds += 1
            
        end

        while change >= 50
            change -=50
            fifties +=1
        end

        while change >= 20
            change -=20
            twenties +=1
        end

        while change >= 10
            change -=10
            tens +=1
        end

        while change >=5
            change -=5
            fives +=1
        end

        while change >=1
            change -=1
            ones +=1
        end

        while change >= 0.25 
            change -=0.25
            quarters +=1
        end

        while change >=0.10
            change -=0.10
            dimes += 1
        end

        while change >=0.05
            change -=0.05
            nickles +=1
        end

        while change >=0.01
            change -=0.01
            pennies +=1
        end
    end

        hs = "#{hundreds} hundreds,"
        fs = "#{fifties} fifties,"
        ts = "#{twenties} twenties,"
        tns = "#{tens} tens,"
        fvs =  "#{fives} fives,"
        ons = "#{ones} ones,"
        qs = "#{quarters} quarters,"
        ds = "#{dimes} dimes,"
        ns = "#{nickles} nickles,"
        ps = "#{pennies} Pennies."

        print "Your change is "
        if hundreds > 0
            print hs
        end
        if fifties > 0
            print fs
        end
        if twenties > 0
            print ts
        end
        if tens > 0
            print tns
        end
        if fives >0
            print fvs
        end
        if ones >0
            print ons
        end
        if quarters >0
            print qs
        end
        if dimes >0
            print ds
        end
        if nickles >0
            print ns
        end
        if pennies >0
            print ps
        end
    