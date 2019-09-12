// This file is part of the dune-xt-la project:
//   https://github.com/dune-community/dune-xt-la
// Copyright 2009-2017 dune-xt-la developers and contributors. All rights reserved.
// License: Dual licensed as BSD 2-Clause License (http://opensource.org/licenses/BSD-2-Clause)
//      or  GPL-2.0+ (http://opensource.org/licenses/gpl-license)
//          with "runtime exception" (http://www.dune-project.org/license.html)
// Authors:
//   Felix Schindler (2013 - 2017)
//   Rene Milk       (2014 - 2016)
//   Tobias Leibner  (2014 - 2015, 2017)

#include <dune/xt/common/test/main.hxx> // <- has to come first (includes the config.h)!

#include <dune/xt/la/test/matrixinverter.hh>

{% for T_NAME, TESTMATRIXTYPE in config.testtypes %}
struct MatrixInverterForComplexMatrix_{{T_NAME}}
: public MatrixInverterTest<{{TESTMATRIXTYPE}}>
{
  using BaseType = MatrixInverterTest;
  using typename BaseType::MatrixType;

  /**
       Tests inversion of a more complicated (random) matrix.
           "[0.399257770613576+0.281005302533871i  0.106216344928664+0.676122303863752i  0.422835615008808+0.780519652731358i 0.666527913402587+0.770159728608609i  0.368916546063895+0.607389213768347i  0.120611613297162+0.576209380663007i 0.982663399721950+0.709281702710545i  0.022512592740232+0.416158589969796i  0.699887849928292+0.119214541054191i 0.968649330231094+0.993704624120852i;"
           " 0.526875830508296+0.440085139001721i  0.372409740055537+0.289064571674477i  0.547870901214845+0.675332065747000i 0.178132454400338+0.322471807186779i  0.460725937260412+0.191745255461798i  0.589507484695059+0.683363243294653i 0.730248792267598+0.236230576993797i  0.425259320214135+0.841929152691309i  0.638530758271838+0.939829470344921i 0.531333906565674+0.218676632399634i;"
           " 0.416799467930787+0.527142741760652i  0.198118402542975+0.671808165414215i  0.942736984276934+0.006715314318477i 0.128014399720173+0.784739294760742i  0.981637950970750+0.738426839976942i  0.226187679752676+0.546593114590323i 0.343877004114983+0.119396247797306i  0.312718886820616+0.832916819075216i  0.033603836066429+0.645551874972524i 0.325145681820560+0.105798273250228i;"
           " 0.656859890973707+0.457424365687674i  0.489687638016024+0.695140499551737i  0.417744104316662+0.602170487581795i 0.999080394761361+0.471357153710612i  0.156404952226563+0.242849598318169i  0.384619124369411+0.425728841871188i 0.584069333278452+0.607303940685635i  0.161484744311750+0.256440992229147i  0.068806099118051+0.479463224948888i 0.105629203329022+0.109697464523194i;"
           " 0.627973359190104+0.875371598604185i  0.339493413390758+0.067992768470011i  0.983052466469856+0.386771194520985i 0.171121066356432+0.035762733269118i  0.855522805845911+0.917424342049382i  0.582986382747674+0.644442781431336i 0.107769015243743+0.450137696965896i  0.178766186752368+0.613460736812875i  0.319599735180496+0.639316961040108i 0.610958658746201+0.063591370975106i;"
           " 0.291984079961715+0.518052108361104i  0.951630464777727+0.254790156597005i  0.301454948712065+0.915991244131425i 0.032600820530528+0.175874415683531i  0.644764536870088+0.269061586686018i  0.251806122472313+0.647617630172684i 0.906308150649733+0.458725493648868i  0.422885689100085+0.582249164527227i  0.530864280694127+0.544716110526763i 0.778802241824093+0.404579995857626i;"
           " 0.431651170248720+0.943622624548388i  0.920332039836564+0.224040030824219i  0.701098755900926+0.001151057129107i 0.561199792709660+0.721758033391102i  0.376272210278832+0.765500016621438i  0.290440664276979+0.679016754093202i 0.879653724481905+0.661944751905652i  0.094229338887735+0.540739337124410i  0.654445707757066+0.647311480293128i 0.423452918962738+0.448372912066495i;"
           " 0.015487125636019+0.637709098072174i  0.052676997680793+0.667832727013717i  0.666338851584426+0.462449159242329i 0.881866500451810+0.473485992965320i  0.190923695236303+0.188661976791491i  0.617090884393223+0.635786710514084i 0.817760559370642+0.770285514803660i  0.598523668756741+0.869941032358007i  0.407619197041153+0.543885933999639i 0.090823285787439+0.365816176838171i;"
           " 0.984063724379154+0.957693939841583i  0.737858095516997+0.844392156527205i  0.539126465042857+0.424349039815375i 0.669175304534394+0.152721200438232i  0.428252992979386+0.287498173066131i  0.265280909810029+0.945174113109401i 0.260727999055465+0.350218013441105i  0.470924256358334+0.264779026475630i  0.819981222781941+0.721046620579811i 0.266471490779072+0.763504640848813i;"
           " 0.167168409914656+0.240707035480160i  0.269119426398556+0.344462411301042i  0.698105520180308+0.460916366028964i 0.190433267179954+0.341124607049109i  0.482022061031856+0.091113463686535i  0.824376266688835+0.208934922426023i 0.594356250664331+0.662009598359135i  0.695949313301608+0.318074075481059i  0.718358943205884+0.522495305777102i 0.153656717591307+0.627896379614169i]"
       The inverse (as calculated by matlab) is
           "[-0.156829993800038+0.954961647219387i  0.160109016702197+0.042518577057420i  0.558736202741750+0.150128049251308i  0.450446953514766-0.066698033239202i  0.092590787643696-0.087531546981444i  0.309013233379051-0.095397915536781i -0.653899687013851-0.083619946080346i  0.522984701536540-0.106956506077628i  0.154133131260962-0.586514374776924i -1.147333843249005-0.482894568804661i;"
           " -0.930079752555575+0.078131616654404i -0.277291721546798-0.288237852843088i  0.482945370688320+0.123309846771226i  0.350048198621993-0.110491727410257i -0.392961062174054+0.498537623043663i  0.661380837131932+0.455574247045707i  0.106410491361922-0.251140740716883i -0.017804460947615+0.649313520218326i  0.209956231465380-0.458645614757171i  0.194580208898133-0.726651479250316i;"
           " -0.061724605196963+0.275508147208726i -0.404509370486589+0.150009658135659i  0.412277238653294+0.108172896343438i -0.126552915011483-0.598507488422286i  0.199003708749759+0.003412356007678i  0.070489018912472-0.499388197819412i -0.395676415976603+0.459068486635361i  0.602356355139785+0.347141547184500i  0.255498517926107-0.175430282856380i -0.305779727317299-0.507606903528187i;"
           "  0.211280685893314+0.128905826309407i -0.172767146662657-0.126319653857506i -0.110238305168059-0.503597059003591i  0.356122582602014-0.341681795038303i  0.356656193015655+0.401098320321138i -0.131128593666825+0.057453717496001i -0.205002161007055-0.166667381486490i  0.286136630841707+0.270381084448340i -0.157940310155616+0.187469731974027i -0.283951607459824-0.225995598351067i;"
           " -0.010316097727611-0.816067894149421i -0.616202530744106+0.196678955271152i -0.142126972543852+0.171758507758822i  0.029746365831594-0.019352213381424i -0.033078371099400-0.370027786866368i  0.017489079932031+0.168880443760544i  0.227533101518921-0.563944405755268i -1.006489013797571+0.512500256971986i  0.303452454429293+0.708503509005146i  1.402770326550243+0.232189239167579i;"
           " -0.811126615400058-1.080025883962322i  0.661327257667141+0.341480461022603i -0.258354001747820+0.608051605459458i  0.291538696030068+0.804072530476432i -0.516267677778539+0.326657442871284i -1.107715720852450+0.557774714028217i  0.603448734658589-0.815663639464880i -1.007297318179535+0.298481903078624i  0.197096012557548-0.236437747077903i  2.277258355349377-0.099559194822284i;"
           "  0.526645819334563-0.485583627511043i  0.022618067247273+0.523053037804016i -0.427459782830182+0.370070209183012i -0.089275723160839+0.015499210346850i -0.531353579991388-0.703053319185068i -0.167151744440585-0.456045271702304i  0.723379624191477+0.103582321043026i -0.387201156345440-0.764710810483353i -0.213894777447623+0.491876269154722i  0.337388618829208+0.954262078667158i;"
           "  0.836878657817916+1.431699388115567i -0.541689667341623-0.302035951934665i  0.519197519344831-1.137121824619385i -0.320231504169125-0.020311786037073i  0.637311520993043+0.197343750000536i  1.048908968209227-0.814192480669865i -0.856031291387641+0.898333585566306i  1.424936723150033-1.545394166508538i -0.890707876807630-0.306787537140714i -2.055817340094584+0.887557736690683i;"
           "  0.180439321239906-0.721408568535744i  0.352343723024593-1.047833207940214i -0.935461750983084+0.408255433512194i -0.313125352357895-0.014037192229730i -0.070181598434857-0.484797252881383i -0.353714276564593+0.569685840997600i  0.785006162109666-0.138107945650736i -0.788038588272694+0.534164839635594i  0.440254541384485+0.694154793978041i  0.594612268127552+0.345841175565208i;"
           "  0.640988203747174+0.455186755619606i  0.673059813224278+0.237330279395844i  0.017371029886246-0.874889178106680i -0.287951046755518+0.226748835882598i  0.774021924828123+0.324319416960709i  0.054447915125014-0.092434199877816i -0.546318786847837+0.663999195493326i  0.485554135204149-0.522958808963173i -0.629222744700384-0.442670626705970i -1.214343499620117-0.415114267997771i]"
   */
  MatrixInverterForComplexMatrix_{{T_NAME}}()
  {
    matrix_ = XT::Common::from_string<MatrixType>("[0.399257770613576+0.281005302533871i  0.106216344928664+0.676122303863752i  0.422835615008808+0.780519652731358i 0.666527913402587+0.770159728608609i  0.368916546063895+0.607389213768347i  0.120611613297162+0.576209380663007i 0.982663399721950+0.709281702710545i  0.022512592740232+0.416158589969796i  0.699887849928292+0.119214541054191i 0.968649330231094+0.993704624120852i;"
                                                  " 0.526875830508296+0.440085139001721i  0.372409740055537+0.289064571674477i  0.547870901214845+0.675332065747000i 0.178132454400338+0.322471807186779i  0.460725937260412+0.191745255461798i  0.589507484695059+0.683363243294653i 0.730248792267598+0.236230576993797i  0.425259320214135+0.841929152691309i  0.638530758271838+0.939829470344921i 0.531333906565674+0.218676632399634i;"
                                                  " 0.416799467930787+0.527142741760652i  0.198118402542975+0.671808165414215i  0.942736984276934+0.006715314318477i 0.128014399720173+0.784739294760742i  0.981637950970750+0.738426839976942i  0.226187679752676+0.546593114590323i 0.343877004114983+0.119396247797306i  0.312718886820616+0.832916819075216i  0.033603836066429+0.645551874972524i 0.325145681820560+0.105798273250228i;"
                                                  " 0.656859890973707+0.457424365687674i  0.489687638016024+0.695140499551737i  0.417744104316662+0.602170487581795i 0.999080394761361+0.471357153710612i  0.156404952226563+0.242849598318169i  0.384619124369411+0.425728841871188i 0.584069333278452+0.607303940685635i  0.161484744311750+0.256440992229147i  0.068806099118051+0.479463224948888i 0.105629203329022+0.109697464523194i;"
                                                  " 0.627973359190104+0.875371598604185i  0.339493413390758+0.067992768470011i  0.983052466469856+0.386771194520985i 0.171121066356432+0.035762733269118i  0.855522805845911+0.917424342049382i  0.582986382747674+0.644442781431336i 0.107769015243743+0.450137696965896i  0.178766186752368+0.613460736812875i  0.319599735180496+0.639316961040108i 0.610958658746201+0.063591370975106i;"
                                                  " 0.291984079961715+0.518052108361104i  0.951630464777727+0.254790156597005i  0.301454948712065+0.915991244131425i 0.032600820530528+0.175874415683531i  0.644764536870088+0.269061586686018i  0.251806122472313+0.647617630172684i 0.906308150649733+0.458725493648868i  0.422885689100085+0.582249164527227i  0.530864280694127+0.544716110526763i 0.778802241824093+0.404579995857626i;"
                                                  " 0.431651170248720+0.943622624548388i  0.920332039836564+0.224040030824219i  0.701098755900926+0.001151057129107i 0.561199792709660+0.721758033391102i  0.376272210278832+0.765500016621438i  0.290440664276979+0.679016754093202i 0.879653724481905+0.661944751905652i  0.094229338887735+0.540739337124410i  0.654445707757066+0.647311480293128i 0.423452918962738+0.448372912066495i;"
                                                  " 0.015487125636019+0.637709098072174i  0.052676997680793+0.667832727013717i  0.666338851584426+0.462449159242329i 0.881866500451810+0.473485992965320i  0.190923695236303+0.188661976791491i  0.617090884393223+0.635786710514084i 0.817760559370642+0.770285514803660i  0.598523668756741+0.869941032358007i  0.407619197041153+0.543885933999639i 0.090823285787439+0.365816176838171i;"
                                                  " 0.984063724379154+0.957693939841583i  0.737858095516997+0.844392156527205i  0.539126465042857+0.424349039815375i 0.669175304534394+0.152721200438232i  0.428252992979386+0.287498173066131i  0.265280909810029+0.945174113109401i 0.260727999055465+0.350218013441105i  0.470924256358334+0.264779026475630i  0.819981222781941+0.721046620579811i 0.266471490779072+0.763504640848813i;"
                                                  " 0.167168409914656+0.240707035480160i  0.269119426398556+0.344462411301042i  0.698105520180308+0.460916366028964i 0.190433267179954+0.341124607049109i  0.482022061031856+0.091113463686535i  0.824376266688835+0.208934922426023i 0.594356250664331+0.662009598359135i  0.695949313301608+0.318074075481059i  0.718358943205884+0.522495305777102i 0.153656717591307+0.627896379614169i]");

    expected_inverse_ = XT::Common::from_string<MatrixType>("[-0.156829993800038+0.954961647219387i  0.160109016702197+0.042518577057420i  0.558736202741750+0.150128049251308i  0.450446953514766-0.066698033239202i  0.092590787643696-0.087531546981444i  0.309013233379051-0.095397915536781i -0.653899687013851-0.083619946080346i  0.522984701536540-0.106956506077628i  0.154133131260962-0.586514374776924i -1.147333843249005-0.482894568804661i;"
                                                            " -0.930079752555575+0.078131616654404i -0.277291721546798-0.288237852843088i  0.482945370688320+0.123309846771226i  0.350048198621993-0.110491727410257i -0.392961062174054+0.498537623043663i  0.661380837131932+0.455574247045707i  0.106410491361922-0.251140740716883i -0.017804460947615+0.649313520218326i  0.209956231465380-0.458645614757171i  0.194580208898133-0.726651479250316i;"
                                                            " -0.061724605196963+0.275508147208726i -0.404509370486589+0.150009658135659i  0.412277238653294+0.108172896343438i -0.126552915011483-0.598507488422286i  0.199003708749759+0.003412356007678i  0.070489018912472-0.499388197819412i -0.395676415976603+0.459068486635361i  0.602356355139785+0.347141547184500i  0.255498517926107-0.175430282856380i -0.305779727317299-0.507606903528187i;"
                                                            "  0.211280685893314+0.128905826309407i -0.172767146662657-0.126319653857506i -0.110238305168059-0.503597059003591i  0.356122582602014-0.341681795038303i  0.356656193015655+0.401098320321138i -0.131128593666825+0.057453717496001i -0.205002161007055-0.166667381486490i  0.286136630841707+0.270381084448340i -0.157940310155616+0.187469731974027i -0.283951607459824-0.225995598351067i;"
                                                            " -0.010316097727611-0.816067894149421i -0.616202530744106+0.196678955271152i -0.142126972543852+0.171758507758822i  0.029746365831594-0.019352213381424i -0.033078371099400-0.370027786866368i  0.017489079932031+0.168880443760544i  0.227533101518921-0.563944405755268i -1.006489013797571+0.512500256971986i  0.303452454429293+0.708503509005146i  1.402770326550243+0.232189239167579i;"
                                                            " -0.811126615400058-1.080025883962322i  0.661327257667141+0.341480461022603i -0.258354001747820+0.608051605459458i  0.291538696030068+0.804072530476432i -0.516267677778539+0.326657442871284i -1.107715720852450+0.557774714028217i  0.603448734658589-0.815663639464880i -1.007297318179535+0.298481903078624i  0.197096012557548-0.236437747077903i  2.277258355349377-0.099559194822284i;"
                                                            "  0.526645819334563-0.485583627511043i  0.022618067247273+0.523053037804016i -0.427459782830182+0.370070209183012i -0.089275723160839+0.015499210346850i -0.531353579991388-0.703053319185068i -0.167151744440585-0.456045271702304i  0.723379624191477+0.103582321043026i -0.387201156345440-0.764710810483353i -0.213894777447623+0.491876269154722i  0.337388618829208+0.954262078667158i;"
                                                            "  0.836878657817916+1.431699388115567i -0.541689667341623-0.302035951934665i  0.519197519344831-1.137121824619385i -0.320231504169125-0.020311786037073i  0.637311520993043+0.197343750000536i  1.048908968209227-0.814192480669865i -0.856031291387641+0.898333585566306i  1.424936723150033-1.545394166508538i -0.890707876807630-0.306787537140714i -2.055817340094584+0.887557736690683i;"
                                                            "  0.180439321239906-0.721408568535744i  0.352343723024593-1.047833207940214i -0.935461750983084+0.408255433512194i -0.313125352357895-0.014037192229730i -0.070181598434857-0.484797252881383i -0.353714276564593+0.569685840997600i  0.785006162109666-0.138107945650736i -0.788038588272694+0.534164839635594i  0.440254541384485+0.694154793978041i  0.594612268127552+0.345841175565208i;"
                                                            "  0.640988203747174+0.455186755619606i  0.673059813224278+0.237330279395844i  0.017371029886246-0.874889178106680i -0.287951046755518+0.226748835882598i  0.774021924828123+0.324319416960709i  0.054447915125014-0.092434199877816i -0.546318786847837+0.663999195493326i  0.485554135204149-0.522958808963173i -0.629222744700384-0.442670626705970i -1.214343499620117-0.415114267997771i]");
    all_matrices_and_inverse_matrices_are_computed_ = true;
  }

  using BaseType::all_matrices_and_inverse_matrices_are_computed_;
  using BaseType::matrix_;
  using BaseType::expected_inverse_;
}; // struct MatrixInverterForComplexMatrix_{{T_NAME}}

TEST_F(MatrixInverterForComplexMatrix_{{T_NAME}}, exports_correct_types)
{
  exports_correct_types();
}

TEST_F(MatrixInverterForComplexMatrix_{{T_NAME}}, has_types_and_options)
{
  has_types_and_options();
}

TEST_F(MatrixInverterForComplexMatrix_{{T_NAME}}, throws_on_broken_matrix_construction)
{
  throws_on_broken_matrix_construction();
}

TEST_F(MatrixInverterForComplexMatrix_{{T_NAME}}, is_constructible)
{
  is_constructible();
}

TEST_F(MatrixInverterForComplexMatrix_{{T_NAME}}, gives_correct_inverse)
{
  gives_correct_inverse({ {"direct", "1e-13"}, {"moore_penrose", "1e-13"} });
}

{% endfor %}
