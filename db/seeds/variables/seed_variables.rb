module SeedVariables

  def self.lorem_str(length)
    @@lorem_str[0, length].join('\n')
  end

  def self.bacon_str(length)
    @@bacon_str[0, length].join('\n')
  end

  @@lorem_str = [
                  'Lorem ipsum dolor sit amet, vim admodum invidunt recusabo ei, et eam quot dicunt commune.'\
                  ' Mei fuisset nostrum an. Id prima vituperata eos, quo ex scaevola consulatu.'\
                  ' Facer epicurei sensibus et eos, ea dolore iisque temporibus sea.'\
                  ' Nulla docendi offendit has cu, cu nominavi efficiendi disputationi vis.'\
                  ' Cum te elitr deserunt, fugit facilisis ut pro, viderer tacimates te pri.',
                  'Vix no essent conceptam, eos liber veritus dissentiunt ei, vix enim debitis adversarium te.'\
                  ' Sit ex alii electram salutatus.'\
                  ' Ea mei suas aliquid ancillae.'\
                  ' Qui eu quod iuvaret.'\
                  ' Mel amet moderatius an, ea cum solum quaerendum.'\
                  ' Sed brute luptatum neglegentur no.',
                  'Te per sale prima ignota.'\
                  ' Ipsum nonumes ne duo, no praesent accusamus vix, et invenire maiestatis instructior ius.'\
                  ' Ad graeco dignissim reformidans pri, paulo facilisi ius te, mundi zril signiferumque mei no.'\
                  ' Verear dissentiet mel ei.',
                  'Et eos ludus zril.'\
                  ' Vero dissentiunt conclusionemque ea mei, quo eleifend mnesarchum at, ridens blandit nominati ex nec.'\
                  ' Mea cu nihil dicunt.'\
                  ' Duo viris iisque oblique et.',
                  'Ad elit lorem ius, brute fuisset urbanitas pro eu, tollit patrioque ex nam.'\
                  ' Quo malis eruditi blandit cu, ut est minim possit causae.'\
                  ' Mei id phaedrum accommodare voluptatibus.'\
                  ' Audiam philosophia in mei.'\
                  ' Malorum forensibus cum et.'\
                  ' Mundi vituperatoribus ei eam, cu graeco scaevola detraxit has.',
                  'Quo no veri quaeque mentitum.'\
                  ' At nihil noster vivendo eam, apeirian assentior persequeris qui in.'\
                  ' Hinc cibo eloquentiam id sed, te nec tollit laoreet.'\
                  ' Quot albucius forensibus ut has.'\
                  ' Graecis mnesarchum sadipscing est ut, verterem indoctum iracundia et his.'\
                  ' In mediocrem conclusionemque has.',
                  'Mundi impetus singulis ei mel, brute euripidis ex eos.'\
                  ' No est legere laoreet omnesque, an porro dolore cum.'\
                  ' In indoctum consequuntur vel.'\
                  ' Cu vel sint instructior, no tota putant dicunt vim.'\
                  ' Purto probatus ne vim, at duo reque aeterno molestiae.'\
                  ' Te fugit causae timeam usu, atqui ornatus neglegentur vel ea, ea per odio choro equidem.'\
                  ' Cu pericula contentiones duo.',
                  'Libris putent te vel.'\
                  ' Sea tale etiam ea, in perfecto adversarium per.'\
                  ' Esse tantas diceret vel an, sit ea graece dictas moderatius.'\
                  ' Eam te suscipit legendos assentior, ne idque lobortis elaboraret vel.',
                  'Viris detracto gubergren vel ne, solet laoreet suscipit te vim.'\
                  ' Pri id brute appellantur vituperatoribus, vero feugait eu per.'\
                  ' Eos at modo molestie.'\
                  ' Nam nostro oporteat cu.'\
                  ' Molestie quaestio vim no.',
                  'Eum ei tota aeque, nibh possit inimicus cum no.'\
                  ' Possim impetus suscipiantur per ex, eligendi prodesset ius te, et amet laboramus quo.'\
                  ' Rebum vidisse facilisi cu mei.'\
                  ' Oblique tibique legendos eos in, ex eirmod alterum vocibus nam.'\
                  ' Eam platonem volutpat ne.'\
                  ' Accusam corrumpit at has.'
                ]
  @@bacon_str = [
                  'Bacon ipsum dolor amet hamburger sausage capicola, alcatra shank shoulder jerky porchetta. Andouille leberkas t-bone tail boudin, chicken pork bacon beef tongue.'\
                  ' Turkey shoulder pig swine, rump tongue ground round biltong meatball bresaola bacon boudin.'\
                  ' Prosciutto swine andouille, chuck kevin pork loin ball tip meatloaf ham hock frankfurter ground round picanha turkey sausage.'\
                  ' Beef frankfurter pastrami, short loin capicola pancetta kielbasa hamburger pork belly.'\
                  ' Andouille bacon tri-tip ground round pork loin strip steak pork chop kielbasa beef ribs prosciutto hamburger tail filet mignon.'\
                  ' Salami jowl pork chop short loin fatback ribeye turkey short ribs.',
                  'Ground round pastrami corned beef, frankfurter andouille porchetta boudin short loin beef beef ribs brisket turkey fatback.'\
                  ' Kevin swine turkey jerky pork belly brisket.'\
                  ' Swine filet mignon turducken ground round.'\
                  ' Jowl salami rump filet mignon ham.',
                  'Pork belly doner venison, swine brisket ham hock tri-tip porchetta drumstick chicken beef jowl prosciutto corned beef.'\
                  ' Frankfurter sausage strip steak shankle brisket drumstick.'\
                  ' Tail leberkas ribeye ground round short loin meatloaf.'\
                  ' Pastrami biltong strip steak turkey pork loin leberkas ball tip alcatra chicken swine spare ribs cupim frankfurter tail pancetta.'\
                  ' Tongue landjaeger bresaola picanha, filet mignon sausage ham t-bone spare ribs brisket capicola doner beef shank.'\
                  ' Kielbasa jowl chuck bacon pork belly beef ribs prosciutto fatback ham.',
                  'Doner cupim fatback tenderloin brisket ham.'\
                  ' Fatback drumstick venison shank doner turducken jowl pork.'\
                  ' Pork belly tail pancetta tenderloin brisket beef alcatra turducken ribeye shank bacon capicola shankle.'\
                  ' Ground round cupim cow tri-tip, bacon pork loin rump tongue ribeye pastrami kevin leberkas.'\
                  ' Pork belly landjaeger pig rump venison pork. Tenderloin brisket sausage pastrami strip steak.'\
                  ' Chuck doner tri-tip spare ribs.',
                  'Short loin boudin venison kielbasa doner short ribs sausage ground round capicola pork jerky brisket swine shankle andouille.'\
                  ' Turducken chuck boudin tri-tip filet mignon spare ribs ribeye pork loin.'\
                  ' Turducken pancetta swine alcatra beef tongue short ribs chicken bacon, ribeye hamburger cupim.'\
                  ' Tri-tip filet mignon landjaeger turkey cupim.'\
                  ' Beef short ribs picanha leberkas, flank shoulder prosciutto strip steak rump pancetta ham.'\
                  ' Pork chop cow t-bone leberkas andouille, jerky venison prosciutto chicken filet mignon tongue cupim.'\
                  ' Kevin boudin hamburger pork chop picanha ham sausage rump frankfurter turkey bacon chuck andouille.',
                  'Salami picanha porchetta, short loin turkey ball tip filet mignon pastrami tongue pancetta bresaola.'\
                  ' Porchetta t-bone prosciutto cow picanha.'\
                  ' Frankfurter tenderloin fatback alcatra tongue rump andouille landjaeger.'\
                  ' Bacon andouille shank corned beef prosciutto pork ham.',
                  'Jerky bacon sausage beef ribs, biltong filet mignon chuck kielbasa venison rump tongue brisket.'\
                  ' Turkey pork belly short loin meatloaf pancetta. Cupim brisket sausage, shank short loin pastrami fatback ham filet mignon.'\
                  ' Ball tip pork tenderloin pork loin meatloaf short ribs rump pork belly biltong.'\
                  ' Tri-tip swine alcatra corned beef, sausage chicken shank sirloin biltong.',
                  'Spare ribs jerky jowl kevin, tenderloin drumstick leberkas picanha flank.'\
                  ' Frankfurter pork chop pastrami beef ribs kielbasa salami bacon fatback rump biltong tail venison.'\
                  ' Pancetta capicola kielbasa kevin alcatra pork chop ground round rump landjaeger sirloin jerky.'\
                  ' Frankfurter beef cow tongue, landjaeger short loin beef ribs meatloaf tenderloin shankle swine pig.',
                  'Pork chop cupim venison shankle.'\
                  ' Ball tip kevin tri-tip biltong, short loin ham hock picanha pork chop.'\
                  ' Pork kevin doner hamburger rump meatloaf boudin chuck.'\
                  ' Turducken turkey jowl beef.',
                  'Ground round t-bone tongue rump beef ribs.'\
                  ' Strip steak fatback capicola, shoulder ground round ribeye ham hock.'\
                  ' Biltong hamburger sirloin, flank alcatra venison drumstick cupim tenderloin picanha pork belly ground round spare ribs.'\
                  ' Pastrami boudin pork chop swine bresaola porchetta short ribs ham jerky flank beef landjaeger spare ribs picanha.'\
                  ' Beef ribs ground round ribeye pig pancetta.'\
                  ' Frankfurter venison kielbasa, meatloaf meatball corned beef boudin doner bresaola jowl short loin shank tail landjaeger.'\
                  ' Spare ribs sausage andouille prosciutto, flank tail bresaola tenderloin beef ribs leberkas.'
                ]

end
