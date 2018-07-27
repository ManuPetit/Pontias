-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 10 Juin 2010 à 15:29
-- Version du serveur: 5.1.41
-- Version de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pontias`
--

-- --------------------------------------------------------

--
-- Structure de la table `articledetails`
--

CREATE TABLE IF NOT EXISTS `articledetails` (
  `articleDetailsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(10) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frText` varchar(6000) NOT NULL,
  `gbText` varchar(6000) NOT NULL,
  PRIMARY KEY (`articleDetailsID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Contenu de la table `articledetails`
--

INSERT INTO `articledetails` (`articleDetailsID`, `articleID`, `position`, `frText`, `gbText`) VALUES
(1, 1, 1, 'Revenons six cents ans en arri&egrave;re, vivons deux jours au temps de nos anc&ecirc;tres : <br /><br /><table width="528px" border="0" cellspacing="0" cellpadding="5" class="photo"><tr><td class="d1">10h00</td><td class="d3">Ouverture au public</td></tr><tr><td class="d1">10h15</td><td class="d3">Collecte des imp&ocirc;ts par les chevaliers du Roy Ren&eacute;</td></tr><tr><td class="d1">11h00</td><td class="d3">D&eacute;part du d&eacute;fil&eacute; de pr&eacute;sentation des troupes (d&eacute;part du campement des chevaliers du Roy Ren&eacute;).</td></tr><tr><td class="d1">12h00</td><td class="d3">Ripaille &agrave; la taverne &quot;Noïomagus&quot;. Vente de tickets sur place</td></tr><tr><td class="d1">17h00</td><td class="d3">D&eacute;part du d&eacute;fil&eacute; (d&eacute;part du campement des chevaliers du Roy Ren&eacute;).</td></tr><tr><td class="d1">19h00</td><td class="d3">Ripaille &agrave; la taverne &quot;Noïomagus&quot;. Vente de tickets sur place</td></tr><tr><td class="d1">21h00</td><td class="d3">Place du pont Roman, d&eacute;but de la retraite au flambeau, o&ugrave; sera cont&eacute;e la l&eacute;gende du Pontias</td></tr><tr><td class="d1">00h00</td><td class="d3">fin des animations</td></tr></table>', 'We invite you to go back 600 years in the past, and to live as our ancestors for two days: <br /><br /><table width="528px" border="0" cellspacing="0" cellpadding="5" class="photo"><tr><td class="d1">10h00</td><td class="d3">Opening to the public</td></tr><tr><td class="d1">10h15</td><td class="d3">Collect of the taxes by King Ren&eacute;''s knights</td></tr><tr><td class="d1">11h00</td><td class="d3">Begining of the troops parade (starting at the camp of the knights of King Ren&eacute;).</td></tr><tr><td class="d1">12h00</td><td class="d3">Eating at the &quot;Noïomagus&quot; Inn. Ticket for sale at the Inn</td></tr><tr><td class="d1">17h00</td><td class="d3">Begining of the parade (starting at the camp of the knights of King Ren&eacute;).</td></tr><tr><td class="d1">19h00</td><td class="d3">Eating at the &quot;Noïomagus&quot; Inn. Ticket for sale at the Inn</td></tr><tr><td class="d1">21h00</td><td class="d3">Roman Bridge Square, start of the Torch procession, where the Legend of the Pontias will be told</td></tr><tr><td class="d1">00h00</td><td class="d3">End of the animations</td></tr></table>'),
(2, 1, 3, 'Toute la journ&eacute;e, march&eacute; m&eacute;di&eacute;val, animation et d&eacute;ambulation par les troupes (Rues, ruelles et tavernes).<br /><ul><li>Chevaliers du  Roy Ren&eacute;</li><li>Helena et les  troubadours</li> <li>La sorci&egrave;re Mary  Morgan Witch</li><li>Les troubadours des Baronnies</li><li>Les danseurs de la Mochatte</li><li>Le tr&eacute;buchet de messire Jacquy de la Mochatte</li></ul>', 'All day long, medieval market, animation and procession by the troups (Streets and Inns).<br /><ul><li>Knights of the King Ren&eacute;</li><li>Helena and her troubadours</li> <li> Mary  Morgan Witch</li><li>The troubadours from the Baronnies</li><li>The dancers from the Mochatte</li><li>The trebuchet of Sir Jacquy de la Mochatte</li></ul>'),
(3, 1, 4, 'Des jeux de rue m&eacute;di&eacute;vaux, pour petits et grands seront organis&eacute;s.', 'Also, medieval street games will be organised for children and adults.'),
(4, 2, 1, 'Revenons six cents ans en arri&egrave;re, vivons deux jours au temps de nos anc&ecirc;tres : <br /><br /><table width="528px" border="0" cellspacing="0" cellpadding="5" class="photo"><tr><td class="d1">10h00</td><td class="d3">Ouverture au public</td></tr><tr><td class="d1">10h15</td><td class="d3">Collecte des imp&ocirc;ts par les chevaliers du Roy Ren&eacute;</td></tr><tr><td class="d1">11h00</td><td class="d3">Reconstitution de l’inauguration du pont Roman sur sa place et hommage aux travailleurs besogneux</td></tr><tr><td class="d1">12h00</td><td class="d3">Ripaille &agrave; la taverne &quot;Noïomagus&quot;. Vente de tickets sur place</td></tr><tr><td class="d1">13h30</td><td class="d3">Reprise des animations</td></tr><tr><td class="d1">18h00</td><td class="d3">D&eacute;fil&eacute; final</td></tr><tr><td class="d1">18h30</td><td class="d3">Remise de la r&eacute;compense au meilleur exposant</td></tr><tr><td class="d1">19h00</td><td class="d3">Fin de la f&ecirc;te</td></tr></table>', 'We invite you to go back 600 years in the past, and to live as our ancestors for two days: <br /><br /><table width="528px" border="0" cellspacing="0" cellpadding="5" class="photo"><tr><td class="d1">10h00</td><td class="d3">Opening to the public</td></tr><tr><td class="d1">10h15</td><td class="d3">Collect of the taxes by King Ren&eacute;''s knights</td></tr><tr><td class="d1">11h00</td><td class="d3">Opening of the Romanesque bridge and hommage to the hard working men</td></tr><tr><td class="d1">12h00</td><td class="d3">Eating at the &quot;Noïomagus&quot; Inn. Ticket for sale at the Inn</td></tr><tr><td class="d1">13h30</td><td class="d3">Start of the animations</td></tr><tr><td class="d1">18h00</td><td class="d3">Final procession</td></tr><tr><td class="d1">18h30</td><td class="d3">Result of the best merchant''stand competition</td></tr><tr><td class="d1">19h00</td><td class="d3">End of the M&eacute;di&eacute;vales</td></tr></table>'),
(5, 2, 3, 'Toute la journ&eacute;e, march&eacute; m&eacute;di&eacute;val, animation et d&eacute;ambulation par les troupes (Rues, ruelles et tavernes).<br /><ul><li>Chevaliers du  Roy Ren&eacute;</li><li>Helena et les  troubadours</li> <li>La sorci&egrave;re Mary  Morgan Witch</li><li>Les troubadours des Baronnies</li><li>Les danseurs de la Mochatte</li><li>Le tr&eacute;buchet de messire Jacquy de la Mochatte</li></ul>', 'All day long, medieval market, animation and procession by the troups (Streets and Inns).<br /><ul><li>Knights of the King Ren&eacute;</li><li>Helena and her troubadours</li> <li> Mary  Morgan Witch</li><li>The troubadours from the Baronnies</li><li>The dancers from the Mochatte</li><li>The trebuchet of Sir Jacquy de la Mochatte</li></ul>'),
(6, 2, 4, 'Des  jeux de rue m&eacute;di&eacute;vaux, pour petits et grands seront organis&eacute;s.', 'Also, medieval street games will be organised for children and adults.'),
(7, 3, 1, 'Cette ann&eacute;e, les M&eacute;di&eacute;vales du Pontias auront lieu du samedi 18 au dimanche 19 septembre 2010.', 'For this year, the M&eacute;di&eacute;vales du Pontias will be held between saturday 18 and sunday 20 September 2010.'),
(8, 3, 3, 'Le programme des M&eacute;di&eacute;vales du Pontias 2010 est en cours de finalisation. Sachez n&eacute;anmoins, qu''un <b>banquet m&eacute;di&eacute;val</b> sera organis&eacute; le samedi 18 en soir&eacute;e, et sera suivi par un bal.', 'This year''s events have not been finalised as yet. But we can tell you, that  we will be organising a <b>medieval banquet</b> on the Saturday evening, followed by a dancing ball.'),
(9, 4, 1, 'Pour c&eacute;l&eacute;brer les 600 ans du pont Roman de la ville, de nombreuses manifestations ont eu lieu dans la ville de Nyons durant tout l''ann&eacute;e 2009.', 'To celebrate the 600th anniversary of the Romanesque Bridge, many events were held up in Nyons during the year 2009.'),
(10, 4, 3, 'L''association Vie et Travail dans le Vieux Nyons, souhaitant elle aussi prendre part à ces manifestations, décida de vous ramener 600 ans en arrière, en vous offrant un weekend en l''an de Grâce 1409.', 'The association Vie et Travail dans le Vieux Nyons, whishing to take part in these events, decided to take you back 600 years ago,  offering you a weekend in the year of Grace 1409.'),
(11, 4, 4, 'Avec la bonne volont&eacute; de tous les membres de l''association, et avec l''aide de nombreux b&eacute;n&eacute;voles, le tour de force fut relev&eacute;, et le samedi 19 et le dimanche 20 septembre 2009, les premi&egrave;res M&eacute;di&eacute;vales du Pontias virent le jour.', 'With the good will of all the members of the association, and with the help of many volunteers, the event became reality, and on the 19 and 20 September 2009, the first M&eacute;di&eacute;vales du Pontias were created.'),
(12, 4, 6, 'Suite au succès populaire de cette première édition des Médiévales du Pontias, l''association a décidé d''en faire une manifestation annuelle, et travaille d''arrache pied, à la préparation des prochaines médiévales.', 'After the success of the first Médiévales du Pontias, the association has decided to make the festival, a yearly event. The association is working hard to prepare the next Médiévales du Pontias.'),
(13, 5, 1, 'L''association "<a href="http://www.vieuxnyons.com" target="_blank" title="Lien ver le site de l''association Vie et Travail dans le vieux Nyons">Vie et Travail dans le Vieux Nyons</a>" est née d''une volonté commune des commerçants et des riverains de la Rue des Déportés qui ne pouvaient accepter de la voir se déserter après avoir été la rue principale durant de nombreuses années. Cette désertification fut amorcée lors de l''ouverture de la déviation.', 'The association "<a href="http://www.vieuxnyons.com" target="_blank" title="Link to the site of the association Vie et Travail dans le vieux Nyons">Vie et Travail dans le Vieux Nyons</a>" was born from a common will of the tradespeople and the citizens from the Rue des Déportés who could not accept seeing their street deserted after being the main street in the town for decades. This desertion started with the opening of the town''s by-pass.'),
(15, 5, 2, 'En 1984, Bruno Parent était le 1er Président dont l''objectif était de rendre à ce quartier une âme qu''elle perdait peu à peu et ce dans l''indifférence la plus totale.', 'In 1984, Bruno Parent was elected as the first chairman of the association. His goal was to give back the soul of this area of Nyons, which was disappearing slowly, without being noticed.'),
(16, 5, 4, 'En 1990, Danièle Silvestre a pris le relais dans un esprit de continuité.', 'In 1990, Danièle Silvestre took charge of the association and continued with actions in the same spirit as before.'),
(17, 5, 5, 'L''association est à l''origine de plusieurs rendez-vous, tel le marché aux fleurs, ou le vide grenier, et participe également à la décoration de la rue pour les fêtes de Noël. Et bien sûr, depuis 2009, l''association organise les Médiévales du Pontias...', 'The association created many events such as the flower market, or the brocante, and takes part in the decoration and animation of the street at Christmas. And of course, since 2009, the association organises the Médiévales du Pontias...'),
(18, 6, 1, 'Au coeur de la Drôme Provençale, Nyons posséde l''un des climats les plus secs de France. Protégée du Mistral par les collines environnantes, la ville ne connait que le <a href="articles.php?art=7" title="Découvrez la légende du Pontias">Pontias</a>, un petit vent matinal.', 'In the heart of Provençale Drôme, Nyons benefits from one of the driest climates in France. Protected from the Mistral by the surrounding hills, the town only knows the <a href="articles.php?art=7" title="Discover the legend of the Pontias">Pontias</a>, a local morning wind.'),
(19, 6, 3, 'La ville est célèbre pour ses olives, dont la Tanche (variété de cru local) produit une excellente huile qui possède sa propre Appellation d''Origine contrôlée. La vigne, la lavande et le tilleul sont parmi les autres cultures de la region.', 'The town is famous for its olives, including the Tanche (local variety) which produces an excellent oil benefiting from its own Appellation d''Origine contrôlée. Vines, lavender and lime trees (locally used to make an infusion based on its leaves) are among the other products of the land.'),
(20, 6, 5, 'Chaque jeudi matin, la ville se remplit de senteurs et de couleurs Provençales grâce au marché hebdomadaire . Celui-ci s''étend du coeur de Nyons aux bords de la rivière Eygues, en passant par les rues de la vieille ville. ', 'Every thursday, the town is filled with Provençal scents and colours with its famous weekly market. It expands from the River Eygues to the heart of Nyons, going through the old town.'),
(21, 6, 6, 'Durant la saison estivale, un marché Provençal a lieu le dimanche matin.', 'During the summer season, there is a Provençal market every sunday morning.'),
(22, 6, 8, 'Tout au long de l''année, de nombreuses manifestations et célébrations viennent ponctuer la vie de la ville et de ses habitants. Parmi celles-ci, nous retiendrons l''Alicoque (fête de l''huile nouvelle), le Corso de Pâques, ou bien la semaine de la pétanque...', 'During the year, Nyons offers many festivals and events for everyone. We will mention the Alicoque (New olive oil festival), Easter carnivals, or the Pétanque week...'),
(23, 7, 1, 'Bien qu''il soit le maître des vents, le mistral n''est pas seul à balayer de son souffle les terres de Provence. Ainsi, on raconte que la ville de Nyons souffrait autrefois d''une sécheresse si terrible que ses habitants se rendirent à Arles, afin de prier un certain Césaire de leur venir en aide et de leur apporter un peu de fraîcheur.', 'Although master of the wind, the Mistral is not alone to sweep his blows in the land of Provence. Thus, it is said that the town of Nyons once suffered a drought so terrible that its inhabitants went to Arles, to pray a certain Cesaire for his help and to give them a little freshness.'),
(24, 7, 2, 'Pris de compassion devant la mine désolée des habitants de Nyons, dont les champs ressemblaient à un désert aride, dont les ânes, les chiens et les nouveau-nés mouraient comme des mouches, dont les ruisseaux et la rivière avaient cessé de chanter, dont les puits n''étaient plus que des gouffres sans fond, Césaire, que l''on qualifiait de saint homme depuis qu''il avait accompli quelques prodiges de bonté, décida de prendre les choses en main.  Il s''en fut d''abord constater sur place les dégâts et, pris lui-même de malaise dans la fournaise infernale qu''était devenue la vallée, il s''en fut par les routes et les sentiers à la recherche d''un souffle frais. ', 'Made of compassion for the inhabitants of  Nyons, whose fields looked like a barren desert, with donkeys, dogs and babies dying like flies, with streams and the river ceasing to sing, with wells so empty, Cesaire, whom they styled holy man since he had done some miracles of goodness, decided to take matters in hand. He went to see firsthand the damage and fainted in the infernal furnace that held in the valley. He went by the roads and trails in search of a breath of freshness.'),
(25, 7, 4, 'Ses paroles s''envolèrent sur un tourbillon d''aiguilles de pins dans un fin rayon de soleil. Et il lui sembla lire en elles le nom de cet endroit magique : Citharista. Puis les lettres du mot dansèrent, montant au ciel à travers les brindilles et redescendant en piqué comme une escadrille d''abeilles. Elles valsèrent un moment, avant d''atterrir doucement sur un monticule de sable, où elles s''éparpillèrent, se mélangèrent et s''assemblèrent en un nouveau nom déformé : Ceyreste. Césaire eut à peine le temps de le prononcer, qu''elles s''effacèrent soudain, dans le souffle venu de la mer toute proche.', 'His words flew as a Whirlpool of pine needles in a thin ray of sunshine. And he seemed to read in them the name of this magical place: Citharista. Then the letters of the word danced, ascending to heaven through the twigs and dive back down like a squadron of bees. They swirl a moment, before landing gently on a mound of sand, where they scattered, mingled and assembled into a new name : Ceyreste. Cesaire had barely time to decide, they suddenly vanished in the blast that came from the nearby sea.'),
(26, 7, 5, 'Afin de ne pas les laisser disparaître à tout jamais, le voyageur retira l''un de ses gants et tenta de les y récupérer. Le vent s''engouffra dans l''étui de peau et Césaire, aussitôt, le referma et le lia avec un lacet de cuir.', 'In order not to let them disappear forever, the traveler pulled one of his gloves and tried to retrieve them. The wind blew into the sheath of skin and Cesaire, immediately closed it and tied it with a leather string.'),
(27, 7, 6, 'Lisez la <a href="articles.php?art=8" title="La légende du Pontias (deuxième partie)">deuxième partie</a> de la légende du Pontias...', 'Read the <a href="articles.php?art=8" title="The legende of the Pontias (second part)">second part</a> of the Legend of the Pontias.'),
(28, 8, 1, 'Bien qu''il ait beaucoup de peine à repartir de cet endroit idyllique, il se remit en marche en direction de Nyons. La route était longue et il craignait que la sécheresse persistante n''y eût décimé tous les habitants. Aussi, afin d''y retourner plus vite, tenta-t-il d''arrêter sur la route un charretier qui passait par là, transportant des bottes de foin :<br />- Brave homme, emmène-moi dans ta carriole avant que ne meurent les gens à qui je dois ramener ce gant.<br />- Qu''y a-t-il dans ce gant ? demanda le charretier.<br />- De la graine de vent.<br />- Du vent ? Tu te moques de moi... Puisque c''est comme ça, je ne te prendrai ni sur le banc à côté de moi ni sur mes bottes de foin.<br />Et le bonhomme s''éloigna.', 'Even it was so difficult to leave this idyllic spot, he resumed his march towards Nyons. The road was long and he feared that the continuing drought had decimated all the inhabitants. So, to return more quickly,  he tried to stop on the road a cart driver who was passing by, carrying bales of hay:<br />- Good man, take me in your cart before the people to whom I must bring this glove, die.<br />- What is in that glove? asked the cart driver.<br />- The seeds of wind.<br />- From the wind? Are you kidding me ... Because it''s like that, I''ll take you neither on the bench beside me or on my hay bales.<br />And the man walked away.'),
(29, 8, 2, 'Un peu plus loin, Césaire croisa un cavalier et le pria de l''emmener :<br />- Brave homme, emportez-moi en croupe sur votre cheval avant que ne meurent les gens à qui je dois ramener ce gant.<br />- Et qu''y a-t-il dans ce gant ?<br />- De la graine de vent.<br />- Du vent ? Tu te moques de moi... Ce gant doit contenir des pièces d''or et bien d''autres choses précieuses. Donne-le-moi, si tu veux que je t''emmène.<br />Et, devant le refus de Césaire, le cavalier partit au grand galop. ', 'A little later, Césaire met a gentleman and asked him to take him:<br />- Good man, take me on your horse before the people to whom I must bring this glove, die.<br />- And what is in that glove?<br />- The seeds of wind.<br />- From the wind? Are you kidding me ... This glove should contain gold and other precious things. Give it to me if you want I''ll take you.<br />At the refusal of Cesaire, the rider left at great speed.'),
(30, 8, 3, 'Avant de reprendre sa route, le voyageur ôta le second de ses gants, le remplit de pierres et le mit dans sa poche. Un peu plus loin, il croisa un garçon, monté sur une mule. Et il lui demanda :<br />- Brave homme, peux-tu m''emmener sur ta mule avant que ne meurent les gens à qui je dois rapporter ce gant ?<br />- Et qu''y a-t-il dans ce gant ?<br />- De la graine de vent.<br />Le garçon éclata de rire en brandissant un couteau :<br />- Du vent ? Je ne te crois pas. Ce gant est tout gonflé de ducats. Donne-le-moi !<br />Aussitôt, Césaire sortit de sa poche le second de ses gants et le tendit au brigand en disant :<br />- Regarde : mon premier gant est peut-être gonflé mais il est tout léger, léger... Prends plutôt celui-là, il est vraiment lourd de ducats, de bijoux et de pierres précieuses...<br />Méfiant, le garçon descendit de sa monture afin de s''emparer du gant de cailloux et de le soupeser. Césaire en profita pour sauter sur la mule et pour s''en aller, portant son gant empli de graine de vent.', 'Before resuming his journey, the traveler took off the second of his glove, filled it with stones and put it in his pocket. A little later, he met a boy on a mule. And he asked:<br />- Good man, can you take me on your mule before the people to whom I must bring this glove, die.<br />- And what is in that glove?<br />- The seeds of wind.<br /> The boy laughed, brandishing a knife<br />- From the wind? I do not believe you. This glove is inflated ducats. Give it to me!<br />Immediately, Césaire took out the second of his gloves and handed the robber saying:<br />- Look, my first glove may be inflated but it is light, light ... Take this one instead, it is really heavy ducats and jewels and gems ...<br />Suspicious, the boy alighted from his horse to grab the glove and the stones weigh. Césaire took the opportunity to jump on the mule and go, carrying his glove filled with the seeds of wind.'),
(31, 8, 4, 'Quand il arriva enfin à Nyons, la ville se trouvait dans un état de désolation indescriptible. Les rares habitants qui avaient survécu à la canicule vinrent à sa rencontre et lui demandèrent :<br />- Alors ? Tu nous as ramené du vent ?<br />- Le voici, répondit le voyageur en montrant son gant.<br />La bouche desséchée, les veux exorbités, les gens eurent encore la force de se mettre en colère :<br />- Tu te moques de nous ? À supposer que tu aies réussi à y emprisonner le moindre souffle d''air, ce gant contient à peine de quoi donner une bouffée à un petit enfant. Tu nous as trahis, va-t-en !<br />- Très bien, répondit Césaire en jetant son gant contre un rocher brûlant sous le soleil torride. ', 'When he finally arrived in Nyons, the city was in a state of indescribable desolation. The few inhabitants who had survived the heat wave, came to meet him and asked him:<br />- So? Thou hast brought the wind?<br />- Here it is, replied the traveler showing his glove.<br />With dry mouth, and tired legs, people still had the strength to get angry:<br />- Are you kidding us? Assuming you had managed to imprison a breath of air, the glove contains barely enough to give some air to a small child. You betrayed us, go away!<br />- Very Well, Cesaire replied, throwing his glove against a rock under the hot scorching sun.'),
(32, 8, 5, 'Il n''eut pas plutôt accompli son geste que la pierre se fendit en un craquement gigantesque. Des profondeurs du sol monta alors un souffle frais, fleurant bon la terre mouillée par des eaux obscures. Ce vent tout neuf s''élança en volutes dans la vallée, effleura la rivière sans la traverser, lui redonnant sa mélodie, longea les murs de la ville en rafraîchissant leurs pierres, s''engouffra dans ses ruelles, redonnant vie aux chiens et aux nouveau-nés ainsi qu''aux ânes dans les prés, faisant à nouveau chanter les ruisseaux et clapoter le fond des puits...', 'He had no sooner made his move that the stone split itself into a huge crash. From the depths of the gorund, rose a fresh  breath, smelling good of the ground which was moist from the dark waters. This brand new wind rushed through the valley, touched the river without crossing it, giving it back its melody, skirted the walls of the city and  refreshing their stones, then it rushed into its streets, restoring life to dogs and new babies and the donkeys in the fields, and bringing back to life rivers, streams and the bottom of the wells...'),
(33, 8, 7, 'Avant de s''en aller, Césaire baptisa ce vent le Pontias. Et c''est toujours ce vent qui ne cesse de souffler dans cette vallée, sans se réchauffer, ni en hiver, ni en été, ni tiède, ni froid, mais toujours là, comme si la mer se trouvait juste à côté.', 'Before leaving, Césaire named the wind the Pontias. And it is always this wind which continues to blow into this valley, without heat, nor in winter, nor in summer, nor warm, nor cold, but still there, as if the sea was nearby.'),
(34, 9, 1, 'Au nom de la sainte et indivisible trinité, In Nomminé patré et filii et spiritus sancti, ainsi soit-il.<br />L’an de Grâce mil quatre cent neuf.<br />Régnant très illustre et sérénissime, Prince souverain, notre Seigneur Charles VI par la grâce de Dieu Roy des Français et Dauphin Viennois.', 'On behalf of the holy and indivisible Trinity, In Nomminé patré et filii et spiritus sancti, amen.<br />The year of our Lord one thousand four hundred and nine.<br />Reigning illustrious and serene, Sovereign Prince, our Lord Charles VI by the grace of God king of the France, Dauphin of Vienne.'),
(35, 9, 2, 'Bénissez maître Guillaume Pays, tous ces compagnons maçons, chapuis, boquillon, cordier, manœuvre du Nyonsois, ainsi que toute populas qui a participé à la création de cet bel ouvrage.<br />Saint Seigneur, protéger aussi ceux qui franchiront ce pont.<br />Amen Alléluia', 'May be blessed Master Guillaume Pays, all these fellow Masons, Chapuis, rope maker,  maneuver from Nyons, and any people who helped create this beautiful work.<br />Holy Lord, protect also those who will cross that bridge.<br />Amen Alleluia'),
(36, 9, 4, 'Voici donc ce que Mgr guillaume Passerat, évêque de Vaison, a certainement dit le jour de l’inauguration.<br />Il faut donc, en ce jour anniversaire, de nouveau remercier l’architecte, dont nous avons un descendant parmi nous en la présence d’Alain Pays, ainsi que tous les Nyonsais et Nyonsaises, qui ont d’une manière comme d’une autre ont participés a la construction de ce pont.', 'Here is what Bishop William Passerat, Bishop of Vaison, certainly said on the opening day.<br />Therefore, on this anniversary, once again we thank the architect, from whom we have a descendant  among us in the presence of Alain Pays, and all Nyonsais and Nyonsaises, who in one way as another participated in the building of this bridge.'),
(37, 9, 5, 'Malgré maintes crus, malgré les outrages que les générations successives, lui firent subir maintes outrages, il est encore là !', 'Despite many floods, despite the outrage that the successive generations made it suffer, many indignities, it is still there!'),
(38, 9, 7, 'Depuis d’autres ponts furent construit pour enjamber l’Eygues, mais, il est encore là !', 'For other bridges were built to span the Eygues, but this one is still there!'),
(39, 9, 8, 'Plus beau, plus fièr que jamais, il semble nous dire :<br />Nyonsais, Nyonsaise, honoraient tous ceux et celles qui ont contribué à ma construction, car tous ces ponts qui furent construits après moi, seront-ils là dans six cent ans pour faire la fête avec vous ?', 'More beautiful, more proud than ever, it seems to say:<br />Nyonsais, Nyonsaise honor all those who contributed to my building, because of all these bridges built after me, will they be here in six hundred years to celebrate with you?'),
(40, 9, 10, 'Vous m’avez enlevé mon péage car vos automobiles ne passaient pas, j’ai autorisé les chars alliés à me rouler dessus, puis vous avez bâti d’autres ponts pour augmenter le débit de passage.', 'You have taken away my toll because your car did not pass, I allowed the Allied tanks to drive over me, then you''ve built other bridges to increase the flow of  crossings.'),
(41, 9, 11, 'Qu’en restera-il dans six cent ans ?', 'What will be left of it six hundred years?'),
(42, 9, 12, 'Honorez ceux qui m’on construit, car, moi, je continu à vous servir humblement et pour longtemps encore.', 'Honor those who built me, as I, will continue to serve you humbly for a long time yet.'),
(43, 11, 1, 'La présidente de l''assocation "Vie et Travail dans le Vieux Nyons" (VTVN), Danièle Silvestre, lance un appel à la population pour que les 19 et 20 septembre prochains soient une bonne occasion de "venir s''esbaudir en costume du Moyen-Âge".', 'The president of the association "Vie et Travail dans le Vieux Nyons" (VTVN), Danièle Silvestre, tells the population that the 19 and 20 September should be a good opportunity to "come in costume of the Middle Ages".'),
(44, 11, 2, 'Objectif ?<br />Faire revivre l''épopée de la construction du pont<br />Organisées dans le cadre du 600e anniversaire du Pont Roman, et dans celui des Journées du Patrimoine, "Les Médiévales du Pontias" entendent faire revivre l''épopée de la construction du Pont, inauguré en 1409.<br />Pour que cette fête évoque pleinement ce moment mémorable, VTVN propose de mettre à disposition des costumes de dames et chevaliers, enfants etc...<br />Et tous ceux, associations et particuliers, qui aiment la fête et l''ambiance médiévale, sont invités à venir apporter leur savoir-faire ou leur temps pour aider les organisateurs avant ou pendant ce week-end original.', 'Purpose?<br />Reliving the epic construction of the bridge<br />Organized within the events of the 600th anniversary of the Roman Bridge, and the Heritage Days, "The MMédiévales du Pontias" intend to revive the construction of the bridge, opened in 1409.<br />To makes this a memorable moment, VTVN proposes to provide costumes for the knights and ladies, children etc..<br />And all the organizations and individuals who enjoy the feast and the medieval atmosphere, are invited to bring their know-how or time to help organizers before or during this original weekend.'),
(45, 11, 4, 'Un programme "secret"<br />Les idées fourmillent au sein de VTVN, qui garde pour l''instant le secret. Nous saurons simplement deux informations majeures : la mise à l''honneur des bâtisseurs aidés par les habitants et... l''ambiance festive.<br />Ce qui laisse présager de bons moments entre spectacles, jeux, ripailles etc...<br />Allez, levons encore un peu le voile sur ce programme, avec entre autres, une retraite aux flambeaux en costumes d''époque jusqu''à la tour Randonne.<br />Avis aux amateurs...', 'A "secret" program<br />Ideas abound in VTVN, which for now are kept secret. We will only give you two main information: They will honor builders helped by locals and ... the festive atmosphere.<br />There should lots of good times, between shows, games, feasting and so on...<br />Come on, one more clue about the program: a torchlight procession in period costume to the Randonne tower.<br />Any takers ...'),
(46, 12, 1, 'Tout ça pour un pont... Oui mais quel pont ! Durant tout le week-end, l''édifice si cher au cœur des Nyonsais a été l''objet de toutes les attentions à l''occasion des Journées du patrimoine. Il faut dire que cela fait déjà 600 ans qu''il se dresse fièrement au-dessus de l''Eygues. ', 'All this for a bridge... Yes but what a bridge! Throughout the weekend the building so dear to the heart of Nyonsais has been the subject of attention during Heritage Days. We must say that it''s been sttanding proudly above the Eygues for the last 600 years.'),
(47, 12, 3, 'Hier lors de la reconstitution de l''inauguration de l''édifice, il a été rendu hommage à ses bâtisseurs, et en  premier lieu à son architecte Guilllaume Pays ainsi qu''à tous les compagnons maçons, chapuis, boquillons, cordiers et manoeuvres du Nyonsois ainsi qu''à toute la populace qui a participé à la création de ce bel ouvrage. ', 'Yesterday at the reconstitution of the inauguration of the building, we praised its builders, primarily his architect Guilllaume Pays and all fellow Masons, Chapuis, rope maker and Nyonsois and the entire populace who helped to create this beautiful work.'),
(48, 12, 5, 'Un ouvrage aimé des Nyonsais comme le rappelait le maire Pierre Combes qui a su résister aux inondations successives et aux diverses turpitudes de l''histoire. Ce qui valait bien une fête : « que ce soit un moment de joie », enjoignait le député Hervé Mariton. « Festoyons et ripaillons », invitait Danièle Sylvestre, présidente de l''association Vie et Travail dans le Vieux Nyons, organisatrice avec le concours de la municipalité de Nyons et de celle de Crest pour le prêt des costumes de ces premières Médiévales du Pontias très réussies.', 'A masterpiece loved by the Nyonsais as recalled Mayor Pierre Combes, which has weathered successive floods and various abominations of history. That was worth a celebration, "this is a moment of joy," enjoined the deputy Herve Mariton. "Lets feast..." invited Danièle Sylvestre, president of the association Vie et Travail dans le Vieux Nyons, organizer with the assistance of the City of Nyons and the town of Crest for the loan of costumes from these first Médiévales du Pontias which were very successful.'),
(49, 12, 7, 'Six cents ans plus tard, le pont Roman a été à nouveau inauguré hier par Eric Ravier, officiant en tant que Guillaume Passerat, évêque de Vaison, entouré du 1er consul Pierre Combes et du député Hervé Mariton.', 'Six hundred years later, the Roman bridge was opened again yesterday by Eric Ravier, officiating as Guillaume Passerat, Bishop of Vaison, surrounded by the 1st Consul Pierre Combes and MP Hervé Mariton.'),
(50, 13, 1, 'Une ambiance joyeuse inhérente à toute réussite régnait parmi les organisateurs et bénévoles de la manifestation "Les médiévales du Pontias" réunis mardi à la Maison des Associations. Montée de toutes pièces et tardivement par quelques membres hyperactifs de l''association "Vie et Travail dans le Vieux Nyons" autour de Danièle Silvestre, présidente depuis 1990, il a fallu réussir la prouesse de rallier la population Nyonsaise. Mission accomplie, le message est bien passé et la foule, souvent Costumée, fut au rendez-vous durant ces deux jours de liesse. De quoi dynamiser les organisateurs qui, presque étonnés de leur succès, comptent bien remettre ça en 2010. Il paraît même qu''ils ont été contactés pour animer un marché de Noël dans la région !', 'A joyous atmosphere inherent to any success, prevailed among the volunteers and organizers of the event "médiévales du Pontias" meeting Tuesday at the Maison des Associations. Late organised by some hyperactive members of the association  "Vie et Travail dans le Vieux Nyons" around Danièle Silvestre, president since 1990, it was great to rally the population of Nyons. Mission accomplished, the message has got through and the crowd, often in costume, was the here in numbers during these two days of jubilation. What boost for the organizers who were almost astonished at their success, and are ready to start again in 2010. It seems that they have been contacted to host a Christmas market in the region!'),
(51, 13, 3, 'De nombreux points forts<br />Cette réunion de bilan a permis à Danièle Silvestre de lister les points forts, les améliorations à apporter et les idées nouvelles pour ne pas tomber dans la routine, tandis qu''Eric Ravier souhaitait que l''organisation commence début 2010. La présidente a tenu à remercier tous les bénévoles sans qui, rien n''aurait pu se faire. Mention particulière a été décernée à Maryse qui a donné la trame de la fête et confectionné les costumes.<br />Le centre historique de la cité et Pont Roman ont été ainsi mis à l''honneur avec panache.', 'Many strengths<br />This review meeting allowed Danièle Silvestre to list the strengths, improvements and new ideas to ensure they do not fall into the routine, while Eric Ravier wanted the organization to start early 2010. The President thanked all the volunteers without whom nothing could have happened. Particular mention was awarded to Maryse who gave the frame of the festival and costume making.<br />The historic center of the city and Romanesque Bridge were being honored with panache.'),
(52, 14, 1, 'Nappes blanches et lumiignons sur de petites tables, lumière tamisée et 350 personnes qui ont participé à la réussite de "l''année du Pont"... c''est une belle soirée cabaret qui a eu lieu vendredi à la Maison de Pays.', 'Tealights and white tablecloths on small tables, soft lighting and 350 persons who participated in the successful "Year of the Bridge" ... it''s a nice cabaret show that was held Friday at the Maison de Pays.'),
(53, 14, 3, 'Le public a été accueilli par Nathalie Fert, adjointe à la culture, qui a retracé les événements de l''année du 600e anniversaire du Pont Roman.<br />Le maire Pierre Combes a remercié les associations participantes et Roland Olivier, conseiller municipal maître d''oeuvre de cette soirée, a présenté le programme et les artistes du "Petit Bastringue d''Amélie" qui allait animer ce moment de convivialité.', 'The audience was welcomed by Nathalie Fert, Assistant to the culture, who traced the events of the 600th anniversary of the Romanesque Bridge.<br />Mayor Pierre Combes thanked the participating associations and Roland Oliver, Councilman supervisor of the evening, introduced the program and the artists of "Petit Bastringue d''Amélie" who were to provide the entertainment.'),
(54, 14, 5, 'Sur les murs, une exposition de photos et tableaux évocateurs.<br />Sur grand écran, le diaporama de Catherine Bompard retraçant sans exception plus de vingt manif estations qui ont célébré l''anniversaire du Pont Roman.<br />Ce fut un grand mélange des genres, initié par 28 associations, chacune avec son savoir-faire et son originalité.<br />Ce diaporama a été le rêflet de toutes ces initiatives et cette soirée a rassemblé tous les bénévoles qui se sont mobilisés afin que cette "année du pont" reste dans les mémoires.', 'On the walls, an exhibition of photographs and evocative paintings.<br />On the big screen, the slideshow of Catherine Bompard was showing more than twenty events who celebrated the anniversary of the Romanesque Bridge.<br />It was a great mix of genres, initiated by 28 organizations, each with its expertise and originality.<br />This slide show was a reflection of all these initiatives and this evening was attended by all the volunteers who mobilized to make this "year of the bridge" a remembered one.'),
(55, 14, 7, 'En costumes du Moyen-age, les bénévoles de l''association "Vie et Travail dans le Vieux Nyons", orgznisatrice des Médiévales du pontias, ont assuré la petite restauration.<br />En deuxième partie de soirée, Christian Bartheye est venu rejoindre sur scène Marcel (accordéon), Amélie (chant), Hal Collomb (guitare) pour interpréter le chant provençal "Aquéli mountagno", accompagné par le public au refrain.', 'In costumes of the Middle Ages, the volunteers of the association "Vie et Travail dans le Vieux Nyons" organiser of the "Médiévales du pontias" provided snacks.<br />In the second part of the evening, Christian Bartheye came on stage to join Marcel (accordion), Amelie (vocals), Hal Collomb (guitar) to interpret the Provencal song "Aquel mountagno", accompanied by the public.'),
(56, 15, 1, 'L''association "Vie et travail dans le Vieux Nyons" organisait tout le week-end une première dont ils pouvaient être fiers. Transformer la vieille ville en Noïomagus ("Nouveau marché", l''ancien nom latin de la ville) et faire participer le plus grand nombre à la fête, sans prendre de risque et tout en passant entre les gouttes particulièrement nombreuses à ce moment-là, malgré un changement de lune intervenu vendredi, n''était pas une mince gageure!', 'The association "Vie et travail dans le Vieux Nyons" organized throughout the weekend a new event of which they could be proud. Transforming the old city in Noïomagus ( "New Market", the ancient Latin name of the city) and to involve as many as possible to party without taking a risk and while passing between the drops particularly numerous at this time Despite a change of the moon which occurred Friday. This was no small challenge!'),
(57, 15, 3, 'La qualité des intervenants y était pour beaucoup : d''une part des professionnels comme les Chevaliers du Roi René, impressionnants d''authenticité et les Troubadours d''Héléna dont l''animation musicale apportait la touche médiévale indispensable et d''autre part des amateurs très impliqués, tels les troubadours des Baronnies dont les jongleries surprenaient la galerie ou les danseurs de la Mochatte qui occupaient l''espace contre vents et marées.', 'The quality of the participants had much to do: from the professionals like the Knights of King René, impressive in authenticity and Troubadours of Helena, whose musical entertainment brought the essential medieval key, and other amateurs very involved, like the troubadours of Baronnies whose juggling surprised the gallery or the dancers of Mochatte occupying space against all odds.'),
(58, 15, 5, 'Temps fort de la fête, la restitution théâtrale de la légende de Saint Césaire apportant les bienfaits du Pontias à notre bonne ville de Nyons, c''était une flamboyante montée aux flambeaux vers la Tour Randonne à laquelle une foule nombreuse participait: la fête a trouvé son public, avide de sensations fortes et enracinées dans l''histoire profonde de sa ville.', 'The highlight of the festival, the theatrical rendition of the legend of St. Cesaire bringing the benefits of the Pontias (a local wind) to our good town of Nyons, was a torchlight parade climbing towards the tower which involved a large crowd: the large audience was eager for thrills, rooted deep in the history of his city.'),
(59, 15, 7, 'Second moment à ne pas rater, la reconstitution de l''inauguration du Pont roman en présence des officiels donnant lieu à des discours croustillants mais aussi à des interventions ponctuées de bruitages farceurs où la poésie n''était pas oubliée!', 'Second highlight not to be missed was the reconstruction of the inauguration of the Romanesque Bridge in the presence of officials resulting in crisp speeches but also interventions punctuated by pranksters sound effects, and where poetry was not forgotten!'),
(60, 15, 9, 'Un remarquable spectacle de magie médiévale, intitulé la Cour des Miracles, donné à la coopérative Vignolis, permettait aux enfants, et aux plus grands, de se régaler d''illusions traditionnelles. Prestidigitateur, cracheur de feu, avaleur de sabre, fakir sur planche à clous et tessons, charmeur de serpent, rien ne manquait à l''appel, pas même le son magique de l''orgue de barbarie.', 'A remarkable show of medieval magic, called the Court of Miracles, given near the coopérative Vignolis, allowed children, and older persons, to enjoy traditional illusions. Magician, fire eater, sword swallower, fakir on a bed of nails and broken glass, snake charmer, nothing was missing, not even the magical sound of the organ.'),
(61, 15, 11, 'Essuyer les plâtres n''est pas chose aisée lorsque la pluie menace et que la tentation de tout annuler est grande.', 'A first attempt is not easy when rain threatens, and the temptation to cancel everything was great.'),
(62, 15, 13, 'Et pourtant la magie a opéré. Il fallait que suffisamment de spectateurs acceptent de se déguiser: pari tenu pour une première même si, à certains moments, on ne savait où donner de la fête.', 'And yet the magic occured. Enough viewers needed to be disguised: it all happened for this première, even than at times, no one knew what to look for anymore.'),
(63, 15, 15, 'Et Héroïque Eric Ravier et Dame Danièle Sylvestre, organisateurs présents sur tous les fronts et dont l''implication était remarquable, pouvaient se féliciter d''une première qui fera date dans les annales.', 'Heroic Eric Ravier and Lady Danièle Sylvestre, organizers present on all fronts and whose involvement was remarkable, could welcome a succesful events which will stay in the annals.'),
(64, 16, 1, 'Ils se sont mis en quatre pour organiser deux jours de fête autour du pont roman et ont voulu en tirer le bilan. Leur réunion a eu lieu le 29 septembre à la Maison des associations et la salle était comble. Il y avait non seulement les membres de l''association organisatrice des fêtes, "Vie et travail dans le vieux Nyons", mais de nombreux bénévoles qui en ont assuré le succès auprès du public.', 'They bent over backwards to hold two days of celebration around the bridge story and wanted to take stock. Their meeting took place September 29 at the Maison des Associations and the room was packed. There were not only members of the association "Vie et travail dans le vieux Nyons" which organized the event, but many volunteers who have ensured the success with the public.'),
(65, 16, 2, 'Danièle Sylvestre, présidente de l''association, a tenu à distribuer les remerciements : aux Nyonsais qu''une météo incertaine n''a pas découragés, aux services techniques de la mairie, aux nombreux exposants, aux membres de l''association, aux bénévoles avec quelques mentions particulières (mais il aurait fallu citer tellement de noms!) pour la costumière Maryse qui a contribué grandement à donner la trame de ces journées, pour Alain Pays, descendant de celui à qui on doit le pont, pour les artistes de la Mochatte, pour ceux de la Taverne, de la buvette, pour les figurants... Tous, remarque la présidente, ont travaillé avant la fête, pendant et après.', 'Danièle Sylvestre, president of the association, wished to distribute thanks: to the Nyonsais that unsettled weather has not discouraged, the technical services of the Town Hall, numerous exhibitors, members of the association, volunteers with a special attention (so many names should have been mentioned !) for the costume designer Maryse who has contributed greatly to the stories behind these days, to Alain Pays, descendant of the builder of the bridge, to the artists of the Mochatte, those of the Tavern, the bar, to the extras ... All, says the president, worked before the festival, during and after.'),
(66, 16, 3, 'Un long travail de préparation a été nécessaire, notamment par des recherches documentaires poussées, de telle sorte que les animations soient non seulement festives mais historiquement exactes.', 'A long work of preparation was necessary, including extensive literature searches, so that the animations were not only festive but historically accurate.'),
(67, 16, 5, 'Sont-ils prêts à organiser une nouvelle fête l''année prochaine? Pas la moindre hésitation, c''est oui! On échange des vues sur ce que seront les Médiévales 2010. Jusqu''où faut-il élargir le cercle géographique de la fête? Rien n''est décidé mais, de l''avis général le Pont doit en rester le coeur. Quel sera le programme ? Retraite aux flambeaux? Bal médiéval le samedi soir? D''autres animations? Eric a quelques idées pour un canevas, mais la réunion n''avait pour objet que de se réjouir du succès de 2009. A ce sujet, aucune défaillance digne d''être citée n''a été relevée. On a noté en particulier le jugement très favorable porté par les exposants sur l''organisation et le succès populaire de ces premières Médiévales.', 'Are they ready to organize another festival next year? No hesitation it''s a yes! They exchange views on what will be the Medieval 2010. How far should they extend the geographical area? Nothing is decided but the general view is that  the bridge must remain in the heart. What will the program be? Torchlight parade? Medieval Ball on Saturday night? Other animations? Eric has some ideas for a canvas, but the meeting was intended merely to celebrate the success of 2009. In this regard, no failure worthy of being mentioned were identified. They noted in particular the very positive feedback from the exhibitors on the organization and the popular success of these early medieval.'),
(68, 16, 6, 'Une décision est prise : s''occuper des Médiévales 2010 dès janvier et en fixer le canevas au plus tard à la fin mars, au moins dans les grandes lignes.', 'A decision is made: to start organising the Medieval from January 2010 and to set the canvas no later than the end of March, at least in outline.'),
(69, 16, 7, 'Laissons le mot de la fin à la présidente : "L''esprit de cette fête était de créer des liens dans la population et de faire vivre des émotions et des sentiments. Pour ses 600 ans, le pont roman est fier de nous tous qui avons honoré notre patrimoine".', 'Let the president have the last word: "The spirit of this festival was to create links in the population and to experience emotions and feelings. For its 600 years, the Romanesque bridge is proud of all of us who have honored our heritage".');

