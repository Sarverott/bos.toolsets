import { Octokit } from "@octokit/rest";

import fs from 'fs'

let definedModule = JSON.parse(fs.readFileSync("./.define.json", 'utf-8'));

const octokit = new Octokit();

// Compare: https://docs.github.com/en/rest/reference/repos/#list-organization-repositories
console.log(definedModule)

octokit.rest.meta.get().then(({ data }) => {
    // handle data
    console.log(data);
  });

function overwriteDefineJson(){
    octokit.rest.repos
  .listForOrg({
    org: "octokit",
    type: "public",
  })
  
}


function installableGistCreate(){

    octokit.rest.gists.create({
        definedModule
    })
}