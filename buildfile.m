function plan = buildfile
% A plan to lint code and run tests
%
%   See https://www.mathworks.com/help/matlab/matlab_prog/overview-of-matlab-build-tool.html
%   for information on how to add more tasks.

import matlab.buildtool.tasks.CleanTask;
import matlab.buildtool.tasks.CodeIssuesTask;
import matlab.buildtool.tasks.TestTask;

plan = buildplan(localfunctions);

plan("clean") = CleanTask();
plan("lint") = CodeIssuesTask();
plan("test") = TestTask("tests");

plan.DefaultTasks = ["lint" "test"];

end
