# Donut Auction Tracker (Fabric, client-side, MC 1.21.4)

Press **G** in game (rebindable in Controls) to open the tracker.

- **New Auction**: search/pick ANY item in the game, set a starting price (5k, 1.5m...), a duration (30m, 2h, 1d) and a count.
- The newest running auction is "LIVE". Click an auction + **Make Live** to switch which one receives payments.
- When someone does `/pay <you> <amount>` the mod reads the server's chat notification and lists it under the live auction (with total + top payer). Payments with no live auction go to "Unassigned".
- **Advertise** posts your auction to chat (one click = one message, nothing is automatic).
- Data is saved to `config/donutauction.json`.

## Build
1. Install JDK 21.
2. In this folder run `gradle wrapper` (or copy the wrapper from the Fabric example mod), then `./gradlew build`.
3. Put `build/libs/donutauction-1.0.0.jar` in your `mods` folder with Fabric Loader + Fabric API for 1.21.4.

## IMPORTANT
The payment chat line is matched by one regex in `PaymentParser.java`. If DonutSMP words its "you received money" message differently, edit that regex.
Server rules differ - this mod only reads chat and displays info, it never sends commands or pays on its own.
