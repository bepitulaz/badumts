use_bpm 125
use_synth :tb303

with_fx :reverb, room: 0.5 do
  live_loop :space_scanner do
    with_fx :slicer, phase: 0.25, amp: 1.25 do
      co = (line 40, 130, steps: 6).tick
      play :e1, cutoff: co, release: 7, attack: 1, cutoff_attack: 4, cutoff_release: 4
      sleep 8
    end
  end
  
  live_loop :bass do
    n = (ring :e1, :g2, :b3, :b4).tick
    play n, release: 0.125, cutoff: 110, res: 0.4, wave: 0, amp: 1
    sleep 0.5
  end
  
  live_loop :beat do
    sample :loop_breakbeat, amp: 2
    sleep 2
  end
end