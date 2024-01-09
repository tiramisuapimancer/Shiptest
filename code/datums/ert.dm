/datum/ert
	var/mobtype = /mob/living/carbon/human
	var/team = /datum/team/ert
	var/opendoors = FALSE
	var/leader_role = /datum/antagonist/ert/commander
	var/enforce_human = FALSE
	var/roles = list(/datum/antagonist/ert/security, /datum/antagonist/ert/medic, /datum/antagonist/ert/engineer) //List of possible roles to be assigned to ERT members.
	var/rename_team
	var/code
	var/mission = "Assist your employers in achieving their goals. Protect corporate assets."
	var/teamsize = 5
	var/polldesc
	/// If TRUE, gives the team members "[role] [random last name]" style names
	var/random_names = FALSE
	/// If TRUE, the admin who created the response team will be spawned in the briefing room in their preferred briefing outfit (assuming they're a ghost)
	var/spawn_admin = FALSE
	/// If TRUE, we try and pick one of the most experienced players who volunteered to fill the leader slot
	var/leader_experience = TRUE
	/// A custom map template to spawn the ERT at. If use_custom_shuttle is FALSE, the ERT will spawn on foot. By default, a Kunai-Class.
	var/datum/map_template/ert_template = /datum/map_template/shuttle/subshuttles/kunai
	/// If we should actually _use_ the ert_template custom shuttle
	var/use_custom_shuttle = TRUE
	/// If TRUE, the ERT will spawn at the outpost. If use_custom_shuttle is also TRUE, the shuttle will be docked at the outpost
	var/spawn_at_outpost = TRUE

// Nanotrasen

/datum/ert/New()
	if (!polldesc)
		polldesc = "a Code [code] Nanotrasen Emergency Response Team"

/datum/ert/blue
	opendoors = FALSE
	code = "Blue"

/datum/ert/amber
	code = "Amber"

/datum/ert/red
	leader_role = /datum/antagonist/ert/commander/red
	roles = list(/datum/antagonist/ert/security/red, /datum/antagonist/ert/medic/red, /datum/antagonist/ert/engineer/red)
	code = "Red"

/datum/ert/deathsquad
	roles = list(/datum/antagonist/ert/deathsquad)
	leader_role = /datum/antagonist/ert/deathsquad/leader
	rename_team = "Deathsquad"
	code = "Delta"
	mission = "Leave no witnesses."
	polldesc = "an elite Nanotrasen Strike Team"

/datum/ert/marine
	leader_role = /datum/antagonist/ert/marine
	roles = list(/datum/antagonist/ert/marine/security, /datum/antagonist/ert/marine/engineer, /datum/antagonist/ert/marine/medic)
	rename_team = "Marine Squad"
	polldesc = "an 'elite' Nanotrasen Strike Team"
	opendoors = FALSE

/datum/ert/centcom_official
	code = "Green"
	teamsize = 1
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/official
	roles = list(/datum/antagonist/ert/official)
	rename_team = "CentCom Officials"
	polldesc = "a CentCom Official"
	random_names = FALSE
	leader_experience = FALSE
	spawn_at_outpost = FALSE

/datum/ert/centcom_official/New()
	mission = "Conduct a routine review of [station_name()]'s vessels."

/datum/ert/janitor
	roles = list(/datum/antagonist/ert/janitor, /datum/antagonist/ert/janitor/heavy)
	leader_role = /datum/antagonist/ert/janitor/heavy
	teamsize = 4
	opendoors = FALSE
	rename_team = "Janitor"
	mission = "Clean up EVERYTHING."
	polldesc = "a Nanotrasen Janitorial Response Team"

/datum/ert/intern
	roles = list(/datum/antagonist/ert/intern)
	leader_role = /datum/antagonist/ert/intern/leader
	teamsize = 7
	opendoors = FALSE
	spawn_at_outpost = FALSE
	rename_team = "Horde of Interns"
	mission = "Assist in conflict resolution."
	polldesc = "an unpaid internship opportunity with Nanotrasen"

/datum/ert/intern/unarmed
	roles = list(/datum/antagonist/ert/intern/unarmed)
	leader_role = /datum/antagonist/ert/intern/leader/unarmed
	rename_team = "Unarmed Horde of Interns"

/datum/ert/loss_prevention
	code = "Light Blue"
	teamsize = 4
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/lp/lieutenant
	roles = list(/datum/antagonist/ert/lp, /datum/antagonist/ert/lp/medic, /datum/antagonist/ert/lp/engineer)
	rename_team = "Loss Prevention Team"
	polldesc = "a Nanotrasen loss prevention team"

// Inteq

/datum/ert/inteq
	teamsize = 4
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/inteq/leader
	roles = list(/datum/antagonist/ert/inteq)
	mission = "Carry out your contract."
	rename_team = "Generic Inteq Team"
	polldesc = "an Inteq emergency team"

// SolGov

/datum/ert/solgov
	teamsize = 4
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/solgov
	roles = list(/datum/antagonist/ert/solgov)
	mission = "Intervene in Solarian interests."
	rename_team = "SolGov Sonnensoldner Team"
	polldesc = "a SolGov mercenary team"

