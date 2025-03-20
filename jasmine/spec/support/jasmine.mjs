export default {
  spec_dir: "spec",
  spec_files: [
    "**/*[sS]pec.?(m)js"
  ],
  helpers: [
    "helpers/**/*.?(m)js"
  ],
  env: {
    stopSpecOnExpectationFailure: false,
    random: true,
    forbidDuplicateNames: true
  }
}

import jasmineReporters from 'jasmine-reporters';

var junitReporter = new jasmineReporters.JUnitXmlReporter({
  savePath: './test-reports',
  consolidateAll: false
});
jasmine.getEnv().addReporter(junitReporter);