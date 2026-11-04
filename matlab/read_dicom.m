info = dicominfo('test_new_scanner.dcm');
img = squeeze(dicomread('test_new_scanner.dcm'));

TR = info.SharedFunctionalGroupsSequence.Item_1.MRTimingAndRelatedParametersSequence.Item_1.RepetitionTime;
TE = info.PerFrameFunctionalGroupsSequence.Item_1.MREchoSequence.Item_1.EffectiveEchoTime;

disp(strcat('TE=',num2str(TE), '; TR=', num2str(TR)))
imshow(abs(img(:,:,60)),[])