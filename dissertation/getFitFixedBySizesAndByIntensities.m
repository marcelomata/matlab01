function [YL, YLFitted, ILFitted, AsbLFitted, Fit1pxlByIntensity] = getFitFixedBySizesAndByIntensities()

    intensities = load('intensities.mat');
    intensitiesWithLens = load('intensities_with_lens.mat');
    
    YL = [intensities.Y00(:) intensitiesWithLens.Y01(:) intensitiesWithLens.Y02(:) intensitiesWithLens.Y03(:) intensitiesWithLens.Y04(:) intensitiesWithLens.Y05(:) intensitiesWithLens.Y06(:) intensitiesWithLens.Y07(:) intensitiesWithLens.Y08(:) intensitiesWithLens.Y09(:) intensitiesWithLens.Y10(:) intensitiesWithLens.Y11(:) intensitiesWithLens.Y12(:) intensitiesWithLens.Y13(:) intensitiesWithLens.Y14(:) intensitiesWithLens.Y15(:) intensitiesWithLens.Y16(:) intensitiesWithLens.Y17(:) intensitiesWithLens.Y18(:) intensitiesWithLens.Y19(:) intensitiesWithLens.Y20(:) intensitiesWithLens.Y21(:) intensitiesWithLens.Y22(:) intensitiesWithLens.Y23(:) intensitiesWithLens.Y24(:) intensitiesWithLens.Y25(:) intensitiesWithLens.Y26(:) intensitiesWithLens.Y27(:) intensitiesWithLens.Y28(:) intensitiesWithLens.Y29(:) intensitiesWithLens.Y30(:)];
    YL = YL';

    degree = 4;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    Y00L = YL(1,:);%getFittedIntensities(YL(1,:), degree);
    Y01L = YL(2,:);%getFittedIntensities(YL(2,:), degree);
    Y02L = YL(3,:);%getFittedIntensities(YL(3,:), degree);
    Y03L = YL(4,:);%getFittedIntensities(YL(4,:), degree);
    Y04L = YL(5,:);%getFittedIntensities(YL(5,:), degree);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %Y04L = getFittedIntensities(YL(5,:), degree);
    Y05L = getFittedIntensities(YL(6,:), degree);
    Y06L = getFittedIntensities(YL(7,:), degree);
    Y07L = getFittedIntensities(YL(8,:), degree);
    Y08L = getFittedIntensities(YL(9,:), degree);
    Y09L = getFittedIntensities(YL(10,:), degree);
    Y10L = getFittedIntensities(YL(11,:), degree);
    Y11L = getFittedIntensities(YL(12,:), degree);
    Y12L = getFittedIntensities(YL(13,:), degree);
    Y13L = getFittedIntensities(YL(14,:), degree);
    Y14L = getFittedIntensities(YL(15,:), degree);
    Y15L = getFittedIntensities(YL(16,:), degree);
    Y16L = getFittedIntensities(YL(17,:), degree);
    Y17L = getFittedIntensities(YL(18,:), degree);
    Y18L = getFittedIntensities(YL(19,:), degree);
    Y19L = getFittedIntensities(YL(20,:), degree);
    Y20L = getFittedIntensities(YL(21,:), degree);
    Y21L = getFittedIntensities(YL(22,:), degree);
    Y22L = getFittedIntensities(YL(23,:), degree);
    Y23L = getFittedIntensities(YL(24,:), degree);
    Y24L = getFittedIntensities(YL(25,:), degree);
    Y25L = getFittedIntensities(YL(26,:), degree);
    Y26L = getFittedIntensities(YL(27,:), degree);
    Y27L = getFittedIntensities(YL(28,:), degree);
    Y28L = getFittedIntensities(YL(29,:), degree);
    Y29L = getFittedIntensities(YL(30,:), degree);
    Y30L = getFittedIntensities(YL(31,:), degree);

    YLFitted = [Y00L(:) Y01L(:) Y02L(:) Y03L(:) Y04L(:) Y05L(:) Y06L(:) Y07L(:) Y08L(:) Y09L(:) Y10L(:) Y11L(:) Y12L(:) Y13L(:) Y14L(:) Y15L(:) Y16L(:) Y17L(:) Y18L(:) Y19L(:) Y20L(:) Y21L(:) Y22L(:) Y23L(:) Y24L(:) Y25L(:) Y26L(:) Y27L(:) Y28L(:) Y29L(:) Y30L(:)];
    
    degree = 3;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    I00L = YLFitted(1,:);%getFittedIntensities(YLFitted(1,:), degree);
    I01L = YLFitted(2,:);%getFittedIntensities(YLFitted(2,:), degree);
    I02L = YLFitted(3,:);%getFittedIntensities(YLFitted(3,:), degree);
    I03L = YLFitted(4,:);%getFittedIntensities(YLFitted(4,:), degree);
    I04L = YLFitted(5,:);%getFittedIntensities(YLFitted(5,:), degree);
    I05L = YLFitted(6,:);%getFittedIntensities(YLFitted(6,:), degree);
    I06L = YLFitted(7,:);%getFittedIntensities(YLFitted(7,:), degree);
    I07L = YLFitted(8,:);%getFittedIntensities(YLFitted(8,:), degree);
    I08L = YLFitted(9,:);%getFittedIntensities(YLFitted(9,:), degree);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    I09L = getFittedIntensities(YLFitted(10,:), degree);
    I10L = getFittedIntensities(YLFitted(11,:), degree);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    I11L = getFittedIntensities(YLFitted(12,:), degree);
    I12L = getFittedIntensities(YLFitted(13,:), degree);
    I13L = getFittedIntensities(YLFitted(14,:), degree);
    I14L = getFittedIntensities(YLFitted(15,:), degree);
    I15L = getFittedIntensities(YLFitted(16,:), degree);
    I16L = getFittedIntensities(YLFitted(17,:), degree);
    I17L = getFittedIntensities(YLFitted(18,:), degree);
    I18L = getFittedIntensities(YLFitted(19,:), degree);
    I19L = getFittedIntensities(YLFitted(20,:), degree);
    I20L = getFittedIntensities(YLFitted(21,:), degree);
    I21L = getFittedIntensities(YLFitted(22,:), degree);
    I22L = getFittedIntensities(YLFitted(23,:), degree);
    I23L = getFittedIntensities(YLFitted(24,:), degree);
    I24L = getFittedIntensities(YLFitted(25,:), degree);
    I25L = getFittedIntensities(YLFitted(26,:), degree);
    I26L = getFittedIntensities(YLFitted(27,:), degree);
    I27L = getFittedIntensities(YLFitted(28,:), degree);
    I28L = getFittedIntensities(YLFitted(29,:), degree);
    I29L = getFittedIntensities(YLFitted(30,:), degree);
    I30L = getFittedIntensities(YLFitted(31,:), degree);
    I31L = getFittedIntensities(YLFitted(32,:), degree);
    I32L = getFittedIntensities(YLFitted(33,:), degree);
    I33L = getFittedIntensities(YLFitted(34,:), degree);
    I34L = getFittedIntensities(YLFitted(35,:), degree);
    I35L = getFittedIntensities(YLFitted(36,:), degree);
    I36L = getFittedIntensities(YLFitted(37,:), degree);
    I37L = getFittedIntensities(YLFitted(38,:), degree);
    I38L = getFittedIntensities(YLFitted(39,:), degree);
    I39L = getFittedIntensities(YLFitted(40,:), degree);
    I40L = getFittedIntensities(YLFitted(41,:), degree);
    I41L = getFittedIntensities(YLFitted(42,:), degree);
    I42L = getFittedIntensities(YLFitted(43,:), degree);
    I43L = getFittedIntensities(YLFitted(44,:), degree);
    I44L = getFittedIntensities(YLFitted(45,:), degree);
    I45L = getFittedIntensities(YLFitted(46,:), degree);
    I46L = getFittedIntensities(YLFitted(47,:), degree);
    I47L = getFittedIntensities(YLFitted(48,:), degree);
    I48L = getFittedIntensities(YLFitted(49,:), degree);
    I49L = getFittedIntensities(YLFitted(50,:), degree);
    I50L = getFittedIntensities(YLFitted(51,:), degree);
    I51L = getFittedIntensities(YLFitted(52,:), degree);
    I52L = getFittedIntensities(YLFitted(53,:), degree);
    I53L = getFittedIntensities(YLFitted(54,:), degree);
    I54L = getFittedIntensities(YLFitted(55,:), degree);
    I55L = getFittedIntensities(YLFitted(56,:), degree);
    I56L = getFittedIntensities(YLFitted(57,:), degree);
    I57L = getFittedIntensities(YLFitted(58,:), degree);
    I58L = getFittedIntensities(YLFitted(59,:), degree);
    I59L = getFittedIntensities(YLFitted(60,:), degree);
    I60L = getFittedIntensities(YLFitted(61,:), degree);
    I61L = getFittedIntensities(YLFitted(62,:), degree);
    I62L = getFittedIntensities(YLFitted(63,:), degree);
    I63L = getFittedIntensities(YLFitted(64,:), degree);
    I64L = getFittedIntensities(YLFitted(65,:), degree);
    I65L = getFittedIntensities(YLFitted(66,:), degree);
    I66L = getFittedIntensities(YLFitted(67,:), degree);
    I67L = getFittedIntensities(YLFitted(68,:), degree);
    I68L = getFittedIntensities(YLFitted(69,:), degree);
    I69L = getFittedIntensities(YLFitted(70,:), degree);
    I70L = getFittedIntensities(YLFitted(71,:), degree);
    I71L = getFittedIntensities(YLFitted(72,:), degree);
    I72L = getFittedIntensities(YLFitted(73,:), degree);
    I73L = getFittedIntensities(YLFitted(74,:), degree);
    I74L = getFittedIntensities(YLFitted(75,:), degree);
    I75L = getFittedIntensities(YLFitted(76,:), degree);
    I76L = getFittedIntensities(YLFitted(77,:), degree);
    I77L = getFittedIntensities(YLFitted(78,:), degree);
    I78L = getFittedIntensities(YLFitted(79,:), degree);
    I79L = getFittedIntensities(YLFitted(80,:), degree);
    I80L = getFittedIntensities(YLFitted(81,:), degree);
    I81L = getFittedIntensities(YLFitted(82,:), degree);
    I82L = getFittedIntensities(YLFitted(83,:), degree);
    I83L = getFittedIntensities(YLFitted(84,:), degree);
    I84L = getFittedIntensities(YLFitted(85,:), degree);
    I85L = getFittedIntensities(YLFitted(86,:), degree);
    I86L = getFittedIntensities(YLFitted(87,:), degree);
    I87L = getFittedIntensities(YLFitted(88,:), degree);
    I88L = getFittedIntensities(YLFitted(89,:), degree);
    I89L = getFittedIntensities(YLFitted(90,:), degree);
    I90L = getFittedIntensities(YLFitted(91,:), degree);
    I91L = getFittedIntensities(YLFitted(92,:), degree);
    I92L = getFittedIntensities(YLFitted(93,:), degree);
    I93L = getFittedIntensities(YLFitted(94,:), degree);
    I94L = getFittedIntensities(YLFitted(95,:), degree);
    I95L = getFittedIntensities(YLFitted(96,:), degree);
    I96L = getFittedIntensities(YLFitted(97,:), degree);
    I97L = getFittedIntensities(YLFitted(98,:), degree);
    I98L = getFittedIntensities(YLFitted(99,:), degree);
    I99L = getFittedIntensities(YLFitted(100,:), degree);
    I100L = getFittedIntensities(YLFitted(101,:), degree);
    
    ILFitted = [I00L(:) I01L(:) I02L(:) I03L(:) I04L(:) I05L(:) I06L(:) I07L(:) I08L(:) I09L(:) I10L(:) I11L(:) I12L(:) I13L(:) I14L(:) I15L(:) I16L(:) I17L(:) I18L(:) I19L(:) I20L(:) I21L(:) I22L(:) I23L(:) I24L(:) I25L(:) I26L(:) I27L(:) I28L(:) I29L(:) I30L(:) I31L(:) I32L(:) I33L(:) I34L(:) I35L(:) I36L(:) I37L(:) I38L(:) I39L(:) I40L(:) I41L(:) I42L(:) I43L(:) I44L(:) I45L(:) I46L(:) I47L(:) I48L(:) I49L(:) I50L(:) I51L(:) I52L(:) I53L(:) I54L(:) I55L(:) I56L(:) I57L(:) I58L(:) I59L(:) I60L(:) I61L(:) I62L(:) I63L(:) I64L(:) I65L(:) I66L(:) I67L(:) I68L(:) I69L(:) I70L(:) I71L(:) I72L(:) I73L(:) I74L(:) I75L(:) I76L(:) I77L(:) I78L(:) I79L(:) I80L(:) I81L(:) I82L(:) I83L(:) I84L(:) I85L(:) I86L(:) I87L(:) I88L(:) I89L(:) I90L(:) I91L(:) I92L(:) I93L(:) I94L(:) I95L(:) I96L(:) I97L(:) I98L(:) I99L(:) I100L(:)];
    
    YFitted2AsbWithLens = load('YFiited_to_asb_with_lens.mat');
    
    AsbL = [YFitted2AsbWithLens.Asb00L(:) YFitted2AsbWithLens.Asb01L(:) YFitted2AsbWithLens.Asb02L(:) YFitted2AsbWithLens.Asb03L(:) YFitted2AsbWithLens.Asb04L(:) YFitted2AsbWithLens.Asb05L(:) YFitted2AsbWithLens.Asb06L(:) YFitted2AsbWithLens.Asb07L(:) YFitted2AsbWithLens.Asb08L(:) YFitted2AsbWithLens.Asb09L(:) YFitted2AsbWithLens.Asb10L(:) YFitted2AsbWithLens.Asb11L(:) YFitted2AsbWithLens.Asb12L(:) YFitted2AsbWithLens.Asb13L(:) YFitted2AsbWithLens.Asb14L(:) YFitted2AsbWithLens.Asb15L(:) YFitted2AsbWithLens.Asb16L(:) YFitted2AsbWithLens.Asb17L(:) YFitted2AsbWithLens.Asb18L(:) YFitted2AsbWithLens.Asb19L(:) YFitted2AsbWithLens.Asb20L(:) YFitted2AsbWithLens.Asb21L(:) YFitted2AsbWithLens.Asb22L(:) YFitted2AsbWithLens.Asb23L(:) YFitted2AsbWithLens.Asb24L(:) YFitted2AsbWithLens.Asb25L(:) YFitted2AsbWithLens.Asb26L(:) YFitted2AsbWithLens.Asb27L(:) YFitted2AsbWithLens.Asb28L(:) YFitted2AsbWithLens.Asb29L(:) YFitted2AsbWithLens.Asb30L(:)];
    AsbL = AsbL';
    
    degree = 4;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    AsbFitted00L = AsbL(1,:);%getFittedIntensities(AsbL(1,:), degree);
    AsbFitted01L = AsbL(2,:);%getFittedIntensities(AsbL(2,:), degree);
    AsbFitted02L = AsbL(3,:);%getFittedIntensities(AsbL(3,:), degree);
    AsbFitted03L = AsbL(4,:);%getFittedIntensities(AsbL(4,:), degree);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    AsbFitted04L = getFittedIntensities(AsbL(5,:), degree);
    AsbFitted05L = getFittedIntensities(AsbL(6,:), degree);
    AsbFitted06L = getFittedIntensities(AsbL(7,:), degree);
    AsbFitted07L = getFittedIntensities(AsbL(8,:), degree);
    AsbFitted08L = getFittedIntensities(AsbL(9,:), degree);
    AsbFitted09L = getFittedIntensities(AsbL(10,:), degree);
    AsbFitted10L = getFittedIntensities(AsbL(11,:), degree);
    AsbFitted11L = getFittedIntensities(AsbL(12,:), degree);
    AsbFitted12L = getFittedIntensities(AsbL(13,:), degree);
    AsbFitted13L = getFittedIntensities(AsbL(14,:), degree);
    AsbFitted14L = getFittedIntensities(AsbL(15,:), degree);
    AsbFitted15L = getFittedIntensities(AsbL(16,:), degree);
    AsbFitted16L = getFittedIntensities(AsbL(17,:), degree);
    AsbFitted17L = getFittedIntensities(AsbL(18,:), degree);
    AsbFitted18L = getFittedIntensities(AsbL(19,:), degree);
    AsbFitted19L = getFittedIntensities(AsbL(20,:), degree);
    AsbFitted20L = getFittedIntensities(AsbL(21,:), degree);
    AsbFitted21L = getFittedIntensities(AsbL(22,:), degree);
    AsbFitted22L = getFittedIntensities(AsbL(23,:), degree);
    AsbFitted23L = getFittedIntensities(AsbL(24,:), degree);
    AsbFitted24L = getFittedIntensities(AsbL(25,:), degree);
    AsbFitted25L = getFittedIntensities(AsbL(26,:), degree);
    AsbFitted26L = getFittedIntensities(AsbL(27,:), degree);
    AsbFitted27L = getFittedIntensities(AsbL(28,:), degree);
    AsbFitted28L = getFittedIntensities(AsbL(29,:), degree);
    AsbFitted29L = getFittedIntensities(AsbL(30,:), degree);
    AsbFitted30L = getFittedIntensities(AsbL(31,:), degree);
    
    AsbLFitted = [AsbFitted00L(:) AsbFitted01L(:) AsbFitted02L(:) AsbFitted03L(:) AsbFitted04L(:) AsbFitted05L(:) AsbFitted06L(:) AsbFitted07L(:) AsbFitted08L(:) AsbFitted09L(:) AsbFitted10L(:) AsbFitted11L(:) AsbFitted12L(:) AsbFitted13L(:) AsbFitted14L(:) AsbFitted15L(:) AsbFitted16L(:) AsbFitted17L(:) AsbFitted18L(:) AsbFitted19L(:) AsbFitted20L(:) AsbFitted21L(:) AsbFitted22L(:) AsbFitted23L(:) AsbFitted24L(:) AsbFitted25L(:) AsbFitted26L(:) AsbFitted27L(:) AsbFitted28L(:) AsbFitted29L(:) AsbFitted30L(:)];
    
    %get 1pxl intensities
    degree = 4;
    Z = zeros(1,101);
    X1 = ones(1, 101);
    X1 = X1(:)*[0 6 7 30];
    %X1 = X1(:)*[0:1:30];
    Y = [Z(:) ILFitted(7, :)' ILFitted(8, :)' ILFitted(31, :)'];
    %Y = [ILFitted(:, :)'];
    Fit1pxlBySize = getFittedBySize(Y(1:1:101, :) , X1(1,:), degree, 0.01);
    XY = 1:1:101;
    Fit1pxlByIntensity = getFittedValues(Fit1pxlBySize, XY, XY, degree);
end