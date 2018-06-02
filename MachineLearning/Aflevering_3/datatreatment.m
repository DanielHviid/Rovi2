clear all
close all
clc

recall = [0.967222736068909 0 0 0 0 0 0 0 0 0 0 0 0;
0.959802638847834 0.988716494128389 0 0 0 0 0 0 0 0 0 0 0
0.966605266734724 0.97300602058523 0.993767124217621 0 0 0 0 0 0 0 0 0 0;
0.966774762629345 0.969088292734971 0.985297674917642 0.99506568681662 0 0 0 0 0 0 0 0 0;
0.971384894804618 0.969608107500994 0.977425264537064 0.989947336774199 0.996191503514961 0 0 0 0 0 0 0 0;
0.966797212464128 0.968380507587519 0.971061997258784 0.983979375772805 0.991144187750189 0.996922689244538 0 0 0 0 0 0 0;
0.967600348299844 0.967628284556013 0.970005460860954 0.976061083509677 0.987124369861738 0.992264778929112 0.99756583334958 0 0 0 0 0 0;
0.96429513050646 0.965322091295548 0.967077919973697 0.970988879164679 0.981649284635392 0.989621805016841 0.993455934618445 0.998175358060613 0 0 0 0 0;
0.966659110817032 0.966156361844522 0.966842447369084 0.968671966127984 0.975353150998749 0.985297398264353 0.991045149778098 0.993905396973778 0.998123565918224 0 0 0 0;
0.966901826813603 0.967284037126198 0.965289138954903 0.968246193419452 0.971945326626332 0.980571243358045 0.987329163816095 0.991998069118459 0.996297312355871 0.998408664523745 0 0 0;
0.964983402241158 0.964568220987373 0.96566860426982 0.965638796987215 0.96860524828282 0.975544838958877 0.983220759574771 0.98905544447904 0.993854610492149 0.997055812620381 0.99872028385156 0 0;
0.963224111559554 0.963712411827712 0.963336379641781 0.963879356547419 0.966332353491399 0.970775755073708 0.980417591798421 0.98618373561785 0.990696020059027 0.994882512970495 0.996948514798859 0.998697482529258 0;
0.962085966609008 0.96205318939609 0.962331046418945 0.962394972214771 0.965892937500147 0.968947125768426 0.974235863563293 0.982499644147676 0.988727152076901 0.992020168049635 0.995089771279007 0.997587402862627 0.998668309378692;
];

precision = [0.96684398804494 0 0 0 0 0 0 0 0 0 0 0 0;
0.959617519149152 0.988605304276164 0 0 0 0 0 0 0 0 0 0 0;
0.966114631094608 0.972571425435659 0.993797071312254 0 0 0 0 0 0 0 0 0 0;
0.966328519836473 0.968817194563254 0.984968381266046 0.995138015010754 0 0 0 0 0 0 0 0 0;
0.970873995048192 0.969098412059864 0.977029705356123 0.989801278093046 0.996122576907407 0 0 0 0 0 0 0 0;
0.966369448048884 0.967878556785795 0.970718928232565 0.983784210300987 0.990989361588934 0.996879300683634 0 0 0 0 0 0 0;
0.967093488175617 0.967112931607383 0.969499840023133 0.975694519464417 0.986915794308723 0.992175635914989 0.997316526833412 0 0 0 0 0 0;
0.963893762164161 0.964880121508507 0.966618180412537 0.97052017534202 0.98138550734906 0.989430717770331 0.993425174050514 0.998045655653077 0 0 0 0 0;
0.966128755125664 0.965619819616728 0.966386380443147 0.968202763773793 0.975036141835224 0.985045408119029 0.990911866273622 0.993832486770388 0.997993936626872 0 0 0 0;
0.96635025250502 0.966594579905135 0.964587129937093 0.967746957992052 0.971492428548639 0.980306249848033 0.987048242309294 0.99191587081057 0.996123541078322 0.998227636941031 0 0 0;
0.964347502187822 0.963842400871771 0.965118631643162 0.965026257104921 0.968071235199208 0.975210681565485 0.982978779674023 0.988827132935506 0.993712295373973 0.997007217651985 0.998629368864128 0 0;
0.962568449255988 0.963069968782327 0.962830668295791 0.963311355403592 0.965875499968589 0.970310774496774 0.980162260598809 0.986033458837078 0.990552624801865 0.994770350068685 0.99698417388221 0.998594225025475 0;
0.961572283740743 0.961580147246377 0.961830066103891 0.961824563560252 0.96545492534077 0.968427232319044 0.973894442061023 0.982285368638208 0.988588302708425 0.991811823186514 0.995021181617375 0.997615184714179 0.998562946867363;
];


%% 
for row = 1:13
  for col = 1:13
    if(precision(row,col) == 0)
      precision(row,col) = precision(row,col-1);
      recall(row,col) = recall(row,col-1);
    
    end
  end
end



