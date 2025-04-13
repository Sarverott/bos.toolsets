const child_process=require("child_process");
const readline=require("readline");

const { stdin: input, stdout: output, argv } = require('node:process');

const rl = readline.createInterface({ input, output });

const scripts={
    save:function(){
        rl.question('update message to commit on save: ', (message) => {
            console.log(child_process.execFileSync("./updater.sh", [message]))
          
            rl.close();
          });
        
    },
    test:function(){
        rl.question('update message to commit on test: ', (message) => {
            console.log(child_process.execFileSync("./tester.sh", [message]))
          
            rl.close();
          });
        
    }
};

if(require.main===module){
    scripts[argv[2]]()
}



