function [ok] = este_fezabil(x)
ok = sum(x) >= 0 & sum(x) <= 8;
end