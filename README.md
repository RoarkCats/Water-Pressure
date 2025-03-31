# Water Pressure  ![pack.png](https://github.com/RoarkCats/Water-Pressure/blob/main/pack.png?raw=true)  [![Modrinth Project](https://img.shields.io/modrinth/dt/AEnFuzna?logo=modrinth&label=Modrinth&style=flat&labelColor=2D2D2D&color=555555)](https://modrinth.com/datapack/water-pressure)
A simple but fleshed out datapack that adds water pressure,
damaging players the deeper they dive without sufficient protection from armor!
Dynamically detects water depth in any pool based on the number of water blocks above the player.

## Pressure Effects

Pressure damage and effects are applied as the player decends past their limits set by the offset and their armor

| Depth | Dmg | Effects (Cumulative) |
|-------|---|---------------------|
| >= 1  | 1 | Difficulty swimming |
| >= 6  | 2 | Nausea        |
| >= 11 | 3 ||
| >= 16 | 4 | Blindness     |
| >= 26 | 5 ||

## Config

Several config options are made available to the player through scoreboard commands

- Show Settings: `/scoreboard objectives setdisplay sidebar watpr`
- Change Setting: `/scoreboard players set $offset watpr 20`
- Hide Settings: `/scoreboard objectives setdisplay sidebar`


| Setting               | Description                                            | Default | Values       |
|-----------------------|--------------------------------------------------------|---------|--------------|
| $offset               | Depth in blocks before pressure is applied             | 16      | -1000 ~ 1000 |
| $armor_mult           | Armor offset multiplier percentage                     | 150     | >= 0         |
| $toughness_mult       | Armor Toughness offset multiplier percentage           | 250     | >= 0         |
| $total_mult           | Total multiplier percentage for armor/toughness        | 115     | >= 0         |
| $damage_diff_scaling  | Toggles damage difficulty scaling <br/> (If enabled, disables damage in peaceful) | 1       | 0 ~ 1        |

You can also add to the `vehicle_pressure_blacklist` by modifying the file in `data/watpr/tags/entity_types/`

## License
\- This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.
<br/>
\- This project can be packaged into any server or modpack you'd like
