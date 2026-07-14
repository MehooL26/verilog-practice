## Event Scheduler
- we have different regions in event scheduler
  active -> inactive -> non blocking assignments -> postponed
  1. Active
     i) blocking assignments are executed
     ii) evaluation of RHS of non blocking assignments
     iii) continuous assignments are going to happen
     iv) $display statement will be executed
     v) evaluation of inputs and and updation of outputs of gate primitavites.
