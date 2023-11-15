dotnet tool restore
dotnet jb cleanupcode repro.sln
# Same happens with: dotnet jb inspectcode repro.sln
# But this works: dotnet jb cleanupcode proj1/proj1.csproj
