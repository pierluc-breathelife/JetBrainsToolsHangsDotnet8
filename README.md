# To repro

- Tested locally on a 2019 Macbook + Github action's Ubuntu agent
- Run `sh repro.sh`

# Output

```
> sh repro.sh
Tool 'jetbrains.resharper.globaltools' (version '2023.3.0-eap07') was restored. Available commands: jb

Restore was successful.
JetBrains Cleanup Code 2023.3 EAP 7
Running on x64 OS in x64 architecture, .NET 8.0.0 under Darwin 22.6.0 Darwin Kernel Version 22.6.0: Fri Sep 15 13:39:52 PDT 2023; root:xnu-8796.141.3.700.8~1/RELEASE_X86_64
Using toolset version 17.0 from /usr/local/share/dotnet/sdk/8.0.100
Configuration: Debug, Platform: Any CPU
Failed to generate sources for project: /Users/pier-luc/Workspace/repro/JetBrainsToolsHangsDotnet8/proj1/proj1.csproj Could not load type 'Enumerator' from assembly 'Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.

--- EXCEPTION #1/2 [TypeLoadException]
Message = “Could not load type 'Enumerator' from assembly 'Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.”
ExceptionPath = Root.InnerException
ClassName = System.TypeLoadException
Data.ThreadLocalDebugInfo = “Scheduler: 'Roslyn worker scheduler' on thread `:1`”
HResult = COR_E_TYPELOAD=80131522
Source = Microsoft.CodeAnalysis.ExternalAccess.RazorCompiler
TypeLoadClassName = Enumerator
TypeLoadAssemblyName = “Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35”
TypeLoadResourceID = “<ERROR> Could not load file or assembly 'System.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'. The system cannot find the file specified.”
StackTraceString = “
  at Microsoft.CodeAnalysis.ExternalAccess.RazorCompiler.HostOutputNode`1.AppendOutputs(IncrementalExecutionContext context, CancellationToken cancellationToken)
     at Microsoft.CodeAnalysis.GeneratorDriver.UpdateOutputs(ImmutableArray`1 outputNodes, IncrementalGeneratorOutputKind outputKind, Builder generatorRunStateBuilder, CancellationToken cancellationToken, Builder driverStateBuilder) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Compilers\Core\Portable\SourceGeneration\GeneratorDriver.cs:line 323
     at Microsoft.CodeAnalysis.GeneratorDriver.RunGeneratorsCore(Compilation compilation, DiagnosticBag diagnosticsBag, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Compilers\Core\Portable\SourceGeneration\GeneratorDriver.cs:line 298
     at Microsoft.CodeAnalysis.GeneratorDriver.RunGenerators(Compilation compilation, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Compilers\Core\Portable\SourceGeneration\GeneratorDriver.cs:line 47
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.FinalizeCompilationAsync(SolutionState solution, Compilation compilationWithoutGenerators, CompilationTrackerGeneratorInfo generatorInfo, Compilation compilationWithStaleGeneratedTrees, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 846
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.BuildCompilationInfoFromScratchAsync(SolutionState solution, CompilationTrackerGeneratorInfo generatorInfo, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 526
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.BuildCompilationInfoAsync(SolutionState solution, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 492
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.GetOrBuildCompilationInfoAsync(SolutionState solution, Boolean lockGate, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 451
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.GetSourceGeneratedDocumentStatesAsync(SolutionState solution, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 1049
     at Microsoft.CodeAnalysis.Project.GetSourceGeneratedDocumentsAsync(CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\Project.cs:line 286
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass18_0.<<TryGetSourceGeneratorAsync>b__3>d.MoveNext() in TryGetSourceGeneratorAsync.il:line IL_00C1 mvid 724C or TryGetSourceGeneratorAsync.il:line IL_0380 mvid 724C
  --- End of stack trace from previous location ---
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass13_0`1.<<StartWithCookieAsync>b__0>d.MoveNext() in StartWithCookieAsync.il:line IL_00D3 mvid 724C
  --- End of stack trace from previous location ---
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.TryGetSourceGeneratorAsync(Lifetime lifetime, ProjectId projectId, FileSystemPath path) in TryGetSourceGeneratorAsync.il:line IL_00C1 mvid 724C or TryGetSourceGeneratorAsync.il:line IL_0380 mvid 724C
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass15_1.<<StartTracking>b__4>d.MoveNext() in StartTracking.il:line IL_008D mvid 724C or StartTracking.il:line IL_0169 mvid 724C
  --- End of stack trace from previous location ---
     at JetBrains.Roslyn.Worker.Workspaces.CompilationsSyncService.GuardAsync[T](Func`1 func, CancellationToken cancellationToken) in GuardAsync.il:line IL_0100 mvid 724C
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass15_0.<<StartTracking>b__0>d.MoveNext() in StartTracking.il:line IL_008D mvid 724C or StartTracking.il:line IL_0169 mvid 724C
”

--- Outer ---

--- EXCEPTION #2/2 [LoggerException]
Message = “Failed to generate sources for project: /Users/pier-luc/Workspace/repro/JetBrainsToolsHangsDotnet8/proj1/proj1.csproj Could not load type 'Enumerator' from assembly 'Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.”
ExceptionPath = Root
ClassName = JetBrains.Util.LoggerException
InnerException = “Exception #1 at Root.InnerException”
HResult = COR_E_APPLICATION=80131600
StackTraceString = “
  at JetBrains.Util.ILoggerEx.LogException(ILogger this, LoggingLevel level, Exception exception, ExceptionOrigin exceptionOrigin, String comment) in LogException.il:line IL_002E mvid 75BC
     at JetBrains.Util.ILoggerEx.Error(ILogger this, Exception ex, String message) in Error.il:line IL_0008 mvid 75BC or Error.il:line IL_001B mvid 75BC
     at JetBrains.Util.ILoggerEx.Error(ILogger logger, Exception exception, JetLogErrorInterpolatedStringHandler& messageHandler) in Error.il:line IL_0008 mvid 75BC or Error.il:line IL_001B mvid 75BC
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass15_0.<<StartTracking>b__0>d.MoveNext() in StartTracking.il:line IL_0169 mvid 724C
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.ExecutionContextCallback(Object s) in ExecutionContextCallback.il:line IL_0000 mvid 0BE8
     at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state) in RunInternal.il:line IL_0040 mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.MoveNext(Thread threadPoolThread) in MoveNext.il:line IL_0000 mvid 0BE8 or MoveNext.il:line IL_0040 mvid 0BE8 or MoveNext.il:line IL_004E mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.MoveNext() in MoveNext.il:line IL_0000 mvid 0BE8 or MoveNext.il:line IL_0040 mvid 0BE8 or MoveNext.il:line IL_004E mvid 0BE8
     at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state) in RunInternal.il:line IL_0040 mvid 0BE8
     at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread) in ExecuteWithThreadLocal.il:line IL_0096 mvid 0BE8
     at System.Threading.Tasks.Task.ExecuteEntry() in ExecuteEntry.il:line IL_0036 mvid 0BE8
     at JetBrains.Util.Concurrency.Threading.SequentialScheduler.TryExecuteTaskWithContext(Task task) in TryExecuteTaskWithContext.il:line IL_0026 mvid 75BC
     at JetBrains.Util.Concurrency.Threading.SequentialScheduler.<.ctor>b__12_0() in SequentialScheduler.il:line IL_006F mvid 75BC
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.ExecutionContextCallback(Object s) in ExecutionContextCallback.il:line IL_0000 mvid 0BE8
     at System.Threading.ExecutionContext.RunFromThreadPoolDispatchLoop(Thread threadPoolThread, ExecutionContext executionContext, ContextCallback callback, Object state) in RunFromThreadPoolDispatchLoop.il:line IL_0015 mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.MoveNext(Thread threadPoolThread) in MoveNext.il:line IL_0000 mvid 0BE8 or MoveNext.il:line IL_0040 mvid 0BE8 or MoveNext.il:line IL_004E mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.ExecuteFromThreadPool(Thread threadPoolThread) in ExecuteFromThreadPool.il:line IL_0000 mvid 0BE8
     at System.Threading.ThreadPoolWorkQueue.Dispatch() in Dispatch.il:line IL_0150 mvid 0BE8
     at System.Threading.PortableThreadPool.WorkerThread.WorkerThreadStart() in WorkerThreadStart.il:line IL_00A0 mvid 0BE8
     at System.Threading.Thread.StartCallback() in StartCallback.il:line IL_000E mvid 0BE8
”

Failed to generate sources for project: /Users/pier-luc/Workspace/repro/JetBrainsToolsHangsDotnet8/proj1/proj1.csproj Could not load type 'Enumerator' from assembly 'Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.

--- EXCEPTION #1/2 [TypeLoadException]
Message = “Could not load type 'Enumerator' from assembly 'Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.”
ExceptionPath = Root.InnerException
ClassName = System.TypeLoadException
Data.ThreadLocalDebugInfo = “Scheduler: 'Roslyn worker scheduler' on thread `:1`”
HResult = COR_E_TYPELOAD=80131522
Source = Microsoft.CodeAnalysis.ExternalAccess.RazorCompiler
TypeLoadClassName = Enumerator
TypeLoadAssemblyName = “Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35”
TypeLoadResourceID = “<ERROR> Could not load file or assembly 'System.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'. The system cannot find the file specified.”
StackTraceString = “
  at Microsoft.CodeAnalysis.ExternalAccess.RazorCompiler.HostOutputNode`1.AppendOutputs(IncrementalExecutionContext context, CancellationToken cancellationToken)
     at Microsoft.CodeAnalysis.GeneratorDriver.UpdateOutputs(ImmutableArray`1 outputNodes, IncrementalGeneratorOutputKind outputKind, Builder generatorRunStateBuilder, CancellationToken cancellationToken, Builder driverStateBuilder) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Compilers\Core\Portable\SourceGeneration\GeneratorDriver.cs:line 323
     at Microsoft.CodeAnalysis.GeneratorDriver.RunGeneratorsCore(Compilation compilation, DiagnosticBag diagnosticsBag, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Compilers\Core\Portable\SourceGeneration\GeneratorDriver.cs:line 298
     at Microsoft.CodeAnalysis.GeneratorDriver.RunGenerators(Compilation compilation, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Compilers\Core\Portable\SourceGeneration\GeneratorDriver.cs:line 47
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.FinalizeCompilationAsync(SolutionState solution, Compilation compilationWithoutGenerators, CompilationTrackerGeneratorInfo generatorInfo, Compilation compilationWithStaleGeneratedTrees, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 846
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.BuildCompilationInfoFromScratchAsync(SolutionState solution, CompilationTrackerGeneratorInfo generatorInfo, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 526
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.BuildCompilationInfoAsync(SolutionState solution, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 492
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.GetOrBuildCompilationInfoAsync(SolutionState solution, Boolean lockGate, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 451
     at Microsoft.CodeAnalysis.SolutionState.CompilationTracker.GetSourceGeneratedDocumentStatesAsync(SolutionState solution, CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\SolutionState.CompilationTracker.cs:line 1049
     at Microsoft.CodeAnalysis.Project.GetSourceGeneratedDocumentsAsync(CancellationToken cancellationToken) in Z:\BuildAgent\work\3b7ce003563d6f8f\src\Workspaces\Core\Portable\Workspace\Solution\Project.cs:line 286
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass18_0.<<TryGetSourceGeneratorAsync>b__3>d.MoveNext() in TryGetSourceGeneratorAsync.il:line IL_00C1 mvid 724C or TryGetSourceGeneratorAsync.il:line IL_0380 mvid 724C
  --- End of stack trace from previous location ---
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass13_0`1.<<StartWithCookieAsync>b__0>d.MoveNext() in StartWithCookieAsync.il:line IL_00D3 mvid 724C
  --- End of stack trace from previous location ---
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.TryGetSourceGeneratorAsync(Lifetime lifetime, ProjectId projectId, FileSystemPath path) in TryGetSourceGeneratorAsync.il:line IL_00C1 mvid 724C or TryGetSourceGeneratorAsync.il:line IL_0380 mvid 724C
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass15_1.<<StartTracking>b__4>d.MoveNext() in StartTracking.il:line IL_008D mvid 724C or StartTracking.il:line IL_0169 mvid 724C
  --- End of stack trace from previous location ---
     at JetBrains.Roslyn.Worker.Workspaces.CompilationsSyncService.GuardAsync[T](Func`1 func, CancellationToken cancellationToken) in GuardAsync.il:line IL_0100 mvid 724C
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass15_0.<<StartTracking>b__0>d.MoveNext() in StartTracking.il:line IL_008D mvid 724C or StartTracking.il:line IL_0169 mvid 724C
”

--- Outer ---

--- EXCEPTION #2/2 [LoggerException]
Message = “Failed to generate sources for project: /Users/pier-luc/Workspace/repro/JetBrainsToolsHangsDotnet8/proj1/proj1.csproj Could not load type 'Enumerator' from assembly 'Microsoft.CodeAnalysis, Version=42.42.42.42, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.”
ExceptionPath = Root
ClassName = JetBrains.Util.LoggerException
InnerException = “Exception #1 at Root.InnerException”
HResult = COR_E_APPLICATION=80131600
StackTraceString = “
  at JetBrains.Util.ILoggerEx.LogException(ILogger this, LoggingLevel level, Exception exception, ExceptionOrigin exceptionOrigin, String comment) in LogException.il:line IL_002E mvid 75BC
     at JetBrains.Util.ILoggerEx.Error(ILogger this, Exception ex, String message) in Error.il:line IL_0008 mvid 75BC or Error.il:line IL_001B mvid 75BC
     at JetBrains.Util.ILoggerEx.Error(ILogger logger, Exception exception, JetLogErrorInterpolatedStringHandler& messageHandler) in Error.il:line IL_0008 mvid 75BC or Error.il:line IL_001B mvid 75BC
     at JetBrains.Roslyn.Worker.SourceGeneratorsTracker.<>c__DisplayClass15_0.<<StartTracking>b__0>d.MoveNext() in StartTracking.il:line IL_0169 mvid 724C
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.ExecutionContextCallback(Object s) in ExecutionContextCallback.il:line IL_0000 mvid 0BE8
     at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state) in RunInternal.il:line IL_0040 mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.MoveNext(Thread threadPoolThread) in MoveNext.il:line IL_0000 mvid 0BE8 or MoveNext.il:line IL_0040 mvid 0BE8 or MoveNext.il:line IL_004E mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.MoveNext() in MoveNext.il:line IL_0000 mvid 0BE8 or MoveNext.il:line IL_0040 mvid 0BE8 or MoveNext.il:line IL_004E mvid 0BE8
     at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state) in RunInternal.il:line IL_0040 mvid 0BE8
     at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot, Thread threadPoolThread) in ExecuteWithThreadLocal.il:line IL_0096 mvid 0BE8
     at System.Threading.Tasks.Task.ExecuteEntry() in ExecuteEntry.il:line IL_0036 mvid 0BE8
     at JetBrains.Util.Concurrency.Threading.SequentialScheduler.TryExecuteTaskWithContext(Task task) in TryExecuteTaskWithContext.il:line IL_0026 mvid 75BC
     at JetBrains.Util.Concurrency.Threading.SequentialScheduler.<.ctor>b__12_0() in SequentialScheduler.il:line IL_006F mvid 75BC
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.ExecutionContextCallback(Object s) in ExecutionContextCallback.il:line IL_0000 mvid 0BE8
     at System.Threading.ExecutionContext.RunFromThreadPoolDispatchLoop(Thread threadPoolThread, ExecutionContext executionContext, ContextCallback callback, Object state) in RunFromThreadPoolDispatchLoop.il:line IL_0015 mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.MoveNext(Thread threadPoolThread) in MoveNext.il:line IL_0000 mvid 0BE8 or MoveNext.il:line IL_0040 mvid 0BE8 or MoveNext.il:line IL_004E mvid 0BE8
     at System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.AsyncStateMachineBox`1.ExecuteFromThreadPool(Thread threadPoolThread) in ExecuteFromThreadPool.il:line IL_0000 mvid 0BE8
     at System.Threading.ThreadPoolWorkQueue.Dispatch() in Dispatch.il:line IL_0150 mvid 0BE8
     at System.Threading.PortableThreadPool.WorkerThread.WorkerThreadStart() in WorkerThreadStart.il:line IL_00A0 mvid 0BE8
     at System.Threading.Thread.StartCallback() in StartCallback.il:line IL_000E mvid 0BE8
”

00:01:00 Start Roslyn...
```
