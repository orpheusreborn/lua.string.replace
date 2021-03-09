function replaceAdrParamsInString(str, patternToReplace, p0, p1, p2, p3)
  p0str=string.format("0x%02x", p0)
  p1str=string.format("0x%02x", p1)
  p2str=string.format("0x%02x", p2)
  p3str=string.format("0x%02x", p3)
  r0str=patternToReplace .. "0"
  r1str=patternToReplace .. "1"
  r2str=patternToReplace .. "2"
  r3str=patternToReplace .. "3"
  str=str:gsub(r0str, p0str)
  str=str:gsub(r1str, p1str)
  str=str:gsub(r2str, p2str)
  str=str:gsub(r3str, p3str)
  return str
end 

print(replaceAdrParamsInString("mip3 mip1 mip0 mip2", "mip", 3, 2, 0, 0))
