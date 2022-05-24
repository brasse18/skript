filebot -script fn:amc ^
--output "I:\Video\TV shows" ^
--action move ^
--conflict auto  ^
--def clean=y  ^
--def --conflict auto ^
--def deleteAfterExtract=y ^
-non-strict "I:\temp" ^
--log-file amc.log ^
--def ^
seriesFormat="I:\Video\TV shows\{n}\{'Season '+s.pad(2)}\{n} - {s00e00} - {t} {vf} {af}" ^
movieFormat="I:\Video\Movie\{n}\{n} - ({y})  {vf} {af}" ^
animeForma="I:\Video\Anime\{n}\{'Season '+s.pad(2)}\{n} - {s00e00} - {t} {vf} {af}"