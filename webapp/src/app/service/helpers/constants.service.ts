import { Injectable } from '@angular/core';
import { Country } from 'src/app/model/datatype/country';

@Injectable({
  providedIn: 'root'
})
export class ConstantsService {
  constructor() {}
}

export const COUNTRIES: Country[] = [
  { name: "Afganistán", iso2: "AF", iso3: "AFG", code: 93 },
  { name: "Albania", iso2: "AL", iso3: "ALB", code: 355 },
  { name: "Alemania", iso2: "DE", iso3: "DEU", code: 49 },
  { name: "Andorra", iso2: "AD", iso3: "AND", code: 376 },
  { name: "Angola", iso2: "AO", iso3: "AGO", code: 244 },
  { name: "Anguila", iso2: "AI", iso3: "AIA", code: 1264 },
  { name: "Antártida", iso2: "AQ", iso3: "ATA", code: 672 },
  { name: "Antigua y Barbuda", iso2: "AG", iso3: "ATG", code: 1268 },
  { name: "Arabia Saudita", iso2: "SA", iso3: "SAU", code: 966 },
  { name: "Argelia", iso2: "DZ", iso3: "DZA", code: 213 },
  { name: "Argentina", iso2: "AR", iso3: "ARG", code: 54 },
  { name: "Armenia", iso2: "AM", iso3: "ARM", code: 374 },
  { name: "Aruba", iso2: "AW", iso3: "ABW", code: 297 },
  { name: "Australia", iso2: "AU", iso3: "AUS", code: 61 },
  { name: "Austria", iso2: "AT", iso3: "AUT", code: 43 },
  { name: "Azerbaiyán", iso2: "AZ", iso3: "AZE", code: 994 },
  { name: "Bélgica", iso2: "BE", iso3: "BEL", code: 32 },
  { name: "Bahamas", iso2: "BS", iso3: "BHS", code: 1242 },
  { name: "Bahrein", iso2: "BH", iso3: "BHR", code: 973 },
  { name: "Bangladesh", iso2: "BD", iso3: "BGD", code: 880 },
  { name: "Barbados", iso2: "BB", iso3: "BRB", code: 1246 },
  { name: "Belice", iso2: "BZ", iso3: "BLZ", code: 501 },
  { name: "Benín", iso2: "BJ", iso3: "BEN", code: 229 },
  { name: "Bhután", iso2: "BT", iso3: "BTN", code: 975 },
  { name: "Bielorrusia", iso2: "BY", iso3: "BLR", code: 375 },
  { name: "Birmania", iso2: "MM", iso3: "MMR", code: 95 },
  { name: "Bolivia", iso2: "BO", iso3: "BOL", code: 591 },
  { name: "Bosnia y Herzegovina", iso2: "BA", iso3: "BIH", code: 387 },
  { name: "Botsuana", iso2: "BW", iso3: "BWA", code: 267 },
  { name: "Brasil", iso2: "BR", iso3: "BRA", code: 55 },
  { name: "Brunéi", iso2: "BN", iso3: "BRN", code: 673 },
  { name: "Bulgaria", iso2: "BG", iso3: "BGR", code: 359 },
  { name: "Burkina Faso", iso2: "BF", iso3: "BFA", code: 226 },
  { name: "Burundi", iso2: "BI", iso3: "BDI", code: 257 },
  { name: "Cabo Verde", iso2: "CV", iso3: "CPV", code: 238 },
  { name: "Camboya", iso2: "KH", iso3: "KHM", code: 855 },
  { name: "Camerún", iso2: "CM", iso3: "CMR", code: 237 },
  { name: "Canadá", iso2: "CA", iso3: "CAN", code: 1 },
  { name: "Chad", iso2: "TD", iso3: "TCD", code: 235 },
  { name: "Chile", iso2: "CL", iso3: "CHL", code: 56 },
  { name: "China", iso2: "CN", iso3: "CHN", code: 86 },
  { name: "Chipre", iso2: "CY", iso3: "CYP", code: 357 },
  { name: "Ciudad del Vaticano", iso2: "VA", iso3: "VAT", code: 39 },
  { name: "Colombia", iso2: "CO", iso3: "COL", code: 57 },
  { name: "Comoras", iso2: "KM", iso3: "COM", code: 269 },
  { name: "República del Congo", iso2: "CG", iso3: "COG", code: 242 },
  { name: "República Democrática del Congo", iso2: "CD", iso3: "COD", code: 243 },
  { name: "Corea del Norte", iso2: "KP", iso3: "PRK", code: 850 },
  { name: "Corea del Sur", iso2: "KR", iso3: "KOR", code: 82 },
  { name: "Costa de Marfil", iso2: "CI", iso3: "CIV", code: 225 },
  { name: "Costa Rica", iso2: "CR", iso3: "CRI", code: 506 },
  { name: "Croacia", iso2: "HR", iso3: "HRV", code: 385 },
  { name: "Cuba", iso2: "CU", iso3: "CUB", code: 53 },
  { name: "Curazao", iso2: "CW", iso3: "CWU", code: 5999 },
  { name: "Dinamarca", iso2: "DK", iso3: "DNK", code: 45 },
  { name: "Dominica", iso2: "DM", iso3: "DMA", code: 1767 },
  { name: "Ecuador", iso2: "EC", iso3: "ECU", code: 593 },
  { name: "Egipto", iso2: "EG", iso3: "EGY", code: 20 },
  { name: "El Salvador", iso2: "SV", iso3: "SLV", code: 503 },
  { name: "Emiratos Árabes Unidos", iso2: "AE", iso3: "ARE", code: 971 },
  { name: "Eritrea", iso2: "ER", iso3: "ERI", code: 291 },
  { name: "Eslovaquia", iso2: "SK", iso3: "SVK", code: 421 },
  { name: "Eslovenia", iso2: "SI", iso3: "SVN", code: 386 },
  { name: "España", iso2: "ES", iso3: "ESP", code: 34 },
  { name: "Estados Unidos de América", iso2: "US", iso3: "USA", code: 1 },
  { name: "Estonia", iso2: "EE", iso3: "EST", code: 372 },
  { name: "Etiopía", iso2: "ET", iso3: "ETH", code: 251 },
  { name: "Filipinas", iso2: "PH", iso3: "PHL", code: 63 },
  { name: "Finlandia", iso2: "FI", iso3: "FIN", code: 358 },
  { name: "Fiyi", iso2: "FJ", iso3: "FJI", code: 679 },
  { name: "Francia", iso2: "FR", iso3: "FRA", code: 33 },
  { name: "Gabón", iso2: "GA", iso3: "GAB", code: 241 },
  { name: "Gambia", iso2: "GM", iso3: "GMB", code: 220 },
  { name: "Georgia", iso2: "GE", iso3: "GEO", code: 995 },
  { name: "Ghana", iso2: "GH", iso3: "GHA", code: 233 },
  { name: "Gibraltar", iso2: "GI", iso3: "GIB", code: 350 },
  { name: "Granada", iso2: "GD", iso3: "GRD", code: 1473 },
  { name: "Grecia", iso2: "GR", iso3: "GRC", code: 30 },
  { name: "Groenlandia", iso2: "GL", iso3: "GRL", code: 299 },
  { name: "Guadalupe", iso2: "GP", iso3: "GLP", code: 590 },
  { name: "Guam", iso2: "GU", iso3: "GUM", code: 1671 },
  { name: "Guatemala", iso2: "GT", iso3: "GTM", code: 502 },
  { name: "Guayana Francesa", iso2: "GF", iso3: "GUF", code: 594 },
  { name: "Guernsey", iso2: "GG", iso3: "GGY", code: 44 },
  { name: "Guinea", iso2: "GN", iso3: "GIN", code: 224 },
  { name: "Guinea Ecuatorial", iso2: "GQ", iso3: "GNQ", code: 240 },
  { name: "Guinea-Bissau", iso2: "GW", iso3: "GNB", code: 245 },
  { name: "Guyana", iso2: "GY", iso3: "GUY", code: 592 },
  { name: "Haití", iso2: "HT", iso3: "HTI", code: 509 },
  { name: "Honduras", iso2: "HN", iso3: "HND", code: 504 },
  { name: "Hong kong", iso2: "HK", iso3: "HKG", code: 852 },
  { name: "Hungría", iso2: "HU", iso3: "HUN", code: 36 },
  { name: "India", iso2: "IN", iso3: "IND", code: 91 },
  { name: "Indonesia", iso2: "ID", iso3: "IDN", code: 62 },
  { name: "Irán", iso2: "IR", iso3: "IRN", code: 98 },
  { name: "Irak", iso2: "IQ", iso3: "IRQ", code: 964 },
  { name: "Irlanda", iso2: "IE", iso3: "IRL", code: 353 },
  { name: "Isla de Man", iso2: "IM", iso3: "IMN", code: 44 },
  { name: "Isla de Navidad", iso2: "CX", iso3: "CXR", code: 61 },
  { name: "Isla Norfolk", iso2: "NF", iso3: "NFK", code: 672 },
  { name: "Islandia", iso2: "IS", iso3: "ISL", code: 354 },
  { name: "Islas Bermudas", iso2: "BM", iso3: "BMU", code: 1441 },
  { name: "Islas Caimán", iso2: "KY", iso3: "CYM", code: 1345 },
  { name: "Islas Cocos (Keeling)", iso2: "CC", iso3: "CCK", code: 61 },
  { name: "Islas Cook", iso2: "CK", iso3: "COK", code: 682 },
  { name: "Islas de Åland", iso2: "AX", iso3: "ALA", code: 358 },
  { name: "Islas Feroe", iso2: "FO", iso3: "FRO", code: 298 },
  { name: "Islas Georgias del Sur y Sandwich del Sur", iso2: "GS", iso3: "SGS", code: 500 },
  { name: "Islas Maldivas", iso2: "MV", iso3: "MDV", code: 960 },
  { name: "Islas Malvinas", iso2: "FK", iso3: "FLK", code: 500 },
  { name: "Islas Marianas del Norte", iso2: "MP", iso3: "MNP", code: 1670 },
  { name: "Islas Marshall", iso2: "MH", iso3: "MHL", code: 692 },
  { name: "Islas Pitcairn", iso2: "PN", iso3: "PCN", code: 870 },
  { name: "Islas Salomón", iso2: "SB", iso3: "SLB", code: 677 },
  { name: "Islas Turcas y Caicos", iso2: "TC", iso3: "TCA", code: 1649 },
  { name: "Islas Ultramarinas Menores de Estados Unidos", iso2: "UM", iso3: "UMI", code: 246 },
  { name: "Islas Vírgenes Británicas", iso2: "VG", iso3: "VGB", code: 1284 },
  { name: "Islas Vírgenes de los Estados Unidos", iso2: "VI", iso3: "VIR", code: 1340 },
  { name: "Israel", iso2: "IL", iso3: "ISR", code: 972 },
  { name: "Italia", iso2: "IT", iso3: "ITA", code: 39 },
  { name: "Jamaica", iso2: "JM", iso3: "JAM", code: 1876 },
  { name: "Japón", iso2: "JP", iso3: "JPN", code: 81 },
  { name: "Jersey", iso2: "JE", iso3: "JEY", code: 44 },
  { name: "Jordania", iso2: "JO", iso3: "JOR", code: 962 },
  { name: "Kazajistán", iso2: "KZ", iso3: "KAZ", code: 7 },
  { name: "Kenia", iso2: "KE", iso3: "KEN", code: 254 },
  { name: "Kirguistán", iso2: "KG", iso3: "KGZ", code: 996 },
  { name: "Kiribati", iso2: "KI", iso3: "KIR", code: 686 },
  { name: "Kuwait", iso2: "KW", iso3: "KWT", code: 965 },
  { name: "Líbano", iso2: "LB", iso3: "LBN", code: 961 },
  { name: "Laos", iso2: "LA", iso3: "LAO", code: 856 },
  { name: "Lesoto", iso2: "LS", iso3: "LSO", code: 266 },
  { name: "Letonia", iso2: "LV", iso3: "LVA", code: 371 },
  { name: "Liberia", iso2: "LR", iso3: "LBR", code: 231 },
  { name: "Libia", iso2: "LY", iso3: "LBY", code: 218 },
  { name: "Liechtenstein", iso2: "LI", iso3: "LIE", code: 423 },
  { name: "Lituania", iso2: "LT", iso3: "LTU", code: 370 },
  { name: "Luxemburgo", iso2: "LU", iso3: "LUX", code: 352 },
  { name: "México", iso2: "MX", iso3: "MEX", code: 52 },
  { name: "Mónaco", iso2: "MC", iso3: "MCO", code: 377 },
  { name: "Macao", iso2: "MO", iso3: "MAC", code: 853 },
  { name: "Macedônia", iso2: "MK", iso3: "MKD", code: 389 },
  { name: "Madagascar", iso2: "MG", iso3: "MDG", code: 261 },
  { name: "Malasia", iso2: "MY", iso3: "MYS", code: 60 },
  { name: "Malawi", iso2: "MW", iso3: "MWI", code: 265 },
  { name: "Mali", iso2: "ML", iso3: "MLI", code: 223 },
  { name: "Malta", iso2: "MT", iso3: "MLT", code: 356 },
  { name: "Marruecos", iso2: "MA", iso3: "MAR", code: 212 },
  { name: "Martinica", iso2: "MQ", iso3: "MTQ", code: 596 },
  { name: "Mauricio", iso2: "MU", iso3: "MUS", code: 230 },
  { name: "Mauritania", iso2: "MR", iso3: "MRT", code: 222 },
  { name: "Mayotte", iso2: "YT", iso3: "MYT", code: 262 },
  { name: "Micronesia", iso2: "FM", iso3: "FSM", code: 691 },
  { name: "Moldavia", iso2: "MD", iso3: "MDA", code: 373 },
  { name: "Mongolia", iso2: "MN", iso3: "MNG", code: 976 },
  { name: "Montenegro", iso2: "ME", iso3: "MNE", code: 382 },
  { name: "Montserrat", iso2: "MS", iso3: "MSR", code: 1664 },
  { name: "Mozambique", iso2: "MZ", iso3: "MOZ", code: 258 },
  { name: "Namibia", iso2: "NA", iso3: "NAM", code: 264 },
  { name: "Nauru", iso2: "NR", iso3: "NRU", code: 674 },
  { name: "Nepal", iso2: "NP", iso3: "NPL", code: 977 },
  { name: "Nicaragua", iso2: "NI", iso3: "NIC", code: 505 },
  { name: "Niger", iso2: "NE", iso3: "NER", code: 227 },
  { name: "Nigeria", iso2: "NG", iso3: "NGA", code: 234 },
  { name: "Niue", iso2: "NU", iso3: "NIU", code: 683 },
  { name: "Noruega", iso2: "NO", iso3: "NOR", code: 47 },
  { name: "Nueva Caledonia", iso2: "NC", iso3: "NCL", code: 687 },
  { name: "Nueva Zelanda", iso2: "NZ", iso3: "NZL", code: 64 },
  { name: "Omán", iso2: "OM", iso3: "OMN", code: 968 },
  { name: "Países Bajos", iso2: "NL", iso3: "NLD", code: 31 },
  { name: "Pakistán", iso2: "PK", iso3: "PAK", code: 92 },
  { name: "Palau", iso2: "PW", iso3: "PLW", code: 680 },
  { name: "Palestina", iso2: "PS", iso3: "PSE", code: 970 },
  { name: "Panamá", iso2: "PA", iso3: "PAN", code: 507 },
  { name: "Papúa Nueva Guinea", iso2: "PG", iso3: "PNG", code: 675 },
  { name: "Paraguay", iso2: "PY", iso3: "PRY", code: 595 },
  { name: "Perú", iso2: "PE", iso3: "PER", code: 51 },
  { name: "Polinesia Francesa", iso2: "PF", iso3: "PYF", code: 689 },
  { name: "Polonia", iso2: "PL", iso3: "POL", code: 48 },
  { name: "Portugal", iso2: "PT", iso3: "PRT", code: 351 },
  { name: "Puerto Rico", iso2: "PR", iso3: "PRI", code: 1 },
  { name: "Qatar", iso2: "QA", iso3: "QAT", code: 974 },
  { name: "Reino Unido", iso2: "GB", iso3: "GBR", code: 44 },
  { name: "República Centroafricana", iso2: "CF", iso3: "CAF", code: 236 },
  { name: "República Checa", iso2: "CZ", iso3: "CZE", code: 420 },
  { name: "República Dominicana", iso2: "DO", iso3: "DOM", code: 1809 },
  { name: "República de Sudán del Sur", iso2: "SS", iso3: "SSD", code: 211 },
  { name: "Reunión", iso2: "RE", iso3: "REU", code: 262 },
  { name: "Ruanda", iso2: "RW", iso3: "RWA", code: 250 },
  { name: "Rumanía", iso2: "RO", iso3: "ROU", code: 40 },
  { name: "Rusia", iso2: "RU", iso3: "RUS", code: 7 },
  { name: "Sahara Occidental", iso2: "EH", iso3: "ESH", code: 212 },
  { name: "Samoa", iso2: "WS", iso3: "WSM", code: 685 },
  { name: "Samoa Americana", iso2: "AS", iso3: "ASM", code: 1684 },
  { name: "San Bartolomé", iso2: "BL", iso3: "BLM", code: 590 },
  { name: "San Cristóbal y Nieves", iso2: "KN", iso3: "KNA", code: 1869 },
  { name: "San Marino", iso2: "SM", iso3: "SMR", code: 378 },
  { name: "San Martín (Francia)", iso2: "MF", iso3: "MAF", code: 1599 },
  { name: "San Pedro y Miquelón", iso2: "PM", iso3: "SPM", code: 508 },
  { name: "San Vicente y las Granadinas", iso2: "VC", iso3: "VCT", code: 1784 },
  { name: "Santa Elena", iso2: "SH", iso3: "SHN", code: 290 },
  { name: "Santa Lucía", iso2: "LC", iso3: "LCA", code: 1758 },
  { name: "Santo Tomé y Príncipe", iso2: "ST", iso3: "STP", code: 239 },
  { name: "Senegal", iso2: "SN", iso3: "SEN", code: 221 },
  { name: "Serbia", iso2: "RS", iso3: "SRB", code: 381 },
  { name: "Seychelles", iso2: "SC", iso3: "SYC", code: 248 },
  { name: "Sierra Leona", iso2: "SL", iso3: "SLE", code: 232 },
  { name: "Singapur", iso2: "SG", iso3: "SGP", code: 65 },
  { name: "Sint Maarten", iso2: "SX", iso3: "SMX", code: 1721 },
  { name: "Siria", iso2: "SY", iso3: "SYR", code: 963 },
  { name: "Somalia", iso2: "SO", iso3: "SOM", code: 252 },
  { name: "Sri lanka", iso2: "LK", iso3: "LKA", code: 94 },
  { name: "Sudáfrica", iso2: "ZA", iso3: "ZAF", code: 27 },
  { name: "Sudán", iso2: "SD", iso3: "SDN", code: 249 },
  { name: "Suecia", iso2: "SE", iso3: "SWE", code: 46 },
  { name: "Suiza", iso2: "CH", iso3: "CHE", code: 41 },
  { name: "Surinám", iso2: "SR", iso3: "SUR", code: 597 },
  { name: "Svalbard y Jan Mayen", iso2: "SJ", iso3: "SJM", code: 47 },
  { name: "Swazilandia", iso2: "SZ", iso3: "SWZ", code: 268 },
  { name: "Tayikistán", iso2: "TJ", iso3: "TJK", code: 992 },
  { name: "Tailandia", iso2: "TH", iso3: "THA", code: 66 },
  { name: "Taiwán", iso2: "TW", iso3: "TWN", code: 886 },
  { name: "Tanzania", iso2: "TZ", iso3: "TZA", code: 255 },
  { name: "Territorio Británico del Océano Índico", iso2: "IO", iso3: "IOT", code: 246 },
  { name: "Timor Oriental", iso2: "TL", iso3: "TLS", code: 670 },
  { name: "Togo", iso2: "TG", iso3: "TGO", code: 228 },
  { name: "Tokelau", iso2: "TK", iso3: "TKL", code: 690 },
  { name: "Tonga", iso2: "TO", iso3: "TON", code: 676 },
  { name: "Trinidad y Tobago", iso2: "TT", iso3: "TTO", code: 1868 },
  { name: "Tunez", iso2: "TN", iso3: "TUN", code: 216 },
  { name: "Turkmenistán", iso2: "TM", iso3: "TKM", code: 993 },
  { name: "Turquía", iso2: "TR", iso3: "TUR", code: 90 },
  { name: "Tuvalu", iso2: "TV", iso3: "TUV", code: 688 },
  { name: "Ucrania", iso2: "UA", iso3: "UKR", code: 380 },
  { name: "Uganda", iso2: "UG", iso3: "UGA", code: 256 },
  { name: "Uruguay", iso2: "UY", iso3: "URY", code: 598 },
  { name: "Uzbekistán", iso2: "UZ", iso3: "UZB", code: 998 },
  { name: "Vanuatu", iso2: "VU", iso3: "VUT", code: 678 },
  { name: "Venezuela", iso2: "VE", iso3: "VEN", code: 58 },
  { name: "Vietnam", iso2: "VN", iso3: "VNM", code: 84 },
  { name: "Wallis y Futuna", iso2: "WF", iso3: "WLF", code: 681 },
  { name: "Yemen", iso2: "YE", iso3: "YEM", code: 967 },
  { name: "Yibuti", iso2: "DJ", iso3: "DJI", code: 253 },
  { name: "Zambia", iso2: "ZM", iso3: "ZMB", code: 260 },
  { name: "Zimbabue", iso2: "ZW", iso3: "ZWE", code: 263 },
];

export const REQUEST_STATUS = {
  "PENDING": {
    "color": "#ffc107"
  },
  "ACCEPTED": {
    "color": "#28a745"
  },
  "DENIED": {
    "color": "#dc3545"
  }
}

export const SOCIAL_NETWORKS = ["GitHub", "Twitter", "Facebook", "Instagram", "LinkedIn", "Pinterest"];
