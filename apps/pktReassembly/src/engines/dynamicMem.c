#pragma INPUT  dyMemInput_t
#pragma OUTPUT llNode_t

GS_GET() {
  Output = 2;
  State = GS_SEND;
}

GS_SEND() {
  finish();
}