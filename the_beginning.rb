# The beginning
# Author: Asep Bagja Priandana

use_bpm 125

with_fx :reverb, room: 0.5 do
  live_loop :kick do
    sample :bd_boom, amp: 3
    sleep 2
  end
  
  live_loop :piano do
    sample :ambi_piano, amp: 3, pan: 0.5
    sleep (rrand 8, 16)
  end
  
  live_loop :ambience do
    sample :ambi_haunted_hum, pan: -0.5, amp: (rrand 0.1, 1)
    sleep 8
  end
end
