## Event Scheduler
- we have different regions in event scheduler
  active -> inactive -> non blocking assignments -> postponed
  1. Active <br>
     i) blocking assignments are executed<br>
     ii) evaluation of RHS of non blocking assignments<br>
     iii) continuous assignments are going to happen<br>
     iv) $display statement will be executed<br>
     v) evaluation of inputs and and updation of outputs of gate primitavites.<br>

- so in file system_tasks we do not get actual values printed in some cases because there is a mismatch in calling a specific keyword and actually being in the region it will be executed in. Suppose we use non-blocking assignments and also run $display then it showed default value of a because $display was callled before assignment in active region.
