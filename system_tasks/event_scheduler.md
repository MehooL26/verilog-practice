## Event Scheduler
- we have different regions in event scheduler
  active -> inactive -> non blocking assignments -> postponed
  1. Active <br>
     i) blocking assignments are executed<br>
     ii) evaluation of RHS of non blocking assignments<br>
     iii) continuous assignments are going to happen<br>
     iv) $display statement will be executed<br>
     v) evaluation of inputs and and updation of outputs of gate primitavites.<br>
