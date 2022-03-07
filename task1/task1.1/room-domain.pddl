(define 
    (domain room-domain)
    (:requirements :strips :typing)
    (:types room inhabitant time)
    (:predicates 
        (movesTo ?i - inhabitant ?r - room)
        (timeslotAvailable ?t - time)
        (available ?r - room)
        (arrivalTime ?i - inhabitant ?t - time)
    )
    
    (:action showRoom
     :parameters (?r - room ?i - inhabitant ?t - time)
     :precondition
        (and
            (available ?r)
            (movesTo ?i ?r)
            (timeslotAvailable ?t)
            (arrivalTime ?i ?t)
        )
     :effect(
	        and 
	            (not (available ?r))
		        (not (timeslotAvailable ?t))
		  )
    )
)