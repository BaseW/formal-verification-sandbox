module addressBook

sig Name, Addr {}

sig Person {
    name: Name,
    address: Addr
}

sig Book {
    people: set Person
}

// Each person has exactly one name and one address
fact {
    all p: Person | one p.name and one p.address
}

// Within a book, each name maps to at most one address (functional)
fact {
    all b: Book, p1, p2: b.people | p1.name = p2.name implies p1.address = p2.address
}

// Within a book, each address is associated with at most one name (injective)
fact {
    all b: Book, p1, p2: b.people | p1.address = p2.address implies p1.name = p2.name
}

pred show {}

// Example run command to check for a book with 2 people
run show for 2 Book, 2 Person, 2 Name, 2 Addr