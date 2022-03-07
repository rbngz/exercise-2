(define 
    (domain room-domain)
    (:requirements :strips :typing)
    (:types room inhabitant time)
    (:predicates 
        (movesTo ?i - inhabitant ?r - room)
        (timeslotAvailable ?t - time)
        (available ?r - room)
        (arrivalTime ?i - inhabitant ?t - time)
        (locked ?r - room)
        (workerAtRoom ?r - room)
    )
    
    (:action showRoom
     :parameters (?r - room ?i - inhabitant ?t - time)
     :precondition
        (and
            (available ?r)
            (movesTo ?i ?r)
            (timeslotAvailable ?t)
            (arrivalTime ?i ?t)
            (workerAtRoom ?r)
            (not (locked ?r))
        )
     :effect(
	        and 
	            (not (available ?r))
		        (not (timeslotAvailable ?t))
		        (not (workerAtRoom ?r))
		  )
    )
    
    (:action unlock
     :parameters (?r - room ?t - time)
     :precondition
        (and
            (available ?r)
            (locked ?r)
            (timeslotAvailable ?t)
        )
     :effect(
	        and 
	            (not (locked ?r))
		  )
    )
    
    (:action join
     :parameters (?r - room ?t - time)
     :precondition
        (and
            (not(workerAtRoom ?r))
            (available ?r)
            (not (locked ?r))
            (timeslotAvailable ?t)
        )
     :effect(
	        and 
	            (workerAtRoom ?r)
		  )
    ))