/obj/item/coin/day_s
	name = "day 'S' coin"
	desc = "Стороны монетки напоминают вам одну историю о том, что в мире существуют цели, важнее даже собственной жизни."
	icon = 'mod_celadon/icons/obj/coin.dmi'
	icon_state = "coin_valid"
	sideslist = list("valid", "salad")
	material_flags = NONE

/obj/item/coin/day_s/attack_self(mob/user)
	if(cooldown < world.time)
		if(string_attached) //does the coin have a wire attached
			to_chat(user, "<span class='warning'>Монета не будет хорошо подбрасываться, если к ней что-то прикреплено!</span>" )
			return FALSE//do not flip the coin
		cooldown = world.time + 15
		flick("coin_[coinflip]_flip", src)
		coinflip = pick(sideslist)
		icon_state = "coin_[coinflip]"
		playsound(user.loc, 'sound/items/coinflip.ogg', 50, TRUE)
		var/oldloc = loc
		sleep(15)
		if(loc == oldloc && user && !user.incapacitated())
			if(coinflip == "salad")
				user.visible_message(
					"<span class='notice'>[user] подкидывает монетку в воздухе. Она приземляется, после чего на ней виднеется буква 'S'. <b>Защита любой ценой!</b></span>", \
					"<span class='notice'>Вы подкидываете монетку в воздухе. Она приземляется, после чего на ней виднеется буква 'S'. <b>Защита любой ценой!</b></span>", \
					"<span class='hear'>Вы слышите звук падения мелочи.</span>")
			else
				user.visible_message(
					"<span class='notice'>[user] подкидывает монетку в воздухе. Она приземляется, после чего на ней виднеется буква 'M'. <b>Атака без учёта потерь!</b></span>", \
					"<span class='notice'>Вы подкидываете монетку в воздухе. Она приземляется, после чего на ней виднеется буква 'M'. <b>Атака без учёта потерь!</b></span>", \
					"<span class='hear'>Вы слышите звук падения мелочи.</span>")
	return TRUE//did the coin flip?