-- --------------------------------------------------------

--
-- Structure de la table `articlephotos`
--

CREATE TABLE IF NOT EXISTS `articlephotos` (
  `articlePhotosID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(10) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fichierPhoto` varchar(30) NOT NULL,
  `frTitle` varchar(120) NOT NULL,
  `gbTitle` varchar(120) NOT NULL,
  `frLegende` varchar(150) DEFAULT NULL,
  `gbLegende` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`articlePhotosID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `articlephotos`
--

INSERT INTO `articlephotos` (`articlePhotosID`, `articleID`, `position`, `fichierPhoto`, `frTitle`, `gbTitle`, `frLegende`, `gbLegende`) VALUES
(1, 1, 2, 'img1a1.jpg', 'Une des rues de Nyons durant les M&eacute;di&eacute;vales', 'A street of Nyons during the  M&eacute;di&eacute;vales', 'La rue des D&eacute;port&eacute;s durant les M&eacute;di&eacute;vales 2009 ', 'The D&eacute;port&eacute;s Street during the M&eacute;di&eacute;vales 2009 '),
(2, 2, 2, 'img2a1.jpg', 'Les diff&eacute;rentes personnalit&eacute;s pr&eacute;sentes pour l''inauguration du pont Roman', 'The different personalities present for the opening of the Romanesque bridge', 'Les digniataires pr&eacute;sents pour l''inauguration du pont Roman', 'The local personalities taking part into the opening of the Romanesque bridge'),
(3, 3, 2, 'img1a3.jpg', 'Le roi René', 'King René', 'Le roi René arrivant avec ses troupes', 'King René arriving with his troops'),
(12, 10, 1, 'img1a10.jpg', 'Affiche des médiévales', 'Poster of the médiévales', 'L''affiche des Médiévales du Pontias 2009', 'Poster of the Médiévales du Pontias 2009'),
(4, 4, 2, 'img1a4.gif', 'Logo de célébration des 600 ans du pont Roman', 'Logo of the 600 anniversary of the Romanesque Bridge', 'Logo anniversaire du Pont Roman', 'Anniversary logo of the Romanesque Bridge'),
(5, 4, 5, 'img2a4.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge'),
(6, 5, 3, 'img1a5.jpg', 'Entête du site internet de l''association Vie et Travail dans le Vieux Nyons', 'Header of the website of the association Vie et Travail dans le Vieux Nyons', 'Site internet Vie et Travail dans le Vieux Nyons', 'Website Vie et Travail dans le Vieux Nyons'),
(7, 6, 2, 'img1a6.jpg', 'Vue de Nyons', 'View of Nyons', 'Vue de Nyons et de la tour Randonne', 'View of Nyons, and the Randonne tower'),
(8, 6, 4, 'img2a6.jpg', 'Un olivier', 'A olive tree', 'Un olivier dans un champs Nyonsais', 'An olive tree in a field in Nyons'),
(9, 6, 7, 'img3a6.jpg', 'Image du marché', 'View of the market', 'Le marché', 'The market'),
(10, 7, 3, 'img1a7.jpg', 'Saint Césaire', 'Saint Césaire', 'Saint Césaire (Document Musée Calvet) ', 'Saint Césaire (Document Musée Calvet) '),
(11, 8, 6, 'img1a8.jpg', 'La colline du Pontias (photo extraite du blog Mes balades autour de Nyons)', 'The Pontias Hill (photo from the blog Mes balades autour de Nyons)', 'La colline du Pontias (Document Lena26)', 'The Pontias Hill (Document Lena26)'),
(13, 9, 3, 'img1a9.jpg', 'Les dignitaires', 'The dignitaries', 'Le discours du pont Roman', 'The Romanesque bridge speech'),
(14, 9, 9, 'img2a9.jpg', 'Le pont Roman', 'The Romanesque bridge', 'Nyons : le Pont Roman vu de l''Eygues', 'Nyons: the Romanesque Bridge seen from the river Eygues'),
(15, 9, 6, 'img3a9.jpg', 'Le pont Roman', 'The Romanesque bridge', 'Lithographie de Nyons et de son pont, époque romantique', 'Lithography of Nyons and its bridge, romantic era'),
(16, 11, 3, 'img01.jpg', 'Recherche de figurants', 'Looking for extras', 'Gente Dame Danièle Silvestre et Chevalier Eric Ravier déjà prêts à festoyer', 'Lady Danièle Silvestre and Knight Eric Ravier are ready to feast'),
(17, 12, 2, 'img01.jpg', 'La foule sur le pont', 'The crowd on the bridge', 'La foule sur le pont Roman', 'The crowd on the Romanesque bridge'),
(18, 12, 4, 'img02.jpg', 'Le bouffon du Roy et Dame Terras', 'The court Jester and Lady Terras', 'Le fou du roi a accompagné de ses facéties Dame Terras qui a déclamé comme il était de coutume au Moyen-Âge un poème de sa composition.', 'The court jester accompanied by his antics Dame Terras who declaimed as was customary in medieval time, a poem of her making.'),
(19, 12, 6, 'img03.jpg', 'Les dignitaires', 'The dignitaries', 'Guillaume Passerat, évêque de Vaison, entouré du 1er consul Pierre Combes et du député Hervé Mariton', 'Guillaume Passerat, Bishop of Vaison, surrounded by the 1st Consul Pierre Combes and MP Hervé Mariton'),
(20, 13, 2, 'img01.jpg', 'Une partie de l''équipe', 'Some members of the team', '"Vie et Travail dans le Vieux Nyons" a dressé un bon bilan de la fête "Les médiévales du Pontias"', '"Vie et Travail dans le Vieux Nyons" has compiled a good record of the celebration "Les médiévales du Pontias"'),
(21, 14, 2, 'img01.jpg', 'Présentation', 'Introduction', 'Au micro, Roland Olivier, en présence de Nathalie Fert, l''adjointe à la culture et du maire Pierre Combes.', 'At the microphone, Roland Oliver, in the presence of Nathalie Fert, Assistant to the culture and the Mayor Pierre Combes.'),
(22, 14, 4, 'img02.jpg', 'Chansons', 'Songs', 'Amélie et Christian Bartheye', 'Amélie and Christian Bartheye'),
(23, 14, 6, 'img03.jpg', 'Association VTVN', 'VTVN association', 'Les membres de l''association "Vie et Travail dans le Vieux Nyons"', 'Some members of the association"Vie et Travail dans le Vieux Nyons"'),
(24, 15, 2, 'img01.jpg', 'Danseuse', 'Dancers', 'En avant la musique', 'Let''s dance'),
(25, 15, 4, 'img02.jpg', 'Costumes', 'Costums', 'Superbes costumes médiévaux', 'Beautiful medieval costums'),
(26, 15, 6, 'img03.jpg', 'Archerie', 'Archery', 'Démo d''archerie médiévale', 'Demonstrating medieval archery'),
(27, 15, 8, 'img04.jpg', 'En garde', 'En garde', 'En garde!', 'En garde!'),
(29, 15, 10, 'img05.jpg', 'Sur le pont', 'On the bridge', 'L''inauguration restituée', 'The opening reconstructed'),
(30, 15, 12, 'img06.jpg', 'Peine de mort', 'Death penalty', 'Comme au bon vieux temps', 'Like in the good old times'),
(31, 15, 14, 'img07.jpg', 'Combat', 'Sword fight', 'Insécurité sur la digue', 'Insecurity near the river'),
(32, 15, 16, 'img08.jpg', 'Danseurs', 'Dancers', 'Danse en rond sur la digue', 'Rond dancing the near the river'),
(33, 16, 4, 'img01.jpg', 'Réunion', 'Meeting', 'Un bilan dressé dans la bonne humeur', 'An assessment made in good spirit');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `articleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frTitre` varchar(120) NOT NULL,
  `gbTitre` varchar(120) NOT NULL,
  `frSousTitre` varchar(120) DEFAULT NULL,
  `gbSousTitre` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`articleID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`articleID`, `frTitre`, `gbTitre`, `frSousTitre`, `gbSousTitre`) VALUES
