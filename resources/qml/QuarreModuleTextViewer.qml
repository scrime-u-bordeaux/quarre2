import QtQuick 2.0
import Ossia 1.0 as Ossia

Rectangle
{
    property int cursor: 0
    property var ai_texts: [
    "Persiste, perce, aisselle \n magnétique, embryon clair, \n dans le feu desséché, vers le \n haut.",
    "Perfore, plonge, instance du \n dépli, ébauche du fractal, \n sombre veine sous la glace, \n vers le bas.",

    "Quand est perdu le meilleur \n du noyau, ce symétrique \n éblouissement, cet endogène \n vital retourné par l'obscur, \n subitement-débourreviser fait loi.",
    "Est-il d'autres choix ? \n Franchir trois dimensions \n d'un seul coup de ciseaux ? \n Tant contient de fini la crosse \n d'une fougère",
    "Resiter même aux graisses de \n l'humus. Tenir encore un peu \n à la clarté. Jouer l'envergure. \n Agripper les failles, le roc.",
    "Vient le consentement à \n l'élan, la chute dans l'opacité \n sans odeur, l'euphorie \n silencieuse du foret. Est-il un \n autre centre ?",

    "Cendres. Dans l'urne. Dernier \n arbre. Toutes ses faines. \n Eteintes.",
    "Neige. Sur le sol nu. La \n baguette. Saule. Trace deux \n lignes. Coupées. A l'angle \n droit.",
    "Pluie. Le style. Cyprès. \n Prélève. Un nouveau signe. \n Façonne. Un cinquième \n élément. Bois.",
    "Pollen. Petit tas. Dans un bol. \n L'essaim migre. Aux aiguilles. \n Cèdre.",
    "Grêle. L'origine. Un \n pommier. Ses baies. Vulves. \n Ses pépins. Verges.",
    "Poussière. Un poteau. Dressé. \n Pour le savoir. Gorge sèche. \n Chargé de figues. A \n l'équilibre.",
    "Copeaux. A l'intérieur. \n Châtaignier. D'autres sons. \n Erotisent. Un passage",
    "Murmures. Humides. Dans le \n méandre. Noyer. Chaque \n esprit. Son rituel. Son Icario.",
    "Flammèches. L'idée de miroir. \n D'axe. Dessouchée. Orme \n défunt. Jonchée asymétrique.",
    "Flocons, Lente patience. Des \n forges. Enfante au pied du \n pin. L'hypothèse. Le retour.",
    "Rythmes. Le grand oeuvre. \n Pariétal. N'a pas suscité. De \n chêne. Mais. Andouillers. \n Ecarts de doigts.",
    "Rires. Etreinte blanche. \n Bouleau. Surgit. Par \n l'enchevêtrement. Des \n tunnels. Sucée. La sève \n désigne. L'accès.",
    "Drains. Comme à quai. Trois \n sources. L'une d'éternité. \n Attendent. L'appel satellite. \n L'éternuement cosmique. Du \n frêne.",
    "Poulies. Combien d'étages. De \n métamorphoses. Double \ntremble. Et. Dans quel sens.",
    "Clous. A l'endroit. De la croix. \n En tilleul. Loques nouées. \n Guérir. De quoi.",
    "Chevilles. D'avoir vu. En \n l'érable. Poumons. Epaules. \n Ligaments. Âme. Sang. \n Désespoir de singe.",

    "- Le feu te ressemble dans ses \n échelles. La brindille puis le \n rameau, puis la souche puis le \n tronc. Ainsi, tu nous ouvres \n l'hiver.",
    "- Le feu te ressemble \n davantage. Tu es si mobile ! \n Le délié de ta main conserve \n mon image. Comme le liber \n ton penser.",
    "- Mais c'est encore ma \n bouche qui te connait le \n mieux : bourgeons, pistils, \n résines, raves, pulpe, \n amandes, pois, cosses...",
    "- Et macéré, et rappé, et \n fermenté, ou grillé, ou séché, \n ou fumigé, et compoté, \n distillé, vaporisé. Tu m'aimais \n cru aussi",
    "- Tu sais maintenant cueillir \n la foudre, ses pétales de silex. \n Ami des braises, allié de la \n fumée, tu me tords et \n m'endurcis.",
    "- Jadis, tu m'abritais dans tes \n structures. Un pouce m'est \n poussé. Il maintient la cognée \n à présent et me fabrique un \n toit.",
    "- Et je m'incline aux \n encyclopédies, quand tu \n élagues et attaches, quand tu \n greffes et boutures, lourd de \n fruits.",
    "- Mais tu nourris, tu soignes \n encore. Et tu tendras, et tu \n parfumeras la peau de \n mon dernier kayak.",

    "Substance dans un corps. \n Corps animé, mais insensible, \n donc arbor, non animal, non \n rationnel et non humain",
    "Or c'est de son propre bois, \n celui qu'on ramasse, celui \n qu'on fait tomber, qu'on finit \n par brûler",
    "Ce serait saine raison que \n d'araser la table. Et juste \n police, à la lumière, de faire \n donner les essarteurs.",
    "Donc ici qu'un rectangle aux \n dalles de porphyre, s'établisse \n à la place.",
    "Ce que la main dessine, gale \n du chêne, le vent peut \n l'effacer.",
    "Qu'était besoin de ce \n symbole ? Déjà pourri, \n sonnant creux. Ce sont \n l'insensible et le vide qui \n accouchent de toute science.",
    "C'est pourtant dans son \n ombre que se délièrent les \n langues.",
    "Une justice sous son chapeau, \n piqueté d'astres, fut sur le \n point d'éclore.",
    "Alors, ce serait adroite \n botanique, de ne garder que \n celui-là seul, conquérant des \n lumières, qui surplombe et \n impose ?",
    "Donc ici, derrière les stalles, \n doit s'ériger l'échafaudage \n d'allure arborescente. Modèle \n Scarrone.",
    "La forme inscrite dans l'akène \n trace un chemin de logique \n pour la mémoire. Il est vain \n de chercher à le dissoudre.",
    "Et combien peut porter de \n mensonges, telle géométrie de \n vertu ? Combien de vérité ? \n Combien de provisoire.",
    "Ainsi toute la parentèle du \n Dieu, momentanément \n unique, circule en ascenseur \n dans le tronc d'un platane.",
    "Ainsi, pourvu du fil exact, et \n suivant les termites, il n'y a \n qu'un seul chemin du \n monarque au soleil",
    "Et comme il est étrange que \n par cet éventail soit rétabli le \n temps, ses années - bobinées \n en milliards.",
    "Ou d'un battement d'aile, \n surplomber le dédale depuis \n Cystodinium, algue initiale, \n jusqu'au vieux houx, Lomatia, \n de Tasmanie.",
    "Mais, retour à l'antithèse \n justifiée par la fourche, le \n métier de douter autorise \n l'impasse, le refus de l'inverse, \n du double.",
    "L'empreinte est si ancienne. \n Renverse une pyramide. Son \n sable coule, tranquille, dans le \n sommet d'une autre. Le sang \n autour.",
    "La vraie, l'unique valeur est \n marchande, fredonne Orphée \n montant vers la surface.",
    "N'est-ce pas un cycle fossile \n qui s'achève, quand le serpent \n de naphte, Standard Oil, \n surgit des profondeurs ?",
    "Les madriers étayent \n les mines de charbon et de fer. \n L'acier tient le béton, les \n hautes fondations, les caves.",
    "L'engrenage est causal, \n essieux, pignons, cames, pour \n le derviche trépan, ses fraises, \n son vertige centrifuge à tête \n de cheval.",
    "Repense aux pyramides. \n Brunes ou rouges, hier. \n Transparentes aujourd'hui. \n Toutes ces nuques sous leurs \n bases. Qui porte le chapeau ?",
    "Ce n'est pas par les pieds \n qu'on pendit - génocides - \n tant d'hommes ébène, étoiles. \n Sans but de révélation qu'on \n les prit en photo.",
    "Vous n'êtes pas sans savoir \n que ce piéton paisible, \n rongeant une racine vers le \n niveau - 5, a pour nom Ego \n monstre.",
    "Vous ne sauriez ignorer que \n sa soeur jumelle, relisant \n Anabase, étudie la \n linguistique dans un local non \n loin.",
    "Dans la fraîcheur constante - \n - 18 ° Celsius - du centre \n commercial - W.T.C. - on ne \n peut être certain de monter \n ou descendre.",
    "Le seul fait concret étant que, \n sur les parois circulaires de \n l'immense puits de jour, \n l'escalator progresse.",
    "Il a été rapporté qu'en surface, \n la température moyenne \n serait montée d'un degré en \n un siècle.",
    "Il a été reporté qu'en surface \n 34% des espèces conifères \n non génétiquement modifiées \n seraient menacées \n d'extinction.",
    "D'ailleurs, depuis l'abolition \n des griots, jamais la \n généalogie ne fut si populaire.",
    "Au fond du puits on gonfle, \n chaque semaine, un objet \n neuf : femme Durex, séquoia \n Sempervirens, flèche Saint- \n Michel, fusée Ariane",

    "boson-de-higgs-impair-\n et-manque.",
    "foule-déjà-dès-l-orbe-\n clos-des-cellules-dès-le-\n polype-individu.",
    "multiple-ensuite-\n aux-massifs-mobiles-\n émigrations-immigrations-\n longues-systoles-\n paléoclimatiques.",
    "apical-message-\n état-gazeux-de-l-alerte-\n canope-encapsulée-\n propagation-\n du-programme-antidote.",
    "attouchements-\n catacombes-tremblés-\n de-flagelles-passe-moi-le-\n sel-nutriment-le-sel-\n anxiolytique.",
    "laisse-le-vent-révéler-\n en-rebrousse-le-continuel-\n frelon-le-parle-parle-\n ajouré-de-clairières.",
    "se-taire-la-mort-\n la-cendre-patience-\n pyrophile-du-gène-viral-\n inséminé-aux-caches-\n, latentes-du-signal",
    "émissaires-naïfs-plumes-\n pelages-cris-crottes-\n hasards-appâts-charnus-\n roses-dévorent-hackent-\n forniquent-tombent.",
    "et-lui-méta-baron-\n de-liane-en-liane-\n se-cavalant-dans-la-sauve.",
    "ombres-d-ombres-peuple-\n sans-trace-aucune-ni-de-\n passage-ni-de-halte-\n où-seul-l-ancêtre-se-tient-\n visible-dans-l-effacé.",
    "courant-gibier-à-travers-\n sentes-terriers-\n rus-s'impriment-\n les-circuits-d-esquives-\n cartes-mémoires-chants- de-l-embuscade.",
    "à-la-règle-au-marteau-\n parcelles-méridiens-\n points-et-chaussées-\n une-route-saigne-vers-l-\n océan-monde.",
    "ici-et-là-encore-l'homme-\n dé-su-se-fait-synapse-\n bulbe-simple-relais-\n inspire-expire-dans-la-\n stridulation-forestière.",
    "bataille-navale-échiquier-\n heuristique-une-caravelle-\n chargée-de-caisses-\n lexiques-grammaires-\n précis-de-traduction-\n sombre.",
    "l-industrie-papetière-\n et-la-cote-dewey-\n décollent-boeing-\n 747-dreamlifter-bientôt-\n pulvérisées-\n par-transpondeur-astra.",
    "déroute-zodiacale-\n explosion-des-neuf-\n sphères-célestes-newton-\n est-un-batteur-free-jazz-\n les-lois-sont-toujours-\n provisoires.",
    "joue-au-billard-avec-les-\n sephiroth-queue-\n de-drageon-saïgon-\n niamey-segment-de-soif-\n inaltéré.",
    "sectionne-le-coeur-enlève-\n la-pompe-unique-laisse-\n coopérer-les-myriades-\n chloroplastiques-\n fonctionner-le-timide.",
    "il-chante-le-désastreux-\n pylône-son-hymne-\n de-nudite-court-de-frère-\n en-frère-sur-le-croisé-\n frôlé-des-lignes-contours-\n de-nuage.",
    "C65'5 : ou-antenne-asexuée-\n dans-le-tamis-des-ondes-\n électromagnétiques-\n grésille-l'incessant-codex-\n décodex-\n de-l-hypermarché-\n conversation.",
    "effervescence-maison-\n de-feuilles-ce-qu-héberge-\n d-infini-le-fini-\n d-un-cerveau-escaliers-\n déduits-passages.",
    "que-calculer-babel-\n un-livre-écrit-non-écrit-\n passé-à-venir-soit-devenu-\n plus-simple-que-de-\n s-en-souvenir-crispation-\n aux-pages.",
    "tsien-kapla-légo-cube-\n brique-agence-\n les-jambes-divinatoires-\n du-yi-king-vers-le-progrès-\n graduel-de-la-figure-53.",
    "tien-le-drupe-\n hémorragique-de-ton-\n dire-couché-de-ton-\n rêve-branche-branche-\n aux-adventices-ça-moi-\n surmoi-hors-moi-\n indéhiscentes.",
    "C65'10 : quel-opaque-nemeton-\n ventre-tabou-horreur-\n fermente-l-esprit-\n transcendental-érigé-\n en-phallus-quand-\n aux-lisières-partout-\n caresses.",
    "ce-sont-des-milliards-\n d-yeux-stroboscope-\n sans-paupières-\n sans-larmes-arc-irisant-\n leur-flux-via-des-missiles-\n sol-air.",
    "la-vitesse-est-milieu-\n la-profusion-lèvre-laquée-\n au-téflon-un-pli-\n d-origami-relève-\n l-horizontal-d-une-\n illusion-puissante",
    "Ici-puis-là-le-fou-cousin-\n le-carnaval-pérenne-\n détricotent-à-grandes-\n mailles-le-costume-\n président-et-sa-cravate-\n hermès.",
    "rubik-s-oblique-à-tant-\n de-faces-plan-de-la-ville-\n multistrates-vous-êtes-\n ici-et-n'y-êtes-\n plus-échangeurs-sous-le-\n skyline.",
    "par-quel-jeu-de-miroirs-\n cet-oeil-hubble-exorbité-\n vers-l'originel-chaosmos-\n entre-cuisses-se-retourne-\n cauchemar-vers-toi.",
    "sans-même-l-s-d-sentir-les-\n points-d-aiguilles-trouer-\n le-derme-de-l'espèce-\n rejoindre-le-solidaire-\n transgenre-de-l'atome.",
    "faute-de-lime-vrille-laser-\n femtoseconde-l-a-capital-\n l-a-captif-en-gelée-\n incube-l-a-caudal-\n l-a-décapité-pour-fendre-\n sa-vésicule",
    "acentrique-invention-\n exponentiel-outil-l-utopie-\n du-possible-utopique-\n l-anarchique-bombe-\n raméale-fragmentée-\n subitement-débourre.",
    "loi-de-moore-loi-de-\n moore-vibrionnant-\n axiome-accroît-le-dense-\n algorithmique-dans-ton-\n rein-de-pulsar",
    "comme-nos-deux-noyaux-\n matière-antimatière-\n tenteraient-de-blinder-\n leur-orbite-envers-toute-\n embolie-fusionelle.",
    "sublime-plutonium-\n 239-le-mur-plutôt-que-de-\n l-abattre-que-chaque-\n titan-s-étiole-depuis-\n sa-geôle-ouverte-en-des-\n nodosités-neuves.",
    "enucléer-va-pair-à-pair-\n avec-cécité-tes-vieux-\n regards-upgradés-mille-\n prunelles-écrans-payées-\n premium-plug-in-\n infosynthèse-offert.",
    "combien-coûte-ce-mot-\n combien-coûte-cette-\n phrase-combien-rapporte-\n t-elle-combien-\n de-chiffres-sur-le-chèque-\n à-valoir-tel-alphabet.",
    "solide-revenu-au-liquide-\n lettre-restituée-au-chiffre-\n ouest-et-droite-passés-\n est-et-gauche-terme-\n intangible-de-la-boucle-\n silice.",
    "accélérant-la-grille-\n du-tissage-les-effets-\n du-chalut-se-presse-\n l-inédit-empyreume-\n d-un-vin-possiblement-\n fraternel.",
    "ou-carcéral-panopticon-\n autosécrète-ses-propres-\n fuites-ses-revers-\n clandestins-ses-guérillas-\n ses-fêtes.",
    "ou-gigapole-galactique-\n déterre-des-campagnes-\n dans-le-chevron-étroit-\n des-gaz-d-échappement.",
    "cet-or-benjoin-cet-or-\n opoponax-cet-or-digital-\n camphre-argenté-\n s-extrait-avec-des-mains-\n manettes-des-cases-\n non-décochées.",
    "chaque-amélioration-\n est-utile-tâtonne-encore-\n son-protocole-\n décroissant-en-forme-\n de-bonsaï.",
    "tout-le-monde-\n peut-participer-est-l-\n état-le-plus-peuplé-de-la-\n planète.",
    "klaus-katrina-sans-risque-\n de-calque-copie-colle-\n ce-même-mème-ouragan-\n incendie-coupe-claire-\n ad-nauseam.",
    "l-innocente-cage-à-\n poules-de-l-enfance-\n l'entrecroix-de-ses-\n barreaux-son-métal-froid-\n l-appel-au-meurtre-\n circulant-dedans.",
    "le-schéma-du-roncier-\n marcotte-les-plus-jeunes-\n cortex-épines-du-devoir-\n massivement-multijoueur-\n baisers-de-reine-\n aux-facebookers.",
    "fin-des-cépées-trognes-\n porte-greffes-\n des-matrices-géantes-\n distribuent-désormais-\n les-paniers-de-savoir-\n le-vim-assange-est-sous-\n marin.",
    "juste-un-bougé-de-forme-\n un-autre-branchement-\n tout-deviendrait-possible-\n libre-généreux-solidaire.",
    "est-ce-géopoétique-\n du-code-cette-errance-\n chronocide-dans-le-\n q-i-global.",
    "et-masque-à-jets-\n de-samarres-l-appétit-\n coïtal-des-dendrites-\n pour-l'octet.",
    "devenir-végétal-devenir-\n machine-l'hésitation-\n neuromantique-\n transhume-dans-un-câble-\n ethernet.",
    "ton-absolue-confiance-\n aux-convois-électriques-\n aux-convois-de-néant-\n premier-symptôme-clone-\n de-l-oubli.",
    "ni-nématodes-\n ni-singularité-ni-entropie-\n ne-pourraient-\n te-convaincre-\n de-reprendre-ton-corps.",
    "le-sidéral-virtuel-te-plaît-\n tu-es-bien.",
    "quelle-souplesse-\n d-anguille-au-delà-\n des-quanta-silhouette-\n de-buto.",
    "enfin-désaliéné-de-toute-\n accumulation-de-toute-\n obsolescence.",
    "d-où-vient-cette-\n nostalgie-tablettes-\n d-argile-distinction-\n compté-conté.",
    "facteur-humain-poste-\n tes-deux-dernières-lettres-\n x-y-volume-du-poème-\n non-chiffrées.",
    "abdication-du-schème-\n arborescent-ferveur-\n au-complexe.",
    "disparition-du-texte-\n au-profit-de-la-donnée.",
    "C6P29",
    "C6P30",
    "C6P31",
    "C6P32",
    "C6P33",
    "erreur-fatale-hors-de-mémoire."
];

    Text //------------------------------------------------ TEXT_VIEWER
    {
        id:         text_viewer
        y:          parent.height/2
        text:       ai_texts[0]
        color:      "#ffffff"
        height:     parent.height/2
        width:      parent.width * 0.9
        wrapMode:   Text.WordWrap

        horizontalAlignment:        Text.AlignHCenter
        verticalAlignment:          Text.AlignVCenter
        anchors.fill:               parent
        font.pointSize:             24 * root.fontRatio
        font.family:                font_lato_light.name
        antialiasing:               true
    }

    Ossia.Callback
    {
        id:         text_callback
        device:     ossia_net.client
        node:       "/user/" + ossia_net.slot + "/text-viewer/cursor/set"
        onValueChanged:
        {
            cursor = value;
            text_viewer.text = ai_texts[value];
        }
    }

    Ossia.Binding
    {
        device:     ossia_net.client
        node:       "/user/" + ossia_net.slot + "/text-viewer/cursor/get"
        on:         cursor
    }

    MouseArea
    {
        id: mouse_area
        anchors.fill: parent
        onClicked:
        {
            if ( mouseX >= width*0.7 )
            {
                cursor++;
                if ( cursor > ai_texts.length-1 )
                    cursor = 0;
            }

            else if ( mouseX <= width*0.3 )
            {
                cursor--;
                if ( cursor < 0 )
                    cursor = ai_texts.length-1;
            }

            text_viewer.text = ai_texts[cursor];
        }
    }
}
