/datum/language/martian_creole
	name = "Martian Creole"
	desc = "The common language of Martians, built from the varied tongues of settlers from all over Earth."
	key = "a"
	flags = TONGUELESS_SPEECH
	space_chance = 20
	//hoo boy, this is a long one: there's Japanese, Korean and Chinese representing the Asian languages, with particular emphasis on Japanese and Chinese, for Europe there's English, German, French and Spanish, and the European syllables are doubled up so they're not outright dominated by the Asian ones
	syllables = list(
		"wa", "ra", "ya", "ma", "pa", "ba", "ha", "na", "da", "ta", "za", "sa", "ga", "ka",
		"ri", "mi", "pi", "bi", "hi", "ni", "chi", "ji", "shi", "gi", "ki", "ru", "yu", "mu",
		"pu", "bu", "hu", "nu", "tsu", "zu", "su", "gu", "ku", "re", "me", "pe", "be", "he",
		"ne", "de", "te", "ze", "se", "ge", "ke", "ro", "yo", "mo", "po", "bo", "ho", "no",
		"do", "to", "zo", "so", "go", "ko", "rya", "mya", "pya", "bya", "hya", "nya", "chya",
		"jya", "shya", "gya", "kya", "ryu", "myu", "pyu", "byu", "hyu", "nyu", "chyu",
		"jyu", "shyu", "gyu", "kyu", "ryo", "myo", "pyo", "byo", "hyo", "nyo", "chyo",
		"jyo", "shyo", "gyo", "kyo", "n",
		"gya", "geo", "gyeo", "gyo", "gae", "nya", "neo", "nyeo", "nyo", "nae",
		"dya", "deo", "dyeo", "dyo", "dae", "rya", "reo", "ryeo", "ryo", "rae",
		"mya", "meo", "myeo", "myo", "mae", "bya", "beo", "byeo", "byo", "bae",
		"sya", "seo", "syeo", "syo", "sae", "ya", "eo", "yeo", "yo", "ae",
		"jya", "jeo", "jyeo", "jyo", "jae", "chya", "cheo", "chyeo", "chyo", "chae",
		"tya", "teo", "tyeo", "tyo", "tae", "pya", "peo", "pyeo", "pyo", "pae",
		"dya", "deo", "dyeo", "dyo", "dae", "rya", "reo", "ryeo", "ryo", "rae", "kk",
		"ang", "ba", "bai", "bao", "bei", "beng", "bian", "biao", "bing", "cai",
		"cang", "cao", "ceng", "chai", "cui", "cong", "chuo", "dai", "dang", "dao",
		"deng", "dei", "diao", "dong", "ding", "duo", "fa", "feng", "gai", "gang",
		"guo", "gei", "geng", "gong", "guan", "guang", "hao", "heng", "hng", "hong",
		"huai", "huan", "huo", "jiao", "jiang", "jin", "jing", "juan", "kai", "kang",
		"kao", "kuang", "kuo", "lai", "lang", "lao", "ling", "long", "liu", "mang",
		"mai", "luo", "liao", "mao", "mei", "mian", "miao", "ming", "mou", "mu",
		"nai", "nan", "nao", "neng", "nian", "niao", "ning", "nuo", "pai", "pan",
		"pao", "pian", "piao", "qi", "qiao", "qing", "qiong", "quan", "rao", "reng",
		"rong", "ruan", "sang", "sao", "sei", "shai", "shao", "shei", "sheng", "shuai",
		"shun", "song", "suan", "sui", "tang", "tao", "tian", "tiao", "tuan", "wai", "wan",
		"weng", "xi", "xia", "xian", "xiang", "xiao", "xing", "xiong", "yue", "zai", "zao",
		"zei", "zhai", "zhang", "zhao", "zheng", "zhong", "zhua", "zhui", "zuan", "zui",
		"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
		"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
		"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
		"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi",
		"ss", "ts", "tsch", "ae", "ue", "oe", "ie", "ss", "ts", "tsch", "ae", "ue", "oe", "ie",
		"ous", "aire", "ours", "ol", "la", "fra", "si", "pla", "ver", "jau", "parl", "vou", "pet", "ut",
		"aim", "ata", "sal", "sol", "tant",
		"ja", "je", "ji", "jo", "ju", "lla", "lle", "lli", "llo", "llu", "ña", "ñe", "ñi", "ño", "ñu",
		"rra", "rre", "rri", "rro", "rru", "va", "ve", "vi", "vo", "vu",
		"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
		"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
		"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
		"his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi",
		"ss", "ts", "tsch", "ae", "ue", "oe", "ie", "ss", "ts", "tsch", "ae", "ue", "oe", "ie",
		"ous", "aire", "ours", "ol", "la", "fra", "si", "pla", "ver", "jau", "parl", "vou", "pet", "ut",
		"aim", "ata", "sal", "sol", "tant",
		"ja", "je", "ji", "jo", "ju", "lla", "lle", "lli", "llo", "llu", "ña", "ñe", "ñi", "ño", "ñu",
		"rra", "rre", "rri", "rro", "rru", "va", "ve", "vi", "vo", "vu"
	)
	icon_state = "martian"
	default_priority = 90

//particular credit must be given:
// Japanese syllables: http://afe.easia.columbia.edu/japan/japanworkbook/language/lsp.htm#:~:text=The%20basic%20units%20of%20the,'y'%20plus%20a%20vowel.
// Spanish syllables: https://foxhugh.com/2019/04/02/were-verse-catalog/spanish-syllables-resized/
