#ifndef ROOT_AuthConst
#define ROOT_AuthConst
#include <string.h>
const float pi=3.1415926;
    //*titles of the figure
    char title[][50] = {       /*title of */
              /*figure*/  "Distribution of",   
              /*x-axis*/  "\0",             
              /*y-axis*/  "Events"               
                       };
    //*data setup (number of elelment should be equal to "signaltype")
    
    const int signaltype = 2;      /*numberof the types of the signals (size)*/
    
    const char *file[] = {        /*the file of the signal*/
                              "../ww-c16a-nofakes-nodata_2-25.root", 
                              "../tt-c16a-nofakes-nodata_2-25.root"
                           };
    const char *tree[] = {        /*the tree of the signals*/
                              "CutVBFWWControl_CJV20", 
                              "CutVBFWWControl_CJV20"
                           };
    const char *sig[] = {         /*the name of the signals*/
                              "ww", 
                              "tt"
                           };
    bool normalize[] = {           /*do normalize*/
                         false, 
                         false
                       };
    
     
    Double_t modify[] = {         /*amplified factor*/ 
                              1,
                              1,
                         };
    const char *pattern[] = {     /*pattern of data*/ //line: "l", filled: "f", error bar: "e", marker: "p"
                               "lf",
                               "lf"
                             };
    const int pattern_style[] = { 
                                    3000,
                                    3002
                                  };
    const int linewidth[] = {
                               3,
                               3
                             };                           
    const int color[] = {        /*color of signal*/ //code or number of colors
                         kBlue,
                         kBlack
                   };
    const char *figure[] = {     /*data option for the figure eg: error bar*/
                               "hist",
                               "hist same"
                            };
     
     bool stack_hs = true;
     int num_stack = 2;
     const int classification[] = {
                                     1,
                                     1
                                  };
    
    //*archive setup (number of elelment should be equal to "savenumber")
    const int save_number = 2;      /*numberof the types of the archives (size)*/
    
    char savetype[][5] = {          /*types of the saving files */
                           "pdf", 
                           "jpg"
                         };
                          
    
    const char saveform[][50] = {"/distribution of", "/stack of"};  /*title of archive*/



    char save[save_number][50]; /*save file name --> see preparation*/
    char c[10];                 /*char type of binrange --> see preparation*/





//check  this header is loaded
void check()
{
    printf("common setting load successfully~\n");
}
#endif
