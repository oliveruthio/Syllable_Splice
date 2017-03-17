clear;
%This function splits up phrases into words

[sample, fs] = audioread('beatles.wav');
blockLength = 1024;
numBlocks = floor(length(sample)/blockLength);

overlap = blockLength/2;

hopLength = blockLength;

blockB = 1; %start
blockE = blockLength; %end


% Creates array of blocks for spectralFlux
arrayBlox = zeros(blockLength, numBlocks);
for i = 1:numBlocks
    for j = 1:blockLength
        arrayBlox(j,i) = sample(j+blockLength*(i-1),1);
    end
end

%array of spectralFlux
sf = spectralFlux(arrayBlox);

%array of words
arrayWords = {{}}; awCount = 1;
word = []; 
for i = 1:length(sf)   
    %if begin new word
    bool = onset(sf,i);
    if(bool)
        arrayWords{awCount} = word;
        word = [];
        awCount = awCount + 1;
    end
    
    %continuing word
    for j = blockB:blockE
        word = [word, sample(j,1)];
    end
        
    blockB = blockB + hopLength;
    blockE = blockE + hopLength;
end
