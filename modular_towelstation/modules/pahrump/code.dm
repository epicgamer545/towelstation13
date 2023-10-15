/obj/machinery/computer/shuttle/elevator/enclaveelevator
	name = "US Government elevator controls"
	desc = "Controls the elevator. Has lots of stars and stripes."
	circuit = /obj/item/circuitboard/computer/enlave_control
	shuttleId = "enclave_elevator"
	possible_destinations = "Enclave_Bunker;Enclave_Surface"

/obj/item/circuitboard/computer/enclave_control
	name = "Enclave Elevator Console"
	greyscale_colors = CIRCUIT_COLOR_GENERIC
	build_path = /obj/machinery/computer/shuttle/elevator/enclaveelevator

/obj/machinery/computer/shuttle/caravan/blackmarket_chevvy
	name = "Chevvy Shuttle Console"
	desc = "Used to control the affectionately named 'Chevvy'."
	circuit = /obj/item/circuitboard/computer/blackmarket_chevvy
	shuttleId = "blackmarket_chevvy"
	possible_destinations = "blackmarket_chevvy_custom;blackmarket_chevvy_home;whiteship_home"

/obj/machinery/computer/shuttle/caravan/blackmarket_chevvy
	name = "Chevvy Shuttle Console"
	desc = "Used to control the affectionately named 'Chevvy'."
	circuit = /obj/item/circuitboard/computer/blackmarket_chevvy
	shuttleId = "blackmarket_chevvy"
	possible_destinations = "blackmarket_chevvy_custom;blackmarket_chevvy_home;whiteship_home"