(1, 'Programme du samedi 19 septembre 2009', 'What''s on Saturday 19 September 2009', NULL, NULL),
(2, 'Programme du dimanche 20 septembre 2009', 'What''s on Sunday 20 September 2009', NULL, NULL),
(3, 'Programme des M&eacute;di&eacute;vales 2010', 'What''s on during the M&eacute;di&eacute;vales 2010', NULL, NULL),
(4, 'Les  M&eacute;di&eacute;vales du Pontias', 'The  M&eacute;di&eacute;vales du Pontias', 'Naissance d''un projet', 'Birth of a project'),
(5, 'Association Vie et Travail dans le Vieux Nyons', 'Association Vie et Travail dans le Vieux Nyons', 'Qui sommes-nous...', 'Who are we...'),
(6, 'Nyons', 'Nyons', 'A découvrir', 'To discover'),
(7, 'La Légende du Pontias (première partie)', 'The Legend of the Pontias (first part)', NULL, NULL),
(8, 'La Légende du Pontias (deuxième partie)', 'The Legend of the Pontias (second part)', NULL, NULL),
(9, 'Discours du pont', 'Speech of the bridge', NULL, NULL),
(10, 'Affiche des Médiévales', 'Poster of the Médiévales', NULL, NULL),
(11, 'A la recherche de figurants', 'In search of extras', 'paru le 4 août 2009', 'published the 4th August 2009'),
(12, 'Le pont Roman, si cher au coeur des Nyonsais', 'The Romanesque bridge, so dear to the people of Nyons', 'paru le 21 septembre 2009', 'pulished the 21st September 2009'),
(13, 'Pari tenu : la fête a été une vraie réussite', 'Well done: the festival was a real success', 'paru le 3 octobre 2009', 'published the 3rd October 2009'),
(14, 'Retour sur l''année du pont en images et en chansons', 'Looking back at the year of the bridge in pictures and songs', 'paru le 15 décembre 2009', 'pulished the 15th december 2009'),
(15, 'Dans le bain médiéval du Pontias', 'In the medieval atmosphere of the Pontias', 'paru le 24 septembre 2009', 'published the 24th september 2009'),
(16, 'Ils comptent bien remettre ça !', 'They will do it again!', 'paru le 8 octobre 2009', 'published the 8th October 2009');

