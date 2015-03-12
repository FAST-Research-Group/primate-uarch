#!/usr/bin/perl
if (scalar @ARGV != 1) {
  die ("This program needs one argument as the start version of design spaces\n");
} 
$concurrentRuns = 4;
$pwd = `pwd`;
if ($pwd =~ /.*\/buildExp(\d+).*/) {
  $runId = $1;
  print "runId is $runId\n";
} else {
  $concurrentRuns = 1;
  $runId = 1;
}

$startVersion = @ARGV[0];
$version = 1;
@uwThreadsArray = (1);
#@uwThreadsArray = (1, 8);
@ugThreadsArray = (1);
#@ugThreadsArray = (1, 8);
#@addPipelinedArray = ("false", "true");
@addPipelinedArray = ("false");
#@mulPipelinedArray = ("false", "true");
@mulPipelinedArray = ("false");
#@divPipelinedArray = ("false", "true");
@divPipelinedArray = ("false");
#@rcPipelinedArray = ("false", "true");
@rcPipelinedArray = ("false");
#@sharedRcArray = ("false", "true");
@sharedRcArray = ("true");
#@sharedRaArray = ("false", "true");
@sharedRaArray = ("true");
#@ugRepFactorArray =  (1, 2, 4, 8);
@ugRepFactorArray =  (1, 8);
#@uwRepFactorArray =  (1, 2, 4, 8);
@uwRepFactorArray =  (1, 8);
@burstFactorArray = (1);
#@burstFactorArray = (1,2,8);
@fixedFanoutArray = (0);
#@fixedFanoutArray = (0,1);
#@averageFanoutArray = (2, 5, 10);
@averageFanoutArray = (10);

sub generateConfig {
$uwThreads = shift;
$ugThreads = shift;
$addPipelined = shift;
$mulPipelined = shift;
$divPipelined = shift;
$rcPipelined = shift;
$sharedRc = shift;
$sharedRa = shift;
$ugRepFactor = shift;
$uwRepFactor = shift;
$burstFactor = shift;
$fixedFanout = shift;
$averageFanout = shift;

open(FILE, ">TopConfig");
print FILE <<EOF;
uwThreads $uwThreads
ugThreads $ugThreads
addPipelined $addPipelined
mulPipelined $mulPipelined
divPipelined $divPipelined
rcPipelined $rcPipelined
sharedRc $sharedRc
sharedRa $sharedRa
ugRepFactor $ugRepFactor
uwRepFactor $uwRepFactor
NUM_OF_CACHE_MISS_PIPE_STAGES 2
BURST_FACTOR $burstFactor
FIXED_FANOUT $fixedFanout
AVERAGE_FANOUT $averageFanout
EOF
}

foreach $uwThreads (@uwThreadsArray) {
foreach $ugThreads (@ugThreadsArray) {
foreach $addPipelined (@addPipelinedArray) {
foreach $mulPipelined (@mulPipelinedArray) {
foreach $divPipelined (@divPipelinedArray) {
foreach $rcPipelined (@rcPipelinedArray) {
foreach $sharedRc (@sharedRcArray) {
foreach $sharedRa (@sharedRaArray) {
foreach $ugRepFactor (@ugRepFactorArray) {
foreach $uwRepFactor (@uwRepFactorArray) {
foreach $burstFactor (@burstFactorArray) {
foreach $fixedFanout (@fixedFanoutArray) {
foreach $averageFanout (@averageFanoutArray) {
  if ($version >= $startVersion && 
   ($version % $concurrentRuns) == ($runId-1)) { 
    print "version $version\n";
    print "DSE " .
          " uwThreads " . $uwThreads . 
          " ugThreads " . $ugThreads .
          " addPipelined " . $addPipelined .
          " mulPipelined " . $mulPipelined .
          " divPipelined " . $divPipelined .
          " rcPipelined " . $rcPipelined .
          " sharedRc " . $sharedRc .
          " sharedRa " . $sharedRa .
          " ugRepFactor " . $ugRepFactor . 
          " uwRepFactor " . $uwRepFactor . 
          " burstFactor " . $burstFactor . 
          " fixedFanout " . $fixedFanout . 
          " averageFanout " . $averageFanout . 
          "\n";

      `rm TopConfig`;
      generateConfig(
       $uwThreads, 
       $ugThreads,
       $addPipelined,
       $mulPipelined,
       $divPipelined,
       $rcPipelined,
       $sharedRc,
       $sharedRa,
       $ugRepFactor,
       $uwRepFactor,
       $burstFactor,
       $fixedFanout,
       $averageFanout
      );
      `make synClean`;
      `make dseSynStep`;
      `mkdir dse/syn/design_$version/`;
      `cp  TopConfig dse/syn/design_$version/`;
      `cp  synthesis/*.srp dse/syn/design_$version/`;
    }
    $version = $version + 1; 
}}}}}}}}}}}}}


