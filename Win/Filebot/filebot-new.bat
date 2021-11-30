filebot -script fn:amc ^
--output "D:" ^
--action move ^
--conflict auto  ^
--def clean=y  ^
--def --conflict auto ^
--def deleteAfterExtract=y ^
-non-strict "C:\down-done" ^
--log-file amc.log ^
--def ^
seriesFormat="D:\temp-TV\{n}\{'Season '+s.pad(2)}\{n} - {s00e00} - {t} {vf} {af}" ^
movieFormat="D:\temp-Movie\{n}\{n} - ({y})  {vf} {af}" ^
animeForma="D:\temp-Anime\{n}\{'Season '+s.pad(2)}\{n} - {s00e00} - {t} {vf} {af}"