-- --------------------------------------------------------

--
-- Structure de la table `exposants`
--

CREATE TABLE IF NOT EXISTS `exposants` (
  `exposantID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `annee` int(10) unsigned NOT NULL,
  `nom` varchar(100) NOT NULL,
  `frType` varchar(120) DEFAULT NULL,
  `gbType` varchar(120) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `telephone` varchar(14) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `imgFichier` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`exposantID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `exposants`
--

INSERT INTO `exposants` (`exposantID`, `annee`, `nom`, `frType`, `gbType`, `contact`, `telephone`, `website`, `imgFichier`) VALUES
(1, 2009, 'Art Style', 'Armes et décoration', 'Weapons and design', 'Cathy et Jess Seguin', '06 63 51 23 78', 'http://www.artstyle83.fr/', 'img002.jpg'),
(2, 2009, 'Rédéliande', 'Fabrication artisanales de jouets et objets médiévaux', 'Creation of toys and medieval wooden objects', 'Régis Debruille', '06 79 70 65 68', 'http://www.redeliande.com/', 'img001.jpg'),
(3, 2009, 'La Forge d''Ardacos', 'Ferronerie, armement et vêtements médiévaux', 'Ironwork, arms and medieval clothes', NULL, '06 03 13 95 88', 'http://www.forgeardacos.fr/', NULL),
(4, 2009, ' Baobab', 'Jouets en bois', 'Wooden toys', 'Alain Delalande', '04 90 51 55 02', NULL, NULL),
(5, 2009, 'Délices au Miel', 'Miels, nougats, pains d''épices', 'Honey, nougat, ginger bread', 'Nadia et Serge Bompard', '04 75 98 57 99', 'http://www.delicesaumiel.com/', 'img003.jpg'),
(6, 2009, 'Les Secrets de Lola', 'Artisan biscuitier', 'Biscuit maker', NULL, '04 90 28 97 82', NULL, NULL),
(7, 2009, 'Caribou Nature', 'Jouets en bois', 'Wooden toys', NULL, '04 94 40 54 28', 'http://www.caribounature.com/', 'img004.jpg'),
(8, 2009, 'Le Chevalier Thibault', 'Création et fabrication de vêtements médiévaux', 'Creator and maker of medieval clothes', 'Karim Maloun', '06 08 56 75 37', 'http://www.chevalier-thibault.com/', 'img005.jpg'),
(9, 2009, 'Ebeilleuse d''Ecriture', 'Calligraphie médiévale', 'Medieval calligraphy', 'S. Reynier-Krélyan', '04 92 72 10 07', NULL, NULL),
(10, 2009, 'Forge Altitude', 'Forgeron', 'Ironworker', 'Patrick Ollieu', '06 11 56 74 95', 'http://www.forgealtitude.fr/', 'img006.jpg'),
(11, 2009, 'Le Dragonnier', 'Armement et équipements médiévaux', 'Weapons and medieval equipments', 'Erik Lopez', '06 82 07 43 90', 'http://www.ledragonnier.com/', 'img007.jpg'),
(12, 2009, 'Atelier de Sherwood', 'Création cuir, costumier', 'Leather creation, costums maker', 'Eric Dunan', '06 84 17 10 77', 'http://www.atelier-de-sherwood.com/', 'img008.jpg'),
(13, 2009, 'Atelier du Grimeur', 'Créations originales et fanstatiques', 'Original and fantastic creations', NULL, '04 90 43 87 62', 'http://www.atelier-du-grimeur.com/', 'img009.jpg'),
(14, 2009, 'Nomade', 'Art de vivre et conscience populaire', 'Art of life', NULL, '04 75 29 98 27', NULL, NULL),
(15, 2009, 'Dominique Le Cronc', 'Tisserande', 'Weaver', 'Dominique Le Cronc', '04 90 28 94 89', NULL, NULL),
(16, 2009, 'Atelier Claudelma', NULL, NULL, 'Claude Delma', '04 90 29 70 36', NULL, NULL),
(17, 2009, 'Attelages Dubois', 'Location calèche, attelage', 'Hire of carriages', NULL, '04 90 43 56 32', 'http://www.attelagedubois.com/', 'img010.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `fichiers`
--

CREATE TABLE IF NOT EXISTS `fichiers` (
  `fichierID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomFichier` varchar(55) NOT NULL,
  PRIMARY KEY (`fichierID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `fichiers`
--

INSERT INTO `fichiers` (`fichierID`, `nomFichier`) VALUES
(1, 'principal'),
(2, 'articles'),
(3, 'galerie'),
(4, 'forums'),
(5, 'mentions'),
(6, 'planSite'),
(7, 'liens'),
(8, 'contact'),
(9, 'expo2009'),
(10, 'filmM2009');

-- --------------------------------------------------------

--
-- Structure de la table `galeriedetails`
--

CREATE TABLE IF NOT EXISTS `galeriedetails` (
  `galerieDetailsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `galerieID` int(10) unsigned NOT NULL,
  `fichierPhoto` varchar(30) NOT NULL,
  `frLegende` varchar(120) NOT NULL,
  `gbLegende` varchar(120) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`galerieDetailsID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=322 ;

--
-- Contenu de la table `galeriedetails`
--

INSERT INTO `galeriedetails` (`galerieDetailsID`, `galerieID`, `fichierPhoto`, `frLegende`, `gbLegende`, `position`) VALUES
(1, 1, 'pon001.jpg', 'Le pont avant l''arrivée de la foule', 'The bridge before the crowd arrives', 1),
(2, 1, 'pon002.jpg', 'Le pont vu des rives de l''Eygues', 'The bridge as seen from the river Eygues', 2),
(3, 1, 'dis001.jpg', 'Le discours de Mgr guillaume Passerat', 'The speech of Mgr guillaume Passerat', 3),
(4, 1, 'dis002.jpg', 'Le discours', 'The speech', 4),
(5, 1, 'dis003.jpg', 'Le discours continue', 'The speech continues', 5),
(6, 1, 'dis005.jpg', 'Quelques échanges secrets???', 'Some secret words???', 6),
(7, 1, 'dis006.jpg', 'Monsiegneur parle aux élus', 'His Lordship talks to the elected one', 7),
(8, 1, 'dis008.jpg', 'La réponse des élus', 'Response from the elected ones', 8),
(9, 1, 'dis009.jpg', 'La réponse des élus', 'Response from the elected ones', 9),
(10, 1, 'dis010.jpg', 'La réponse des élus ou le coup du chapeau?', 'Response from the elected ones or a hat trick?', 10),
(11, 1, 'dis011.jpg', 'La réponse des élus', 'Response from the elected ones', 11),
(12, 1, 'pon003.jpg', 'Le pont Roman', 'The Romanesque Bridge', 12),
(13, 1, 'dis013.jpg', 'Messire Pierre Combes (Maire de Nyons)', 'Sir Pierre Combes (Mayor of Nyons)', 13),
(14, 1, 'dis014.jpg', 'Chevalier Hervé Mariton (Député de la Drôme)', 'Knight Hervé Mariton (MP from the Drôme)', 14),
(15, 1, 'dis019.jpg', 'Messire Pierre Combes (Maire de Nyons)', 'Sir Pierre Combes (Mayor of Nyons)', 15),
(16, 1, 'dis020.jpg', 'Chevalier Hervé Mariton (Député de la Drôme)', 'Knight Hervé Mariton (MP from the Drôme)', 16),
(17, 1, 'duo001.jpg', 'Lecture du poème &quot;La Balade du Pont Roman&quot;', 'Reading of the poem &quot;La Balade du Pont Roman&quot;', 17),
(18, 1, 'duo002.jpg', 'Les lecteurs du poème &quot;La Balade du Pont Roman&quot;', 'The readers of the poem  &quot;La Balade du Pont Roman&quot;', 18),
(19, 1, 'duo003.jpg', 'Lecture du poème &quot;La Balade du Pont Roman&quot;', 'Reading of the poem &quot;La Balade du Pont Roman&quot;', 19),
(20, 1, 'duo005.jpg', 'Les lecteurs du poème &quot;La Balade du Pont Roman&quot;', 'The readers of the poem  &quot;La Balade du Pont Roman&quot;', 20),
(21, 1, 'duo007.jpg', 'Lorsque le bouffou du Roy s''en mèle', 'When the court jester takes part', 21),
(22, 1, 'duo009.jpg', 'Le bouffon du Roy et les lecteurs du poème', 'The court jester and the readers of the poem', 22),
(23, 1, 'pon005.jpg', 'La foule sur le pont lors des discours', 'The crowd on the bridge during the speeches', 23),
(24, 1, 'dig003.jpg', 'Mgr guillaume Passerat, aussi connu comme Seigneur Ravier de Piquet', 'Mgr guillaume Passerat, also know as Sir Ravier de Piquet', 24),
(25, 1, 'dig004.jpg', 'En allant vers les rives de l''Eygues', 'Going towards the river side', 25),
(26, 1, 'dig005.jpg', 'En allant vers les rives de l''Eygues', 'Going towards the river side', 26),
(27, 1, 'dig006.jpg', 'En allant vers les rives de l''Eygues', 'Going towards the river side', 27),
(28, 1, 'dig001.jpg', 'Les dignitaires', 'Dignitaries', 28),
(29, 1, 'dig002.jpg', 'Les dignitaires', 'Dignitaries', 29),
(30, 2, 'dru001.jpg', 'Place des Arcades', 'Square of the Arcades', 1),
(31, 2, 'dru002.jpg', 'Place des Arcades', 'Square of the Arcades', 2),
(32, 2, 'dru003.jpg', 'Place des Arcades', 'Square of the Arcades', 3),
(33, 2, 'rbb001.jpg', 'Rue des Bas-Bourgs', 'Street of the Bas-Bourgs', 4),
(34, 2, 'rbb002.jpg', 'Rue des Bas-Bourgs', 'Street of the Bas-Bourgs', 5),
(35, 2, 'rdd001.jpg', 'Rue des Déportés', 'Street of the Déportés', 6),
(36, 2, 'rdd002.jpg', 'Rue des Déportés', 'Street of the Déportés', 7),
(37, 2, 'rdd003.jpg', 'Rue des Déportés', 'Street of the Déportés', 8),
(38, 2, 'rdd004.jpg', 'Rue des Déportés', 'Street of the Déportés', 9),
(39, 3, 'dig001.jpg', 'Au bord de la rivière', 'On the riverside', 1),
(40, 3, 'dig002.jpg', 'Au bord de la rivière', 'On the riverside', 2),
(41, 3, 'dig003.jpg', 'Au bord de la rivière', 'On the riverside', 3),
(42, 3, 'dig004.jpg', 'Au bord de la rivière', 'On the riverside', 4),
(43, 3, 'dig005.jpg', 'Au bord de la rivière', 'On the riverside', 5),
(44, 3, 'dig006.jpg', 'Jeunes danseurs', 'Young dancers', 6),
(45, 3, 'dig007.jpg', 'Jeunes danseurs', 'Young dancers', 7),
(46, 3, 'dig008.jpg', 'Au bord de la rivière', 'On the riverside', 8),
(47, 3, 'dig009.jpg', 'Danseurs au bord de la rivière', 'Dancers near the riverside', 9),
(48, 3, 'dig010.jpg', 'Farandole au bord de la rivière', 'A farandole near the riverside', 10),
(49, 3, 'dig011.jpg', 'Au bord de la rivière', 'On the riverside', 11),
(50, 3, 'dig012.jpg', 'Musiciens', 'Musicians', 12),
(51, 3, 'dig013.jpg', 'Musiciens', 'Musicians', 13),
(52, 3, 'dig014.jpg', 'Jeunes danseurs', 'Young dancers', 14),
(53, 3, 'dig015.jpg', 'Jeunes danseurs', 'Young dancers', 15),
(54, 4, 'pon001.jpg', 'Danseuse et musiciens près du pont', 'Dancer and musicians near the bridge', 1),
(55, 4, 'pon002.jpg', 'Danseurs et musiciens près du pont', 'Dancers and musicians near the bridge', 2),
(56, 4, 'pon003.jpg', 'Une farandole près du pont', 'A farandole near the bridge', 3),
(57, 4, 'pon004.jpg', 'Danseuse et musiciens près du pont', 'Dancer and musicians near the bridge', 4),
(58, 4, 'pon005.jpg', 'Danseuse et musiciens près du pont', 'Dancer and musicians near the bridge', 5),
(59, 4, 'pon006.jpg', 'Une farandole près du pont', 'A farandole near the bridge', 6),
(60, 4, 'pon007.jpg', 'Musiciens près du pont', 'Musicians near the bridge', 7),
(61, 5, 'arc001.jpg', 'L''archerie', 'The archery', 1),
(62, 5, 'arc002.jpg', 'L''acherie', 'The archery', 2),
(63, 5, 'arm001.jpg', 'L''armurerie', 'The armoury', 3),
(64, 6, 'pre002.jpg', 'On se prépare à l''auberge', 'They are getting ready at the inn', 1),
(65, 6, 'pre001.jpg', 'On se prépare à l''auberge', 'They are getting ready at the inn', 2),
(66, 6, 'pre003.jpg', 'Les clients mangent', 'The customers are eating', 3),
(67, 6, 'pre006.jpg', 'Si je dis là-bas, c''est là-bas!!!', 'If I say over there, I mean over there!!!', 4),
(68, 6, 'aub001.jpg', 'Beaucoup de travail à l''auberge', 'Lots of work at the inn', 5),
(69, 6, 'aub002.jpg', 'L''homme au couteau...', 'The man with a knife...', 6),
(70, 6, 'aub003.jpg', 'On travaille dur à l''auberge', 'They work hard at the inn', 7),
(71, 6, 'aub004.jpg', 'Le chef de l''auberge', 'The headchef of the inn', 8),
(72, 6, 'aub005.jpg', 'Mangeons au bord de l''eau', 'Lets eat near the river', 9),
(73, 6, 'aub006.jpg', 'On rit aussi à l''auberge', 'Laughters at the inn', 10),
(74, 6, 'aub007.jpg', 'Prêtes pour tout...', 'Ready for anything...', 11),
(75, 6, 'aub008.jpg', 'Le chef ou un futur lépreux?', 'The chef or a future leper?', 12),
(76, 6, 'aub009.jpg', 'Ca ripaille...', 'They feast...', 13),
(77, 6, 'aub010.jpg', 'Comptons les repas', 'Lets count the meals', 14),
(78, 6, 'aub011.jpg', 'Du bon jambon', 'Nice ham', 15),
(79, 7, 'ecr001.jpg', 'Préparation du stand', 'Getting the stand ready', 1),
(80, 7, 'ecr002.jpg', 'Le stand', 'The stand', 2),
(81, 7, 'cal001.jpg', 'Atelier de calligraphie', 'Calligraphy workshop', 3),
(82, 7, 'cal002.jpg', 'Lettres et enveloppes', 'Letters and envelops', 4),
(83, 7, 'cal003.jpg', 'Le magasin de calligraphie', 'Calligraphy shop', 5),
(84, 7, 'cal004.jpg', 'Le magasin de calligraphie', 'Calligraphy shop', 6),
(85, 7, 'cal005.jpg', 'Le magasin de calligraphie', 'Calligraphy shop', 7),
(86, 7, 'cal006.jpg', 'Le magasin de calligraphie', 'Calligraphy shop', 8),
(87, 7, 'cal007.jpg', 'Ecritoire Médiéval', 'Medieval Writing', 9),
(88, 8, 'cre001.jpg', 'La crêperie', 'The pancake shop', 1),
(89, 8, 'div001.jpg', 'Marchands', 'Merchants', 2),
(90, 8, 'tai001.jpg', 'Le tailleur', 'The cutter', 3),
(91, 8, 'tai002.jpg', 'Le tailleur', 'The cutter', 4),
(92, 8, 'hyp001.jpg', 'Hypocras à la vente', 'Medieval wine stand', 5),
(93, 8, 'ver001.jpg', 'Le verrier', 'The glass maker', 6),
(94, 8, 'div003.jpg', 'Un coffre en bois', 'A wooden chest', 7),
(95, 8, 'div002.jpg', 'Les marchands près de la rivière', 'The merchants near the river', 8),
(96, 8, 'rue001.jpg', 'Rue marchande', 'Merchants in the street', 9),
(97, 8, 'rue002.jpg', 'Rue marchande', 'Merchants in the street', 10),
(98, 8, 'rue003.jpg', 'Rue marchande', 'Merchants in the street', 11),
(99, 8, 'tre001.jpg', 'La trésorière', 'The treasurer', 12),
(100, 8, 'tre002.jpg', 'Pourquoi dois-je compter sur une poubelle?', 'Why do I have to count on a bin?', 13),
(101, 8, 'tre003.jpg', 'La trésorière', 'The treasurer', 14),
(102, 8, 'tre004.jpg', 'Alors, vous prenez la première à droite, la seconde à gauche...', 'So you take the first on the right, the second on the left....', 15),
(103, 9, 'fer007.jpg', 'Préparation du feu', 'Preparing the fire', 1),
(104, 9, 'fer001.jpg', 'Le ferronnier', 'The ironworker', 2),
(105, 9, 'fer002.jpg', 'On amène le bouffon du roy', 'They bring the court jester', 3),
(106, 9, 'fer003.jpg', 'Le ferronnier', 'The ironworker', 4),
(107, 9, 'fer004.jpg', 'Le bouffon du Roy', 'The court jester', 5),
(108, 9, 'fer005.jpg', 'Le ferronnier pose les fers...', 'The ironworker puts the nails...', 6),
(109, 9, 'fer006.jpg', 'C''est fini pour lui....', 'That''s all for him...', 7),
(110, 9, 'fer008.jpg', 'Le travail du ferronnier', 'The work of the ironworker', 8),
(111, 10, 'hab001.jpg', 'Parures et effets', 'Ornaments and effects', 1),
(112, 10, 'hab002.jpg', 'Habits', 'Clothes', 2),
(113, 10, 'tap001.jpg', 'Tapisserie', 'Tapestry', 3),
(114, 10, 'tap002.jpg', 'Tapisserie', 'Tapestry', 4),
(115, 10, 'tap003.jpg', 'Tapisserie', 'Tapestry', 5),
(116, 11, 'pos001.jpg', 'En allant vers le stand de tir à l''arc', 'Going towards the archery stand', 1),
(117, 11, 'std001.jpg', 'En attendant les archers', 'Waiting for the archers', 2),
(118, 11, 'arc003.jpg', 'Le stand de tir à l''arc', 'The archery stand', 3),
(119, 11, 'std002.jpg', 'Le chevalier est parti...', 'The knight is gone...', 4),
(120, 11, 'std003.jpg', 'Les armes', 'The weapons', 5),
(121, 11, 'std004.jpg', 'L''armurerie', 'The weaponry', 6),
(122, 11, 'std007.jpg', 'L''armurerie', 'The armoury', 7),
(123, 11, 'arc002.jpg', 'Jeunes archers', 'Young archers', 8),
(124, 11, 'arc001.jpg', 'Archers', 'Archers', 9),
(125, 11, 'che001.jpg', 'Un chevalier', 'A knight', 10),
(126, 11, 'che003.jpg', 'Un chevalier Maure', 'A Moor knight', 11),
(127, 11, 'tro006.jpg', 'Un jeune chevalier', 'A young knight', 12),
(128, 11, 'tro008.jpg', 'Préparation des soldats', 'Soldiers are getting ready', 13),
(129, 11, 'tro007.jpg', 'Les troupes partent...', 'The troops are going...', 14),
(130, 11, 'che002.jpg', 'Deux chevaliers', 'Two knights', 15),
(131, 11, 'tro001.jpg', 'Le Roy et ses troupes', 'The King and his troops', 16),
(132, 11, 'tro002.jpg', 'Les troupes', 'The troops', 17),
(133, 11, 'tro003.jpg', 'Les troupes', 'The troops', 18),
(134, 11, 'tro004.jpg', 'Les troupes sur le pont', 'Troops on the bridge', 19),
(135, 11, 'tro005.jpg', 'Les troupes', 'The troops', 20),
(136, 11, 'tro009.jpg', 'Les troupes', 'The troops', 21),
(137, 11, 'tro010.jpg', 'Les troupes', 'The troops', 22),
(138, 11, 'tro011.jpg', 'Un soldat', 'A soldier', 23),
(139, 11, 'tro012.jpg', 'Des soldats', 'Soldiers', 24),
(140, 11, 'tro014.jpg', 'Défilé des troupes du Roy', 'Parade of the King''s troops', 25),
(141, 11, 'tro013.jpg', 'Le Roy et ses troupes', 'The King and his troops', 26),
(142, 11, 'tro015.jpg', 'Le Roy et ses troupes', 'The King and his troops', 27),
(143, 11, 'tro016.jpg', 'Les troupes', 'The troops', 28),
(144, 11, 'tro017.jpg', 'Les troupes', 'The troops', 29),
(145, 11, 'tro018.jpg', 'Les troupes', 'The troops', 30),
(146, 12, 'tou002.jpg', 'Combat de rue', 'Street fight', 1),
(147, 12, 'tou003.jpg', 'Combat de rue', 'Street fight', 2),
(148, 12, 'tou004.jpg', 'Combat de rue', 'Street fight', 3),
(149, 12, 'tou005.jpg', 'Combat de rue', 'Street fight', 4),
(150, 12, 'tou006.jpg', 'Combat de rue', 'Street fight', 5),
(151, 12, 'tou007.jpg', 'Combat de rue', 'Street fight', 6),
(152, 12, 'tou008.jpg', 'Combat de rue', 'Street fight', 7),
(153, 12, 'tou009.jpg', 'Combat de rue', 'Street fight', 8),
(154, 12, 'tou010.jpg', 'Combat de rue', 'Street fight', 9),
(155, 12, 'tou011.jpg', 'Combat de rue', 'Street fight', 10),
(156, 12, 'tou012.jpg', 'Un de moins...', 'Minus one...', 11),
(157, 13, 'cha001.jpg', 'Un challenge', 'A challenge', 1),
(158, 13, 'cha002.jpg', 'Un challenge', 'A challenge', 2),
(159, 13, 'cha003.jpg', 'Un challenge', 'A challenge', 3),
(160, 13, 'cha004.jpg', 'Un challenge', 'A challenge', 4),
(161, 13, 'cha005.jpg', 'Un challenge', 'A challenge', 5),
(162, 13, 'cha006.jpg', 'Un challenge', 'A challenge', 6),
(163, 13, 'dig002.jpg', 'Un challenge', 'A challenge', 7),
(164, 13, 'dig003.jpg', 'Un challenge', 'A challenge', 8),
(165, 13, 'cha007.jpg', 'Un challenge', 'A challenge', 9),
(166, 13, 'cha008.jpg', 'Un challenge', 'A challenge', 10),
(167, 13, 'cha009.jpg', 'Un challenge', 'A challenge', 11),
(168, 13, 'dig004.jpg', 'Un challenge', 'A challenge', 12),
(169, 13, 'dig005.jpg', 'Un challenge', 'A challenge', 13),
(170, 13, 'dig006.jpg', 'Un challenge', 'A challenge', 14),
(171, 13, 'cha010.jpg', 'Un challenge', 'A challenge', 15),
(172, 13, 'cha011.jpg', 'Un challenge', 'A challenge', 16),
(173, 13, 'cha012.jpg', 'Un challenge', 'A challenge', 17),
(174, 13, 'dig007.jpg', 'Mise à mort', 'Killing time', 18),
(175, 13, 'dig008.jpg', 'Fin du challenge', 'End of the challenge', 20),
(176, 13, 'cha013.jpg', 'Fin du challenge', 'End of the challenge', 19),
(177, 13, 'dig009.jpg', 'Derniers rites', 'Last rites', 21),
(178, 13, 'dig010.jpg', 'Derniers rites', 'Last rites', 22),
(179, 14, 'cat001.jpg', 'Le trébuchet', 'The trebuchet', 1),
(180, 14, 'cat010.jpg', 'Le trébuchet', 'The trebuchet', 2),
(181, 14, 'cat004.jpg', 'Le trébuchet', 'The trebuchet', 3),
(182, 14, 'cat005.jpg', 'Le trébuchet', 'The trebuchet', 4),
(183, 14, 'cat006.jpg', 'Le trébuchet', 'The trebuchet', 5),
(184, 14, 'cat009.jpg', 'Le trébuchet', 'The trebuchet', 6),
(185, 14, 'cat011.jpg', 'Le trébuchet', 'The trebuchet', 7),
(186, 14, 'cat002.jpg', 'Préparation du trébuchet', 'Preparing the trebuchet', 8),
(187, 14, 'cat003.jpg', 'Préparation du trébuchet', 'Preparing the trebuchet', 9),
(188, 14, 'cat007.jpg', 'Préparation du trébuchet', 'Preparing the trebuchet', 10),
(189, 14, 'cat008.jpg', 'Prêt à l''attaque', 'Ready to launch', 11),
(190, 15, 'cou001.jpg', 'Belle Dame et Messire', 'Lovely Lady and His Lordship', 1),
(192, 15, 'dam001.jpg', 'En Grande discussion', 'Chatting away', 2),
(193, 15, 'dam002.jpg', 'Belles Dames', 'Lovely Ladies', 3),
(194, 15, 'dam003.jpg', 'Belle Dame', 'Lovely Lady', 4),
(195, 15, 'dam004.jpg', 'Belles Dames', 'Lovely Ladies', 5),
(196, 15, 'dam005.jpg', 'Belles Dames', 'Lovely Ladies', 6),
(197, 15, 'dam006.jpg', 'Jolie cuisse, mon Père', 'Lovely tight, Father', 7),
(198, 15, 'dam007.jpg', 'Belles Dames', 'Lovely Ladies', 8),
(199, 15, 'dam008.jpg', 'Les plus jeunes...', 'The younger one...', 9),
(200, 15, 'dam009.jpg', 'Belle Dame', 'Lovely Lady', 10),
(201, 15, 'dam010.jpg', 'Belle Dame', 'Lovely Lady', 11),
(202, 15, 'dam011.jpg', 'Belle Dame', 'Lovely Lady', 12),
(203, 15, 'dam012.jpg', 'Demoiselle', 'Demoiselle', 13),
(204, 15, 'dam013.jpg', 'Belles Dames', 'Lovely Ladies', 14),
(205, 15, 'fou001.jpg', 'Le bouffon du Roy', 'The court jester', 15),
(206, 15, 'fou002.jpg', 'Le bouffon du Roy', 'The court jester', 16),
(207, 15, 'fou003.jpg', 'Le bouffon du Roy', 'The court jester', 17),
(208, 15, 'fou004.jpg', 'Le bouffon du Roy', 'The court jester', 18),
(209, 15, 'mes001.jpg', 'A la taverne...', 'At the inn...', 19),
(210, 15, 'mes002.jpg', 'La Dame et le soldat', 'The Lady and the soldier', 20),
(211, 15, 'mes003.jpg', 'Vrai ou faux...', 'True or false...', 21),
(212, 15, 'mes004.jpg', 'Les aubergistes', 'The Inn keepers', 22),
(213, 15, 'mes005.jpg', 'Bel Gens', 'Nice people', 23),
(214, 15, 'mes006.jpg', 'L''evêque', 'The Bishop', 24),
(215, 15, 'mes007.jpg', 'Dans la rue', 'In the street', 25),
(216, 15, 'mes008.jpg', 'Jeunes Damoiseaux', 'Young Sires', 26),
(217, 15, 'mes009.jpg', 'Bel Gens', 'Nice people', 27),
(218, 15, 'mes010.jpg', 'Le Roy René', 'King René', 28),
(219, 15, 'mes011.jpg', 'Un grand Seigneur', 'A great Lord', 29),
(220, 15, 'mes012.jpg', 'Un grand Seigneur', 'A great Lord', 30),
(221, 15, 'mes013.jpg', 'Le Roy René et son Seigneur', 'King René and his Lordship', 31),
(222, 15, 'mes014.jpg', 'Le Roy René et son Seigneur, un soldat', 'King René and his Lordship, a soldier', 32),
(223, 15, 'roi001.jpg', 'Le Roy René et son Seigneur', 'King René and his Lordship', 33),
(224, 16, 'rel001.jpg', 'Le moine à la taverne', 'The monk at the inn', 1),
(225, 16, 'rel002.jpg', 'Le moine à la taverne', 'The monk at the inn', 2),
(226, 16, 'rel003.jpg', 'Un moine à la page', 'A modern monk', 3),
(227, 16, 'rel004.jpg', 'Pas très catholique tout celà...', 'Not very catholic all that...', 4),
(228, 16, 'rel005.jpg', 'Le moine, le bouffon et la Dame', 'The monk, the court jester and the Lady', 5),
(229, 16, 'rel006.jpg', 'Le moine', 'The monk', 6),
(230, 16, 'rel007.jpg', 'Les moines', 'The monks', 7),
(231, 16, 'rel009.jpg', 'Le moine et le bouffon du roy', 'The monk and the court jester', 8),
(232, 16, 'rel010.jpg', 'Oh la la...', 'Oh la la', 9),
(233, 17, 'lep001.jpg', 'Un lépreux à la taverne', 'A leper at the inn', 1),
(234, 17, 'lep006.jpg', 'Les lépreux sont en villes', 'The lepers are in town', 2),
(235, 17, 'lep013.jpg', 'De joyeux lépreux', 'Happy lepers', 3),
(236, 17, 'lep014.jpg', 'Les lépreux', 'The lepers', 4),
(237, 17, 'lep015.jpg', 'Une lépreuse', 'A leper', 5),
(238, 17, 'lep016.jpg', 'On emmène un lépreux', 'They take away a leper', 6),
(239, 17, 'lep007.jpg', 'Un lépreux', 'A leper', 7),
(240, 17, 'lep002.jpg', 'Un lépreux', 'A leper', 8),
(241, 17, 'lep003.jpg', 'Un splendide lépreux', 'A splendid leper', 9),
(242, 17, 'lep004.jpg', 'Pas peur du lépreux', 'Not afraid of the  leper', 10),
(243, 17, 'lep005.jpg', 'Une lépreuse', 'A leper', 11),
(244, 17, 'lep011.jpg', 'Un lépreux à la taverne', 'A leper at the inn', 12),
(245, 17, 'lep008.jpg', 'Fouettage des lépreux', 'Whipping of the lepers', 13),
(246, 17, 'lep009.jpg', 'Procès des lépreux', 'Trial of the lepers', 14),
(247, 17, 'lep010.jpg', 'Procès des lépreux', 'Trial of the lepers', 15),
(248, 17, 'lep012.jpg', 'Fin d''un lépreux', 'End of a leper', 16),
(249, 18, 'sor002.jpg', 'Une sorcière en ville', 'A witch in town', 1),
(250, 18, 'sor003.jpg', 'Une sorcière en ville', 'A witch in town', 2),
(251, 18, 'sor004.jpg', 'Une sorcière en ville', 'A witch in town', 3),
(252, 18, 'sor005.jpg', 'Le sourire de la sorcière', 'The smile of the witch', 4),
(253, 18, 'sor001.jpg', 'La sorcière et le mort', 'The witch and the corpse', 5),
(254, 18, 'sor006.jpg', 'La sorcière se lance dans les affaires', 'The witch starts a business', 6),
(255, 19, 'bou001.jpg', 'Le bourreau', 'The executioner', 1),
(256, 19, 'tor001.jpg', 'Une joyeuse mise à mort', 'A happy death penalty', 2),
(257, 19, 'tor002.jpg', 'Mise à mort', 'Death penalty', 3),
(258, 19, 'bou002.jpg', 'Le bourreau', 'The executioner', 4),
(259, 19, 'tor003.jpg', 'Mise à mort', 'Death penalty', 5),
(260, 19, 'tor004.jpg', 'Mise à mort du lépreux', 'Death penalty of a leper', 6),
(261, 19, 'tor005.jpg', 'Mise à mort du lépreux', 'Death penalty of a leper', 7),
(262, 19, 'bou003.jpg', 'Le bourreau', 'The executioner', 8),
(263, 19, 'tor006.jpg', 'Mise à mort', 'Death penalty', 9),
(264, 19, 'tor007.jpg', 'En attendant le bourreau', 'Waiting for the executioner', 10),
(290, 20, 'pon001.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 1),
(265, 20, 'pon010.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 2),
(266, 20, 'pon011.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 3),
(267, 20, 'pon012.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 4),
(268, 20, 'pon002.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 5),
(269, 20, 'pon013.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 6),
(270, 20, 'pon003.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 7),
(271, 20, 'pon014.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 8),
(272, 20, 'pon015.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 9),
(273, 20, 'pon016.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 10),
(274, 20, 'pon004.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 11),
(275, 20, 'pon005.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 12),
(276, 20, 'pon006.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 13),
(277, 20, 'pon007.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 14),
(278, 20, 'pon008.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 15),
(279, 20, 'pon009.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 16),
(280, 20, 'pon017.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 17),
(281, 20, 'pon018.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 18),
(282, 20, 'pon019.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 19),
(283, 20, 'pon020.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 20),
(284, 20, 'pon021.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 21),
(285, 20, 'pon022.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 22),
(286, 20, 'pon023.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 23),
(287, 20, 'pon024.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 24),
(288, 20, 'pon025.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 25),
(289, 20, 'pon026.jpg', 'Procession sur le pont Roman', 'Parade on the Romanesque bridge', 26),
(291, 21, 'dig001.jpg', 'Processions en ville : au bord de l''Eygues', 'Parade in town: by the riverside', 1),
(292, 21, 'dig002.jpg', 'Processions en ville : au bord de la rivière Eygues', 'Parade in town: by the riverside', 2),
(293, 21, 'dig003.jpg', 'Processions en ville : au bord de la rivière Eygues', 'Parade in town: by the riverside', 3),
(294, 21, 'dig004.jpg', 'Processions en ville : au bord de la rivière Eygues', 'Parade in town: by the riverside', 4),
(295, 21, 'dig005.jpg', 'Processions en ville : au bord de la rivière Eygues', 'Parade in town: by the riverside', 5),
(296, 21, 'rdd001.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 6),
(297, 21, 'rdd002.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 7),
(298, 21, 'rdd003.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 8),
(299, 21, 'rdd004.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 9),
(300, 21, 'rdd005.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 10),
(301, 21, 'rdd006.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 11),
(302, 21, 'rdd007.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 12),
(303, 21, 'rdd008.jpg', 'Processions en ville : rue des Déportés', 'Parade in town: street of the Déportés', 13),
(304, 21, 'rbb001.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 14),
(305, 21, 'rbb002.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 15),
(306, 21, 'rbb003.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 16),
(307, 21, 'rbb004.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 17),
(308, 21, 'rbb005.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 18),
(309, 21, 'rbb006.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 19),
(310, 21, 'rbb007.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 20),
(311, 21, 'rbb008.jpg', 'Processions en ville : rue des Bas-Bourgs', 'Parade in town: street of the Bas-Bourgs', 21),
(312, 22, 'nui006.jpg', 'Nyons, vue de nuit', 'Nyons, night view', 1),
(313, 22, 'nui007.jpg', 'Nyons et le pont Roman, vue de nuit', 'Nyons and the Romanesque Bridge, night view', 2),
(314, 22, 'nui005.jpg', 'Préparation de la retraite aux flambeaux', 'Getting ready for the torchlight procession', 3),
(315, 22, 'nui008.jpg', 'Préparation de la retraite aux flambeaux', 'Getting ready for the torchlight procession', 4),
(316, 22, 'nui009.jpg', 'Préparation de la retraite aux flambeaux', 'Getting ready for the torchlight procession', 5),
(317, 22, 'nui010.jpg', 'Place Saint Césaire', 'Saint Césaire Square', 6),
(318, 22, 'nui002.jpg', 'Vers la tour Randonne', 'Near the Randonne tower', 7),
(319, 22, 'nui001.jpg', 'La tour Randonne', 'The Randonne tower', 8),
(320, 22, 'nui003.jpg', 'La tour Randonne', 'The Randonne tower', 9),
(321, 22, 'nui004.jpg', 'La tour Randonne', 'The Randonne tower', 10);

-- --------------------------------------------------------

--
-- Structure de la table `galeries`
--

CREATE TABLE IF NOT EXISTS `galeries` (
  `galerieID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frTitre` varchar(120) NOT NULL,
  `gbTitre` varchar(120) NOT NULL,
  `frSousTitre` varchar(120) DEFAULT NULL,
  `gbSousTitre` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`galerieID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `galeries`
--

INSERT INTO `galeries` (`galerieID`, `frTitre`, `gbTitre`, `frSousTitre`, `gbSousTitre`) VALUES
(1, 'Inauguration du pont Roman', 'Opening of the Romanesque Bridge', 'Il y a de celà 600 ans....', 'As it was 600 years ago...'),
(2, 'Dansons dans les rues', 'Dancing in the streets', NULL, NULL),
(3, 'Dansons au bord de la rivière', 'Dancing near the river', NULL, NULL),
(4, 'Dansons sur le pont Roman', 'Dancing of the Romanesque bridge', NULL, NULL),
(5, 'Armements', 'Weaponry', NULL, NULL),
(6, 'Aubergiste', 'Inn Keeper', 'On va bien ripailler', NULL),
(7, 'Calligraphie', 'Calligraphy', NULL, NULL),
(8, 'Divers', 'Various', NULL, NULL),
(9, 'Ferronnier', 'Ironworker', NULL, NULL),
(10, 'Linge et fabriques', 'Linen and fabrics', NULL, NULL),
(11, 'Les troupes', 'The troops', 'Faites une revue des troupes', 'Review the troops'),
(12, 'Combat de rue', 'Street fight', NULL, NULL),
(13, 'Un challenge', 'A challenge', NULL, NULL),
(14, 'Le trébuchet', 'The trebuchet', 'Une arme de siège', 'A siege weapon'),
(15, 'Gentes Dames et beaux Messieurs', 'Ladies and Gentlemen', 'Un collection de robe et de costumes', 'A collection of dresses and costumes'),
(16, 'Le moine', 'The monk', '', NULL),
(17, 'Les lépreux', 'The lepers', 'Attention... Danger...', 'Warning.... Be careful...'),
(18, 'La sorcière', 'The witch', NULL, NULL),
(19, 'Peine de mort', 'Death penalty', NULL, NULL),
(20, 'Sur le pont', 'On the Bridge', NULL, NULL),
(21, 'En ville', 'In town', NULL, NULL),
(22, 'Retraite aux flambeaux', 'Torchlight parade', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `liens`
--

CREATE TABLE IF NOT EXISTS `liens` (
  `lienID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categID` int(10) unsigned NOT NULL,
  `lien` varchar(250) NOT NULL,
  `frTitle` varchar(300) NOT NULL,
  `gbTitle` varchar(300) NOT NULL,
  `frNom` varchar(120) NOT NULL,
  `gbNom` varchar(120) NOT NULL,
  `imgFichier` varchar(30) NOT NULL,
  PRIMARY KEY (`lienID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `liens`
--

INSERT INTO `liens` (`lienID`, `categID`, `lien`, `frTitle`, `gbTitle`, `frNom`, `gbNom`, `imgFichier`) VALUES
(1, 1, 'http://www.vieuxnyons.com', 'Allez sur le site de l''association Vie et Travail dans le vieux Nyons', 'Go to the web site of the association Vie et Travail dans le Vieux Nyons', 'Vie et Travail dans le vieux Nyons', 'Vie et Travail dans le vieux Nyons', 'vtvn.jpg'),
(2, 1, 'http://www.nyons.com', 'Le site internet de la mairie de Nyons', 'The website of Nyons town hall', 'Mairie de Nyons', 'Nyons Town Hall', 'mairie.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `menuID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sousMenuID` int(10) unsigned NOT NULL DEFAULT '0',
  `frNom` varchar(60) NOT NULL,
  `gbNom` varchar(60) NOT NULL,
  `frNomBread` varchar(25) NOT NULL,
  `gbNomBread` varchar(25) NOT NULL,
  `frLienTitle` varchar(150) NOT NULL,
  `gbLienTitle` varchar(150) NOT NULL,
  `fichierID` int(10) unsigned NOT NULL,
  `frActive` tinyint(4) NOT NULL DEFAULT '1',
  `gbActive` tinyint(4) NOT NULL DEFAULT '1',
  `position` tinyint(4) NOT NULL DEFAULT '1',
  `articleID` int(10) unsigned NOT NULL DEFAULT '0',
  `galerieID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `menus`
--

INSERT INTO `menus` (`menuID`, `sousMenuID`, `frNom`, `gbNom`, `frNomBread`, `gbNomBread`, `frLienTitle`, `gbLienTitle`, `fichierID`, `frActive`, `gbActive`, `position`, `articleID`, `galerieID`) VALUES
(1, 0, 'Accueil', 'Home', 'Accueil', 'Home', 'Allez &agrave; la page accueil', 'Go to the home page', 1, 1, 1, 1, 0, 0),
(2, 0, 'Histoire', 'History', 'Histoire', 'History', 'Allez &agrave; la page histoire', 'Go to the history page', 1, 1, 1, 2, 0, 0),
(3, 0, 'Programme', 'What''s on', 'Programme', 'What''s on', 'Allez &agrave; la page des programmes de nos M&eacute;di&eacute;vales', 'Go to the what''s on page at the M&eacute;di&eacute;vales', 1, 1, 1, 3, 0, 0),
(4, 0, 'M&eacute;diath&egrave;que', 'Multimedia Library', 'M&eacute;diath&egrave;que', 'Multimedia', 'Allez &agrave; la page M&eacute;diath&egrave;que', 'Go to the multimedia page', 1, 1, 1, 4, 0, 0),
(5, 0, 'Dans la presse', 'In the papers', 'Presse', 'Papers', 'Allez &agrave; la page dans la presse', 'Go to the press page', 1, 1, 1, 5, 0, 0),
(6, 0, 'Forums', 'Forums', 'Forums', 'Forums', 'Allez &agrave; la page des forums de discussions', 'Go to the forums page', 4, 0, 0, 6, 0, 0),
(7, 0, 'Liens', 'Links', 'Liens', 'Links', 'Allez &agrave; la page des liens internet', 'Go to the web links page', 7, 1, 1, 7, 0, 0),
(8, 0, 'Contactez-nous', 'Contact us', 'Contacts', 'Contacts', 'Allez &agrave; la page de contacts', 'Go to the contacts page', 8, 1, 1, 8, 0, 0),
(9, 55555, 'Mentions l&eacute;gales', 'Legal informations', 'Mentions', 'Informations', 'Allez &agrave; la page des mentions l&eacute;gales du site', 'Go to the information page of this website', 5, 1, 1, 1, 0, 0),
(10, 55555, 'Plan du site', 'Site map', 'Plan', 'Map', 'Allez &agrave; la page pr&eacute;sentant le plan du site internet', 'Go to the page presenting the site map', 6, 1, 1, 2, 0, 0),
(11, 3, 'M&eacute;di&eacute;vales 2009', 'M&eacute;di&eacute;vales 2009', 'Programme 2009', 'Events 2009', 'D&eacute;couvrez le programme des M&eacute;di&eacute;vales 2009', 'Discover the program of the M&eacute;di&eacute;vales 2009', 1, 1, 1, 2, 0, 0),
(12, 11, 'Samedi 19 septembre 2009', 'Saturday 19 September 2009', 'Samedi 19', 'Saturday 19', 'Le programme du samedi 19 septembre 2009', 'What''s on the Saturday 19 September 2009', 2, 1, 1, 1, 1, 0),
(13, 11, 'Dimanche 20 septembre 2009', 'Sunday 20 September 2009', 'Dimanche 20', 'Sunday 20', 'Le programme du dimanche 20 septembre 2009', 'What''s on the Sunday 20 September 2009', 2, 1, 1, 2, 2, 0),
(14, 3, 'M&eacute;di&eacute;vales 2010', 'M&eacute;di&eacute;vales 2010', 'Programme 2010', 'Events 2010', 'D&eacute;couvrez le programme des M&eacute;di&eacute;vales 2010', 'Discover the program of the M&eacute;di&eacute;vales 2010', 2, 1, 1, 1, 3, 0),
(15, 1, 'Pr&eacute;sentation des M&eacute;di&eacute;vales', 'Introduction to the M&eacute;di&eacute;vales', 'Pr&eacute;sentation', 'Introduction', 'Comment les  M&eacute;di&eacute;vales du pontias ont vu le jour', 'How the  M&eacute;di&eacute;vales du Pontias were created', 2, 1, 1, 1, 4, 0),
(16, 1, 'Association Vie et Travail dans le Vieux Nyons', 'Association Vie et Travail dans le Vieux Nyons', 'VTVN', 'VTVN', 'Un petit rappel sur l''Association Vie et Travail dans le Vieux Nyons', 'A little history on the Association Vie et Travail dans le Vieux Nyons', 2, 1, 1, 2, 5, 0),
(17, 1, 'Nyons', 'Nyons', 'Nyons', 'Nyons', 'Découvrez la ville de Nyons', 'Discover the town of Nyons', 2, 1, 1, 3, 6, 0),
(18, 2, 'Histoires Nyonsaises', 'Stories from Nyons', 'Histoires', 'Stories', 'Découvrez des pages d''histoires de Nyons', 'Discover some history pages from Nyons', 1, 0, 0, 1, 0, 0),
(19, 2, 'Légendes Nyonsaises', 'Legends from Nyons', 'Légendes', 'Legends', 'Découvrez les légendes Nyonsaises', 'Discover the legends from Nyons', 1, 1, 1, 2, 0, 0),
(20, 19, 'La légende du Pontias (1ère partie)', 'The legend of the Pontias (1st part)', 'Le Pontias (1)', 'The Pontias (1)', 'La légende du Pontias (première partie)', 'The legend of the Pontias (first part)', 2, 1, 1, 1, 7, 0),
(21, 19, 'La légende du Pontias (2ème partie)', 'The legend of the Pontias (2nd part)', 'Le Pontias (2)', 'The Pontias (2)', 'La légende du Pontias (deuxième partie)', 'The legend of the Pontias (second part)', 2, 1, 1, 2, 8, 0),
(22, 4, 'Médiévales 2009', 'Médiévales 2009', '2009', '2009', 'L''ensemble des médias concernant les Médiévales 2009', 'Multimedia section regarding the Médiévales 2009', 1, 1, 1, 1, 0, 0),
(23, 22, 'Albums Photo', 'Photo Albums', 'Photos', 'Photos', 'Découvrez les différentes photographies des Médiévales 2009', 'Discover the many pictures of the Médiévales 2009', 1, 1, 1, 1, 0, 0),
(24, 23, 'Inauguration du pont Roman', 'Opening of the Romanesque Bridge', 'Pont', 'Bridge', 'Les photographies de l''inauguration du pont Roman', 'The pictures of the opening of the Romanesque Bridge', 3, 1, 1, 1, 0, 1),
(25, 23, 'Les danseurs et musiciens', 'Dancers and musicians', 'Danseurs', 'Dancers', 'Parcourez les photos des danseurs et musiciens', 'Browse through the pictures ot the dancers and musicians', 1, 1, 1, 2, 0, 0),
(26, 25, 'Dansons dans les rues', 'Dancing in the streets', 'Les rues', 'The streets', 'Les photographies des danseurs dans les rues de Nyons', 'The images of the dancers in the streets of Nyons', 3, 1, 1, 1, 0, 2),
(27, 25, 'Dansons au bord de la rivière', 'Dancing near the river', 'La rivière', 'The river', 'Les photographies des danseurs près de la rivière', 'The images of the dancers near the river', 3, 1, 1, 2, 0, 3),
(28, 25, 'Dansons sur le pont Roman', 'Dancing on the Romanesque bridge', 'Le pont', 'The Bridge', 'Les photographies des danseurs sur le pont Roman', 'The images of the dancers on the Romanesque Bridge', 3, 1, 1, 3, 0, 4),
(29, 23, 'Marchands et exposants', 'Trade Merchants', 'Marchands', 'Merchants', 'Parcourez les photos des marchands présents sur les Médiévales 2009', 'Browse through the pictures ot the merchants present at the Médiévales 2009', 1, 1, 1, 3, 0, 0),
(30, 29, 'Armements', 'Weaponery', 'Armements', 'Weaponery', 'Découvrez les marchands d''armement présent  sur les Médiévales 2009', 'Discover the weapons merchants on the  Médiévales 2009', 3, 1, 1, 1, 0, 5),
(31, 29, 'Aubergiste', 'Inn Keeper', 'Aubergiste', 'Inn Keeper', 'Découvrez l''aubergiste des Médiévales 2009', 'Find out about the Inn Keeper of the Médiévales 2009', 3, 1, 1, 2, 0, 6),
(32, 29, 'Calligraphie', 'Calligraphy', 'Calligraphie', 'Calligraphy', 'Découvrez les calligraphes présents  sur les Médiévales 2009', 'Find out about the calligaphers on the  Médiévales 2009', 3, 1, 1, 3, 0, 7),
(33, 29, 'Divers', 'Various', 'Divers', 'Various', 'Découvrez d''autres photos des marchands des Médiévales 2009', 'Find out about more pictures of the merchants of the Médiévales 2009', 3, 1, 1, 4, 0, 8),
(34, 29, 'Ferronnier', 'Ironworker', 'Ferronnier', 'Ironworker', 'Découvrez les ferronniers présents  sur les Médiévales 2009', 'Find out about the ironworkers on the  Médiévales 2009', 3, 1, 1, 5, 0, 9),
(35, 29, 'Linge et fabriques', 'Linen and fabrics', 'Fabriques', 'Fabrics', 'Découvrez les marchands de fabriques présent  sur les Médiévales 2009', 'Find out about the linen merchants on the  Médiévales 2009', 3, 1, 1, 6, 0, 10),
(36, 23, 'Hommes d''armes', 'Army men', 'Armée', 'Army', 'Parcourez les photos des armées présentes', 'Browse through the pictures of the armies', 1, 1, 1, 4, 0, 0),
(37, 36, 'Les troupes', 'The troops', 'Troupes', 'Troops', 'Faites une revue des troupes', 'A review of the troops', 3, 1, 1, 1, 0, 11),
(38, 36, 'Combat de rue', 'Street fight', 'Combat', 'Fight', 'Un combat de rue', 'A street fight', 3, 1, 1, 2, 0, 12),
(39, 36, 'Un challenge', 'A challenge', 'Challenge', 'Challenge', 'Un challenge entre deux soldats', 'A challenge between two soldiers', 3, 1, 1, 3, 0, 13),
(40, 36, 'Le trébuchet', 'The trebuchet', 'Trébuchet', 'Trebuchet', 'Une arme de siège : le trébuchet', 'A siege weapon : the trebuchet', 3, 1, 1, 4, 0, 14),
(41, 23, 'Gentes Dames et beaux Messieurs', 'Ladies and Gentlemen', 'Bel gens', 'Fine people', 'Une collection de costumes portés par de belles Dames et beaux Messieurs', 'A collection of costumes worn by lovely Ladies and Gentlemen', 3, 1, 1, 5, 0, 15),
(42, 23, 'Mystère et Sacré', 'Mystery and Sacred', 'Mystère', 'Mystery', 'Le sacré, la religion, la mort et le mystère dans le moyen âge', 'The sacred, the religion, death and mystery in the middle ages', 1, 1, 1, 6, 0, 0),
(43, 42, 'Le moine', 'The monk', 'Moine', 'Monk', 'Quelques photos du moine local', 'Some pictures from the local monk', 3, 1, 1, 1, 0, 16),
(44, 42, 'Les Lépreux', 'The lepers', 'Lépreux', 'Lepers', 'Attention, les lépreux sont en ville...', 'Careful, the lepers are in town...', 3, 1, 1, 2, 0, 17),
(45, 42, 'La sorcière', 'The witch', 'Sorcière', 'Witch', 'Découvrez la sorcière', 'Come to meet the witch', 3, 1, 1, 3, 0, 18),
(46, 42, 'Peine de mort', 'Death penalty', 'Mort', 'Death', 'Le bourreau au travail', 'The executioner at work', 3, 1, 1, 4, 0, 19),
(47, 23, 'Processions', 'Parades', 'Processions', 'Parades', 'Les différentes processions des Médiévales 2009', 'The different parades from the Médiévales 2009', 1, 1, 1, 7, 0, 0),
(48, 47, 'Sur le pont', 'On the bridge', 'Pont', 'Bridge', 'Photographies de la procession du pont Roman', 'Pictures of the parade of the Romanesque Bridge', 3, 1, 1, 1, 0, 20),
(49, 47, 'En Ville', 'In town', 'Ville', 'Town', 'Photographies des processions en ville', 'Pictures of the parades in town', 3, 1, 1, 2, 0, 21),
(50, 47, 'Retraite aux flambeaux', 'Torchlight parade', 'Flambeaux', 'Torchlight', 'Photographies de la retraite aux flambeaux', 'Pictures of the torchlight parade', 3, 1, 1, 3, 0, 22),
(51, 22, 'Exposants aux Médiévales', 'Exhibitors at the Médiévales', 'Exposants', 'Exhibitors', 'Liste des exposants ayant participé aux Médiévales du Pontias 2009', 'List of the exhibitors who took part in the Médiévales du Pontias 2009', 9, 1, 1, 3, 0, 0),
(52, 22, 'Discours du pont', 'Speech of the bridge', 'Discours', 'Speech', 'Le discours du pont Roman', 'The speech from the Romanesque Bridge', 2, 1, 1, 4, 9, 0),
(53, 22, 'Affiche des Médiévales', 'Poster of the Médiévales', 'Affiche', 'Poster', 'Découvrez l''affiche des médiévales 2009', 'Discover the poster of the médiévales 2009', 2, 1, 1, 5, 10, 0),
(54, 5, 'Médiévales 2009', 'Médiévales 2009', '2009', '2009', 'Retrouvez les articles de presse sur les Médiévales 2009', 'Read what the press had to say about the Médiévales 2009', 1, 1, 1, 1, 0, 0),
(55, 54, 'Le Dauphiné Libéré', 'Le Dauphiné Libéré', 'Le Dauphiné Libéré', 'Le Dauphiné Libéré', 'Les articles du Dauphiné libéré sur les Médiévales 2009', 'The news from the Dauphiné libéré on the Médiévales 2009', 1, 1, 1, 2, 0, 0),
(56, 54, 'La Tribune', 'La Tribune', 'La Tribune', 'La Tribune', 'Retrouvez les articles publiés dans la Tribune sur les Médiévales 2009', 'Read what the Tribune had to say about the Médiévales 2009', 1, 1, 1, 1, 0, 0),
(57, 55, 'A la recherche de figurants', 'Looking for extras', 'paru le 4/08/2009', 'published the 4/08/2009', 'Article du Dauphiné libéré paru le 4/08/2009', 'News from the Dauphiné libéré published the 4/08/2009', 2, 1, 1, 1, 11, 0),
(58, 55, 'Le pont Roman', 'The Romanesque bridge', 'paru le 27/09/2009', 'published the 27/09/2009', 'Article du Dauphiné libéré paru le 27/09/2009', 'News from the Dauphiné libéré published the 27/09/2009', 2, 1, 1, 2, 12, 0),
(59, 55, 'Pari tenu : la fête a été une vraie réussite', 'Well done: the festival was a great success', 'paru le 3/10/2009', 'published the 3/10/2009', 'Article du Dauphiné libéré paru le 3/10/2009', 'News from the Dauphiné libéré published the 3/10/2009', 2, 1, 1, 3, 13, 0),
(60, 55, 'Retour sur l''année du pont', 'Looking back on the year of the bridge', 'paru le 15/12/2009', 'published the 15/12/2009', 'Article du Dauphiné libéré paru le 15/12/2009', 'News from the Dauphiné libéré published the 15/12/2009', 2, 1, 1, 4, 14, 0),
(61, 56, 'Dans le bain médiéval du Pontias', 'In the medival atmosphere of the Pontias', 'paru le 24/09/2009', 'published the 24/09/2009', 'Article de la Tribune paru le 24/09/2009', 'News from the Tribune published the 24/09/2009', 2, 1, 1, 1, 15, 0),
(62, 56, 'Ils comptent bien remettre ça !', 'They will do it again!', 'paru le 8/10/2009', 'published the 8/10/2009', 'Article de la Tribune paru le 8/10/2009', 'News from the Tribune published the 8/10/2009', 2, 1, 1, 1, 16, 0),
(63, 22, 'Films', 'Movies', 'Films', 'Movies', 'Découvrez les courts métrages des Médiévales 2009', 'Discover the short movies from the 2009 Médiévales', 1, 1, 1, 2, 0, 0),
(64, 63, 'Le film des Médiévales', 'The Movie of the Médiévales', 'Film principal', 'Main movie', 'Le film des Médiévales 2009', 'The movie of the 2009 Médiévales', 10, 1, 1, 1, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
