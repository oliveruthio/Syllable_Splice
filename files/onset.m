function [ bool ] = onset( sf, i )
%ONSET Summary of this function goes here
%   Detailed explanation goes here
    bool = 0;
    if((i-1) < 1)
        if( (sf(i) > sf(i+1)) && ...
            (sf(i) > sf(i+2)) && ...
            (sf(i) > sf(i+3)))
            bool = 1;
        end
        return;
    end
    if((i-2) < 1)
        if( (sf(i) > sf(i-1)) && ...
            (sf(i) > sf(i+1)) && ...
            (sf(i) > sf(i+2)) && ...
            (sf(i) > sf(i+3)))
            bool = 1;
        end
        return;
    end
       
    if((i-3) < 1)
        if( (sf(i) > sf(i-2)) && ...
            (sf(i) > sf(i-1)) && ...
            (sf(i) > sf(i+1)) && ...
            (sf(i) > sf(i+2)) && ...
            (sf(i) > sf(i+3)))
            bool = 1;
        end
        return;
    end
    
    if((i+1)> length(sf)-1)
        if((sf(i) > sf(i-3)) && ...
           (sf(i) > sf(i-2)) && ...
           (sf(i) > sf(i-1)))
           bool = 1;
        end   
        return;
    end
    
    if((i+2) > length(sf)-1)
          if((sf(i) > sf(i-3)) && ...
             (sf(i) > sf(i-2)) && ...
             (sf(i) > sf(i-1)) && ...
             (sf(i) > sf(i+1)))
             bool = 1;
          end
          return;
    end
    
    if((i+3) > length(sf)-1)
          if((sf(i) > sf(i-3)) && ...
             (sf(i) > sf(i-2)) && ...
             (sf(i) > sf(i-1)) && ...
             (sf(i) > sf(i+1)) && ...
             (sf(i) > sf(i+2)))
            bool = 1;
          end
          return;
    end
   
    
    
    
    
    if( (sf(i) > sf(i-3)) && ...
        (sf(i) > sf(i-2)) && ...
        (sf(i) > sf(i-1)) && ...
        (sf(i) > sf(i+1)) && ...
        (sf(i) > sf(i+2)) && ...
        (sf(i) > sf(i+3)))
        bool = 1;
    end
end

