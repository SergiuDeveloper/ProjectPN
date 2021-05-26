fun get_satellites_data() =
let
	val satellites_data = [
		{
			id=(24876),
			name="NAVSTAR 43 (USA 132)",
			latitude=(~28.1175),
			longitude=(~64.4965),
			altitude=(20187.8447)
		},
		{
			id=(26407),
			name="NAVSTAR 48 (USA 151)",
			latitude=(~53.6636),
			longitude=(~37.5563),
			altitude=(19786.5505)
		},
		{
			id=(27704),
			name="NAVSTAR 52 (USA 168)",
			latitude=(~47.553),
			longitude=(55.5375),
			altitude=(19776.6716)
		},
		{
			id=(28874),
			name="NAVSTAR 57 (USA 183)",
			latitude=(~25.7668),
			longitude=(~28.2421),
			altitude=(19998.4357)
		},
		{
			id=(32260),
			name="NAVSTAR 60 (USA 196)",
			latitude=(~40.7782),
			longitude=(~97.2176),
			altitude=(20311.0893)
		},
		{
			id=(37753),
			name="NAVSTAR 66 (USA 232)",
			latitude=(~36.0721),
			longitude=(38.9813),
			altitude=(20479.2712)
		},
		{
			id=(38833),
			name="NAVSTAR 67 (USA 239)",
			latitude=(~43.7638),
			longitude=(~129.6312),
			altitude=(20474.6642)
		},
		{
			id=(39166),
			name="NAVSTAR 68 (USA 242)",
			latitude=(~20.1887),
			longitude=(115.1232),
			altitude=(20059.1356)
		},
		{
			id=(39533),
			name="NAVSTAR 69 (USA 248)",
			latitude=(~19.8064),
			longitude=(~4.3298),
			altitude=(20281.7832)
		},
		{
			id=(40730),
			name="NAVSTAR 74 (USA 262)",
			latitude=(~41.1647),
			longitude=(91.527),
			altitude=(20095.0746)
		},
		{
			id=(41019),
			name="NAVSTAR 75 (USA 265)",
			latitude=(~55.3835),
			longitude=(166.0844),
			altitude=(20109.1464)
		},
		{
			id=(41328),
			name="NAVSTAR 76 (USA 266)",
			latitude=(~22.2701),
			longitude=(145.8614),
			altitude=(20059.4291)
		},
		{
			id=(45854),
			name="NAVSTAR 79 (USA 304)",
			latitude=(~43.9658),
			longitude=(~153.9207),
			altitude=(20219.4849)
		},
		{
			id=(46826),
			name="NAVSTAR 80 (USA 309)",
			latitude=(~54.703),
			longitude=(~11.1312),
			altitude=(20206.6196)
		},
		{
			id=(10684),
			name="OPS 5111 (NAVSTAR 1)",
			latitude=(~54.6735),
			longitude=(~150.8629),
			altitude=(20404.0809)
		},
		{
			id=(11054),
			name="OPS 5113 (NAVSTAR 3)",
			latitude=(~59.9162),
			longitude=(83.4721),
			altitude=(20701.0669)
		},
		{
			id=(11141),
			name="OPS 5114 (NAVSTAR 4)",
			latitude=(~36.1261),
			longitude=(113.8364),
			altitude=(21234.9606)
		},
		{
			id=(11690),
			name="OPS 5117 (NAVSTAR 5)",
			latitude=(~55.4161),
			longitude=(117.8989),
			altitude=(19284.9449)
		},
		{
			id=(11783),
			name="OPS 5118 (NAVSTAR 6)",
			latitude=(~62.9814),
			longitude=(5.4171),
			altitude=(21121.5723)
		},
		{
			id=(14189),
			name="OPS 9794 (NAVSTAR 8)",
			latitude=(~22.408),
			longitude=(100.945),
			altitude=(21476.1999)
		},
		{
			id=(16129),
			name="NAVSTAR 11 (USA 10)",
			latitude=(~62.6682),
			longitude=(~174.8746),
			altitude=(21830.6722)
		},
		{
			id=(19802),
			name="NAVSTAR 13 (USA 35)",
			latitude=(~30.2195),
			longitude=(~81.5284),
			altitude=(21672.4857)
		},
		{
			id=(20061),
			name="NAVSTAR 14 (USA 38)",
			latitude=(~38.7755),
			longitude=(58.0998),
			altitude=(21330.2151)
		},
		{
			id=(20361),
			name="NAVSTAR 17 (USA 49)",
			latitude=(~53.6355),
			longitude=(112.8772),
			altitude=(21200.8315)
		},
		{
			id=(20533),
			name="NAVSTAR 19 (USA 54)",
			latitude=(~25.8201),
			longitude=(~60.138),
			altitude=(20965.5979)
		},
		{
			id=(20724),
			name="NAVSTAR 20 (USA 63)",
			latitude=(~42.3387),
			longitude=(~116.3432),
			altitude=(21333.8082)
		},
		{
			id=(21930),
			name="NAVSTAR 25 (USA 80)",
			latitude=(~50.7266),
			longitude=(99.423),
			altitude=(21323.1759)
		},
		{
			id=(22231),
			name="NAVSTAR 28 (USA 85)",
			latitude=(~34.6622),
			longitude=(~65.1354),
			altitude=(21174.3237)
		},
		{
			id=(22446),
			name="NAVSTAR 30 (USA 88)",
			latitude=(~47.7479),
			longitude=(~33.3801),
			altitude=(21397.6968)
		},
		{
			id=(22877),
			name="NAVSTAR 35 (USA 96)",
			latitude=(~38.0412),
			longitude=(155.178),
			altitude=(21330.8211)
		},
		{
			id=(23833),
			name="NAVSTAR 37 (USA 117)",
			latitude=(~53.9557),
			longitude=(43.6388),
			altitude=(20729.9307)
		},
		{
			id=(25933),
			name="NAVSTAR 46 (USA 145)",
			latitude=(~48.5964),
			longitude=(42.2628),
			altitude=(20451.2017)
		},
		{
			id=(26690),
			name="NAVSTAR 50 (USA 156)",
			latitude=(~16.7794),
			longitude=(80.1918),
			altitude=(21011.5497)
		},
		{
			id=(28129),
			name="NAVSTAR 53 (USA 175)",
			latitude=(~8.2834),
			longitude=(69.9994),
			altitude=(20256.311)
		},
		{
			id=(28190),
			name="NAVSTAR 54 (USA 177)",
			latitude=(~8.9654),
			longitude=(~38.377),
			altitude=(20161.9802)
		},
		{
			id=(28474),
			name="NAVSTAR 56 (USA 180)",
			latitude=(52.6106),
			longitude=(~59.9797),
			altitude=(20720.6999)
		},
		{
			id=(32711),
			name="NAVSTAR 62 (USA 201)",
			latitude=(8.5225),
			longitude=(16.1032),
			altitude=(20502.8266)
		},
		{
			id=(39741),
			name="NAVSTAR 70 (USA 251)",
			latitude=(37.1317),
			longitude=(~20.5564),
			altitude=(20248.9084)
		},
		{
			id=(40105),
			name="NAVSTAR 71 (USA 256)",
			latitude=(51.4172),
			longitude=(11.325),
			altitude=(20154.225)
		},
		{
			id=(40294),
			name="NAVSTAR 72 (USA 258)",
			latitude=(12.8973),
			longitude=(60.4905),
			altitude=(20223.8564)
		},
		{
			id=(43873),
			name="NAVSTAR 77 (USA 289)",
			latitude=(53.3751),
			longitude=(61.3784),
			altitude=(20196.992)
		},
		{
			id=(15271),
			name="NAVSTAR 10 (USA 5)",
			latitude=(~12.0588),
			longitude=(~41.722),
			altitude=(20604.6293)
		},
		{
			id=(20185),
			name="NAVSTAR 15 (USA 42)",
			latitude=(40.5455),
			longitude=(~22.9314),
			altitude=(21564.4621)
		},
		{
			id=(20830),
			name="NAVSTAR 21 (USA 64)",
			latitude=(54.1131),
			longitude=(~34.1821),
			altitude=(21443.4118)
		},
		{
			id=(20959),
			name="NAVSTAR 22 (USA 66)",
			latitude=(50.1844),
			longitude=(23.9423),
			altitude=(21317.3006)
		},
		{
			id=(21552),
			name="NAVSTAR 23 (USA 71)",
			latitude=(52.8216),
			longitude=(~39.211),
			altitude=(20893.1195)
		},
		{
			id=(22014),
			name="NAVSTAR 26 (USA 83)",
			latitude=(13.6946),
			longitude=(~21.845),
			altitude=(21365.9131)
		},
		{
			id=(28361),
			name="NAVSTAR 55 (USA 178)",
			latitude=(7.4226),
			longitude=(~46.7502),
			altitude=(20374.5517)
		},
		{
			id=(27663),
			name="NAVSTAR 51 (USA 166)",
			latitude=(27.2599),
			longitude=(95.1222),
			altitude=(19863.8247)
		},
		{
			id=(40534),
			name="NAVSTAR 73 (USA 260)",
			latitude=(45.3094),
			longitude=(114.1831),
			altitude=(20078.1608)
		},
		{
			id=(20452),
			name="NAVSTAR 18 (USA 50)",
			latitude=(50.2647),
			longitude=(106.1857),
			altitude=(21238.8562)
		},
		{
			id=(22108),
			name="NAVSTAR 27 (USA 84)",
			latitude=(54.0246),
			longitude=(91.8538),
			altitude=(21392.376)
		},
		{
			id=(24320),
			name="NAVSTAR 39 (USA 128)",
			latitude=(31.2488),
			longitude=(112.3672),
			altitude=(21555.743)
		},
		{
			id=(29486),
			name="NAVSTAR 58 (USA 190)",
			latitude=(40.9024),
			longitude=(153.3345),
			altitude=(20287.7614)
		},
		{
			id=(22275),
			name="NAVSTAR 29 (USA 87)",
			latitude=(32.8885),
			longitude=(130.8922),
			altitude=(21316.1434)
		},
		{
			id=(25030),
			name="NAVSTAR 44 (USA 135)",
			latitude=(51.0079),
			longitude=(144.9565),
			altitude=(21354.459)
		},
		{
			id=(26605),
			name="NAVSTAR 49 (USA 154)",
			latitude=(2.4292),
			longitude=(132.4877),
			altitude=(20092.9593)
		},
		{
			id=(34661),
			name="NAVSTAR 63 (USA 203)",
			latitude=(52.2962),
			longitude=(134.3385),
			altitude=(19898.8085)
		},
		{
			id=(32384),
			name="NAVSTAR 61 (USA 199)",
			latitude=(53.0662),
			longitude=(~164.2928),
			altitude=(20162.912)
		},
		{
			id=(44506),
			name="NAVSTAR 78 (USA 293)",
			latitude=(~0.1442),
			longitude=(~169.353),
			altitude=(20218.2544)
		},
		{
			id=(20302),
			name="NAVSTAR 16 (USA 47)",
			latitude=(13.9741),
			longitude=(~154.7611),
			altitude=(21220.3434)
		},
		{
			id=(21890),
			name="NAVSTAR 24 (USA 79)",
			latitude=(13.151),
			longitude=(~170.0865),
			altitude=(21063.9626)
		},
		{
			id=(22581),
			name="NAVSTAR 31 (USA 90)",
			latitude=(44.9772),
			longitude=(~166.0049),
			altitude=(21252.7913)
		},
		{
			id=(22657),
			name="NAVSTAR 32 (USA 91)",
			latitude=(38.748),
			longitude=(166.6148),
			altitude=(21269.3375)
		},
		{
			id=(22700),
			name="NAVSTAR 33 (USA 92)",
			latitude=(~8.656),
			longitude=(~154.3195),
			altitude=(21238.8839)
		},
		{
			id=(23027),
			name="NAVSTAR 36 (USA 100)",
			latitude=(41.7207),
			longitude=(164.7737),
			altitude=(21532.4043)
		},
		{
			id=(26360),
			name="NAVSTAR 47 (USA 150)",
			latitude=(2.287),
			longitude=(~117.1776),
			altitude=(20321.1371)
		},
		{
			id=(29601),
			name="NAVSTAR 59 (USA 192)",
			latitude=(8.2557),
			longitude=(~112.0924),
			altitude=(20222.5875)
		},
		{
			id=(36585),
			name="NAVSTAR 65 (USA 213)",
			latitude=(31.6426),
			longitude=(~136.0899),
			altitude=(20160.8766)
		},
		{
			id=(22779),
			name="NAVSTAR 34 (USA 94)",
			latitude=(2.1573),
			longitude=(~110.6391),
			altitude=(21151.725)
		},
		{
			id=(35752),
			name="NAVSTAR 64 (USA 206)",
			latitude=(18.8368),
			longitude=(~98.7126),
			altitude=(20043.8707)
		},
		{
			id=(10893),
			name="OPS 5112 (NAVSTAR 2)",
			latitude=(49.1266),
			longitude=(~96.0875),
			altitude=(19698.2633)
		}
	]
in
	satellites_data
end;
