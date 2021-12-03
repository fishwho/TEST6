note
    description : "root class of the application"
    date        : "$Date$"
    revision    : "$Revision$"

class
    APPLICATION


inherit
    ARGUMENTS_32

create
    make

feature {NONE} -- Initialization

    make
    	local
    		i: INTEGER
            -- Run application.
        do
            -- Add your code here
            create p.set_name("AAAASD")
            p.set_age(-1)
            create p2.set_name("BBBB")
            p2.set_age(4)
            create p3.set_name("CCCC")
            p3.set_age(5)
            create p4.set_name("BBBB")
            p4.set_age(5)

            from
            	i:= 1
            until
            	i = 0
            loop
            	print ((p.name ~ p2.name).out)
            	print ((p.age = p2.age).out)
            	print ((p.name ~ p3.name).out)
            	print ((p.age = p3.age).out)
            	print ((p.name ~ p4.name).out)
            	print ((p.age = p4.age).out)
            	print ((p2.name ~ p2.name).out)
            	print ((p2.age = p2.age).out)
            	print ((p2.name ~ p3.name).out)
            	print ((p2.age = p3.age).out)
            	print ((p2.name ~ p4.name).out)
            	print ((p2.age = p4.age).out)
            	print ((p3.name ~ p2.name).out)
            	print ((p3.age = p2.age).out)
            	print ((p3.name ~ p3.name).out)
            	print ((p3.age = p3.age).out)
            	print ((p3.name ~ p4.name).out)
            	print ((p3.age = p4.age).out)
            	print ((p4.name ~ p2.name).out)
            	print ((p4.age = p2.age).out)
            	print ((p4.name ~ p3.name).out)
            	print ((p4.age = p3.age).out)
            	print ((p4.name ~ p4.name).out)
            	print ((p4.age = p4.age).out)
            	i := i + 1
            end
        end

feature

    p, p2, p3, p4: PERSON

end