/datum/ert/solgov/inspector
	teamsize = 1
	leader_role = /datum/antagonist/ert/official/solgov
	roles = list(/datum/antagonist/ert/official/solgov)
	rename_team = "SolGov Inspector"
	polldesc = "a solarian inspector"
	spawn_at_outpost = FALSE

/datum/ert/solgov/inspector/New()
	mission = "Conduct a routine review on [station_name()]'s vessels."

// Minutemen

/datum/ert/minutemen
	teamsize = 4
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/minutemen/leader
	roles = list(/datum/antagonist/ert/minutemen)
	mission = "Keep the peace in sector affairs"
	rename_team = "Generic Minutemen Team"
	polldesc = "a Minutemen emergency team"
	random_names = TRUE


/datum/ert/minutemen/bard
	leader_role = /datum/antagonist/ert/minutemen/bard/leader
	roles = list(/datum/antagonist/ert/minutemen/bard)
	rename_team = "Minutemen BARD Team"
	polldesc = "a Minutemen biohazard removal team"

/datum/ert/minutemen/riot
	teamsize = 6
	leader_role = /datum/antagonist/ert/minutemen/riot/leader
	roles = list(/datum/antagonist/ert/minutemen/riot)
	rename_team = "Minutemen Riot Control Team"
	polldesc = "a Minutemen riot control team"

/datum/ert/minutemen/piratehunters
	leader_role = /datum/antagonist/ert/minutemen/piratehunters/leader
	roles = list(/datum/antagonist/ert/minutemen/piratehunters)
	mission = "Eliminate pirate presence within the sector."
	rename_team = "Minutemen Pirate Hunter Team"
	polldesc = "a fireteam of Minutemen pirate hunters"

/datum/ert/minutemen/inspector
	teamsize = 1
	leader_role = /datum/antagonist/ert/official/minutemen
	roles = list(/datum/antagonist/ert/official/minutemen)
	rename_team = "Minutemen GOLD Inspector"
	polldesc = "a Minutemen inspector"

// Syndicate

/datum/ert/syndicate
	teamsize = 4
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/syndicate/leader
	roles = list(/datum/antagonist/ert/syndicate)
	mission = "Serve the interests of the Syndicate."
	rename_team = "Generic Syndicate Team"
	polldesc = "a Syndicate emergency team"
	spawn_at_outpost = FALSE

/datum/ert/syndicate/gorlex
	leader_role = /datum/antagonist/ert/syndicate/gorlex/leader
	roles = list(/datum/antagonist/ert/syndicate/gorlex, /datum/antagonist/ert/syndicate/gorlex/pointman, /datum/antagonist/ert/syndicate/gorlex/medic, /datum/antagonist/ert/syndicate/gorlex/sniper)
	mission = "Serve the interests of the 2nd Battlegroup."
	rename_team = "2nd Battlegroup Squad"
	polldesc = "a loyalist Gorlex squad"

/datum/ert/syndicate/cybersun
	leader_role = /datum/antagonist/ert/syndicate/cybersun/leader
	roles = list(/datum/antagonist/ert/syndicate/cybersun)
	mission = "Serve the interests of CyberSun."
	rename_team = "Cybersun Commando Team"
	polldesc = "a Cybersun Commando team"

/datum/ert/syndicate/cybersun/medic
	leader_role = /datum/antagonist/ert/syndicate/cybersun/medic/leader
	roles = list(/datum/antagonist/ert/syndicate/cybersun/medic)
	mission = "Assist CyberSun clients."
	rename_team = "Cybersun Medical Intervention Team"
	polldesc = "a Cybersun paramedic team"

// Frontiersmen
/datum/ert/frontier
	teamsize = 4
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/frontier/leader
	roles = list(/datum/antagonist/ert/frontier)
	rename_team = "Generic Frontiersmen Team"
	mission = "Pillage in the name of the Frontiersmen."
	polldesc = "an armed group of pirates"
	random_names = TRUE
	leader_experience = FALSE
	spawn_at_outpost = FALSE
	ert_template = /datum/map_template/shuttle/subshuttles/sugarcube

/datum/ert/frontier/assault
	leader_role = /datum/antagonist/ert/frontier/leader
	roles = list(/datum/antagonist/ert/frontier, /datum/antagonist/ert/frontier/medic, /datum/antagonist/ert/frontier/engineer)
	rename_team = "Assault Frontiersmen Team"
	polldesc = "a well armed squad of pirates"
	ert_template = /datum/map_template/shuttle/subshuttles/frontiersmen_gut

/datum/ert/independent
	teamsize = 3
	opendoors = FALSE
	leader_role = /datum/antagonist/ert/independent
	roles = list(/datum/antagonist/ert/independent)
	rename_team = "Security Independent Team"
	polldesc = "an independent security team"

/datum/ert/independent/emt
	teamsize = 4
	leader_role = /datum/antagonist/ert/independent/emt
	roles = list(/datum/antagonist/ert/independent/emt)
	rename_team = "Medical Independent Team"
	polldesc = "an independent medical response team"

/datum/ert/independent/firefighter
	teamsize = 5
	leader_role = /datum/antagonist/ert/independent/firefighter/leader
	roles = list(/datum/antagonist/ert/independent/firefighter, /datum/antagonist/ert/independent/firefighter/medic)
	rename_team = "Independent Firefighter Team"
	polldesc = "an independent firefighting team"
