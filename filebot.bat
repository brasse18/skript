filebot -script fn:amc ^
--output "H:\temp-TV" ^
--action move ^
--conflict auto  ^
clean=y  ^
deleteAfterExtract=y ^
-non-strict "H:\new-temp-done" ^
--log-file amc.log ^
--def ^
seriesFormat="D:\temp-TV\{n}\{'Season '+s.pad(2)}\{n} - {s00e00} - {t} {vf} {af}" ^
movieFormat="D:\temp-Movie\{n}\{n} - ({y})  {vf} {af}" ^
animeForma="D:\temp-Anime\{n}\{'Season '+s.pad(2)}\{n} - {s00e00} - {t} {vf} {af}"
