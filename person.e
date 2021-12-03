note
    description : "summary sescription for {PERSON}."
    date        : "$Date$"
    revision    : "$Revision$"

class
    PERSON

create
    set_name

feature --status

    name: STRING
        --name of Current {PERSON}.

    age: INTEGER
        --age of Current {PERSON}.

feature --setings

    set_name (n: STRING)
        require
            name_exist: not n.is_empty
        do
            name := n
        ensure
            name_set: name = n
        end

    set_age (a: INTEGER)
        require
            age_valid: age > 0
        do
            age := a
        ensure
            age_set: age = a
        end

invariant
    name_exist: not name.is_empty
    age_valid: age >= 0

end
