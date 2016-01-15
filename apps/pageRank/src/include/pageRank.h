//At the beginning of the algorithm, three 
//arrays are ready in the memory, (i) page array, (ii) rank array, and 
//(ii) link array. 
//
//Page array contains (i) fanoutDegree and (ii) startLinkId of each page. 
//startLinkId is the pointer to the first link element in the link array.
//The last link element associated with the page has and index equals to 
//(startLinkId + fanoutDegree -1).
typedef struct {
  int fanoutDegree;
  int startLinkId;
} page_t;

//Rank array contains rank associated with each page. We have two instances
//of this array One for update generators and one for update writers. We switch 
//between these two arrays when an stage change happens.
typedef struct {
  double rank;
} rank_t;

//Link array conatians all links between the pages. The links associated with 
//a page are all bundled together. The pointer to the first entry of links is stored
//in the page element.
typedef struct {
  int targetPageId;
} link_t;

typedef struct {
  bool done;
  int pageId; 
  double rankUpdate;
} update_t;

typedef struct {
  bool out; 
} prDone_t;

typedef struct {
  uint32_t id;
  bit op;
} lock_req_t;

typedef struct {
  bool out;
} lock_rep_t;


typedef struct {
  bool done;
  int startPageId; 
  int length; 
} bulkUpdate_t;

typedef struct {
  double damping;
  double rank;
  int fanoutDegree;
} rankCalc_in_t; 

typedef struct {
  double out;
} rankCalc_out_t;

typedef struct {
  uint32_t addr;
  bit rw;
  bool cached;
  uint128_t data;
  uint4_t size; 
} mem_req_t;

typedef struct {
  uint128_t data; 
} mem_rep_t;

typedef struct {
  double in1;
  double  in2;
} FU_in_t;

typedef struct {
  double out; 
} FU_out_t;

#define PAGES_BASE_ADDRESS   0
#define RANK_A_BASE_ADDRESS  1<<24
#define RANK_B_BASE_ADDRES   1<<25
#define LINKS_BASE_ADDRESS   1<<26
#define MODES_BASE_ADDRESS   1<<27
#define PAGE_ELEMENT_SIZE_LOG 3
#define RANK_ELEMENT_SIZE_LOG 3
#define LINK_ELEMENT_SIZE_LOG 2
//#define rankAddress(index) ((mode == 0 ? RANK_A_BASE_ADDRESS : RANK_B_BASE_ADDRESS) + (index<<RANK_ELEMENT_SIZE_LOG))
#define rankAddress(index) (RANK_A_BASE_ADDRESS + (index<<RANK_ELEMENT_SIZE_LOG))
#define pageAddress(index) (PAGES_BASE_ADDRESS + (index << PAGE_ELEMENT_SIZE_LOG))
#define linkAddress(index) (LINKS_BASE_ADDRESS + (index << LINK_ELEMENT_SIZE_LOG))
#define modeAddress(index) (MODES_BASE_ADDRESS + (index >> 3))
#define modeRead(word, index) ((word & (1 << (index & 31))) != 0)
#define modeWrite(word, index) (word ^ (1 << (index & 31)))
#define fanoutInPage(pageElement) pageElement
#define startLinkIndxInPage(pageElement) (pageElement >> 32)

#define LOCK 0
#define UNLOCK 1

#define READ 0
#define WRITE 1
#define READ_CACHED 2

#define DAMPING_FACTOR 800
//#define DAMPING_FACTOR (0.8)
#define DAMPING_RANK   10
//#define DAMPING_RANK ((1 - DAMPING_FACTOR)/NUM_OF_PAGES)


#define WORD 4
#define DWORD 8
#define QWORD 16


typedef uint64_t  double;


//#define NUM_OF_UPDATE_GENERATORS (1 << NUM_OF_UPDATE_GENERATORS_LOG)
//#define NUM_OF_UPDATE_WRITERS (1 << NUM_OF_UPDATE_WRITERS_LOG)