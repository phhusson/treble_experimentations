#!/usr/bin/env ruby
# coding: utf-8
 
# ANSI color scheme script 
# Author: Ivaylo Kuzev < Ivo >
# Original: http://crunchbang.org/forums/viewtopic.php?pid=134749%23p134749#p134749
# Modified using Ruby.
 
CL = "\e[0m"
BO = "\e[1m"

R = "\e[31m" 
G = "\e[32m"
Y = "\e[33m"
B = "\e[34m"
P = "\e[35m"
C = "\e[36m"
  
print <<EOF 
 
#{BO}#{R}  ██████  #{CL} #{BO}#{G}██████  #{CL}#{BO}#{Y}   ██████#{CL} #{BO}#{B}██████ #{CL}  #{BO}#{P}  ██████#{CL} #{BO}#{C}  ███████#{CL}
#{BO}#{R}  ████████#{CL} #{BO}#{G}██    ██ #{CL}#{BO}#{Y}██ #{CL}      #{BO}#{B}██    ██#{CL} #{BO}#{P}██████ #{CL} #{BO}#{C} █████████#{CL}
#{R}  ██  ████#{CL} #{G}██  ████#{CL}#{Y} ████    #{CL} #{B}████  ██#{CL} #{P}████ #{CL}    #{C}█████ #{CL}
#{R}  ██    ██#{CL} #{G}██████ #{CL}#{Y}  ████████#{CL} #{B}██████ #{CL}  #{P}████████#{CL} #{C}██ #{CL}
 
EOF