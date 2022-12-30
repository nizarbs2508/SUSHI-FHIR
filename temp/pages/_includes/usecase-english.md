
Here follows an English use case

### Installation for SUSHI users

SUSHI requires Node.js to be installed on the user's system. Users should install Node.js 12 (LTS), although the previous version of LTS (Node.js 10) should also work.  

Once Node.js is installed, run the following command to install or update SUSHI:  

$ npm install -g fsh-sushi  

After installation, the line of sushicommand will be available in your path:  

$ sushi --help  
Usage: sushi [path-to-fsh-project] [options]  

Options:  

  -o, --out <out>       the path to the output folder  
  -d, --debug           output extra debugging information  
  -p, --preprocessed    output FSH produced by preprocessing steps  
  -s, --snapshot        generate snapshot in Structure Definition output (default: false)  
  -r, --require-latest  exit with error if this is not the latest version of SUSHI (default: false)  
  -i, --init            initialize a SUSHI project  
  -v, --version         print SUSHI version  
  -h, --help            output usage information  

Additional information:  

  [path-to-fsh-project]  
    Default: "."  
  -o, --out <out>  
    Default: "fsh-generated"  


### IG Generation
    
SUSHI supports publishing implementation guides through the new template-based IG Publisher. The template-based editor is still under development by the FHIR community. See guidance for creating HL7 GIs for more details.  

Based on entries in the FSH files, sushi-config.yaml and the IG project directory, SUSHI populates the output directory. See the IG Project with SUSHI documentation for more information on using SUSHI to generate IGs.  

