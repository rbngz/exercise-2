(define 
    (problem room-problem)
    (:domain room-domain)
    (:objects 
        room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 
        room11 room12 room13 room14 room15 room16 room17 room18 room19 room20 
        room21 room22 room23 room24 room25 room26 room27 room28 room29 room30
        - room 
        
        inhabitant1 inhabitant2 inhabitant3 inhabitant4 inhabitant5 
        inhabitant6 inhabitant7 inhabitant8 inhabitant9 inhabitant10 
        inhabitant11 inhabitant12 inhabitant13 inhabitant14 inhabitant15 
        inhabitant16 inhabitant17 inhabitant18 inhabitant19 inhabitant20 
        inhabitant21 inhabitant22 inhabitant23 inhabitant24 inhabitant25 
        inhabitant26 inhabitant27 inhabitant28 inhabitant29 inhabitant30
        - inhabitant
        
        timeslot1 timeslot2 timeslot3 timeslot4 timeslot5 
        timeslot6 timeslot7 timeslot8 timeslot9 timeslot10 
        timeslot11 timeslot12 timeslot13 timeslot14 timeslot15 
        timeslot16 timeslot17 timeslot18 timeslot19 timeslot20 
        timeslot21 timeslot22 timeslot23 timeslot24 timeslot25 
        timeslot26 timeslot27 timeslot28 timeslot29 timeslot30
        - time
    )
    (:INIT 
        ; All timeslots are initially available
        (timeslotAvailable timeslot1)(timeslotAvailable timeslot2)
        (timeslotAvailable timeslot3)(timeslotAvailable timeslot4)
        (timeslotAvailable timeslot5)(timeslotAvailable timeslot6)
        (timeslotAvailable timeslot7)(timeslotAvailable timeslot8)
        (timeslotAvailable timeslot9)(timeslotAvailable timeslot10)
        (timeslotAvailable timeslot11)(timeslotAvailable timeslot12)
        (timeslotAvailable timeslot13)(timeslotAvailable timeslot14)
        (timeslotAvailable timeslot15)(timeslotAvailable timeslot16)
        (timeslotAvailable timeslot17)(timeslotAvailable timeslot18)
        (timeslotAvailable timeslot19)(timeslotAvailable timeslot20)
        (timeslotAvailable timeslot21)(timeslotAvailable timeslot22)
        (timeslotAvailable timeslot23)(timeslotAvailable timeslot24)
        (timeslotAvailable timeslot25)(timeslotAvailable timeslot26)
        (timeslotAvailable timeslot27)(timeslotAvailable timeslot28)
        (timeslotAvailable timeslot29)(timeslotAvailable timeslot30)
        
        ; All rooms are initially available
        (available room1)(available room2)(available room3)(available room4)
        (available room5)(available room6)(available room7)(available room8)
        (available room9)(available room10)(available room11)(available room12)
        (available room13)(available room14)(available room15)(available room16)
        (available room17)(available room18)(available room19)(available room20)
        (available room21)(available room22)(available room23)(available room24)
        (available room25)(available room26)(available room27)(available room28)
        (available room29)(available room30)


        
        ; Each inhabitant moves to his/her designated room
        (movesTo inhabitant1 room1)(movesTo inhabitant2 room2)
        (movesTo inhabitant3 room3)(movesTo inhabitant4 room4)
        (movesTo inhabitant5 room5)(movesTo inhabitant6 room6)
        (movesTo inhabitant7 room7)(movesTo inhabitant8 room8)
        (movesTo inhabitant9 room9)(movesTo inhabitant10 room10)
        (movesTo inhabitant11 room11)(movesTo inhabitant12 room12)
        (movesTo inhabitant13 room13)(movesTo inhabitant14 room14)
        (movesTo inhabitant15 room15)(movesTo inhabitant16 room16)
        (movesTo inhabitant17 room17)(movesTo inhabitant18 room18)
        (movesTo inhabitant19 room19)(movesTo inhabitant20 room20)
        (movesTo inhabitant21 room21)(movesTo inhabitant22 room22)
        (movesTo inhabitant23 room23)(movesTo inhabitant24 room24)
        (movesTo inhabitant25 room25)(movesTo inhabitant26 room26)
        (movesTo inhabitant27 room27)(movesTo inhabitant28 room28)
        (movesTo inhabitant29 room29)(movesTo inhabitant30 room30)

        ; Each inhabitant arrives at one or more arbitrary timeslot(s)
        (arrivalTime inhabitant1 timeslot1)(arrivalTime inhabitant1 timeslot2)
        (arrivalTime inhabitant2 timeslot2)
        (arrivalTime inhabitant3 timeslot3)(arrivalTime inhabitant3 timeslot4)
        (arrivalTime inhabitant4 timeslot4)
        (arrivalTime inhabitant5 timeslot5)(arrivalTime inhabitant5 timeslot6)
        (arrivalTime inhabitant6 timeslot6)
        (arrivalTime inhabitant7 timeslot7)(arrivalTime inhabitant7 timeslot8)
        (arrivalTime inhabitant8 timeslot8)
        (arrivalTime inhabitant9 timeslot9)(arrivalTime inhabitant9 timeslot10)
        (arrivalTime inhabitant10 timeslot10)
        (arrivalTime inhabitant11 timeslot11)(arrivalTime inhabitant11 timeslot12)
        (arrivalTime inhabitant12 timeslot12)
        (arrivalTime inhabitant13 timeslot13)(arrivalTime inhabitant13 timeslot14)
        (arrivalTime inhabitant14 timeslot14)
        (arrivalTime inhabitant15 timeslot15)(arrivalTime inhabitant15 timeslot16)
        (arrivalTime inhabitant16 timeslot16)
        (arrivalTime inhabitant17 timeslot17)(arrivalTime inhabitant17 timeslot18)
        (arrivalTime inhabitant18 timeslot18)
        (arrivalTime inhabitant19 timeslot19)(arrivalTime inhabitant19 timeslot20)
        (arrivalTime inhabitant20 timeslot20)
        (arrivalTime inhabitant21 timeslot21)(arrivalTime inhabitant21 timeslot22)
        (arrivalTime inhabitant22 timeslot22)
        (arrivalTime inhabitant23 timeslot23)(arrivalTime inhabitant23 timeslot24)
        (arrivalTime inhabitant24 timeslot24)
        (arrivalTime inhabitant25 timeslot25)(arrivalTime inhabitant25 timeslot26)
        (arrivalTime inhabitant26 timeslot26)
        (arrivalTime inhabitant27 timeslot27)(arrivalTime inhabitant27 timeslot28)
        (arrivalTime inhabitant28 timeslot28)
        (arrivalTime inhabitant29 timeslot29)(arrivalTime inhabitant29 timeslot30)
        (arrivalTime inhabitant30 timeslot30)
    )
    (:goal 
        (and 
        (not(available room1))(not(available room2))(not(available room3))
        (not(available room4))(not(available room5))(not(available room6))
        (not(available room7))(not(available room8))(not(available room9))
        (not(available room10))(not(available room11))(not(available room12))
        (not(available room13))(not(available room14))(not(available room15))
        (not(available room16))(not(available room17))(not(available room18))
        (not(available room19))(not(available room20))(not(available room21))
        (not(available room22))(not(available room23))(not(available room24))
        (not(available room25))(not(available room26))(not(available room27))
        (not(available room28))(not(available room29))(not(available room30))
        )
    )
)