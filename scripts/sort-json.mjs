import fs from "node:fs";

const pattern = new RegExp("^.*.json$");

process.argv.forEach((arg) => {
  if (!pattern.test(arg)) {
    return;
  }

  const file = fs.readFileSync(arg, "utf-8");

  const data = JSON.parse(file);

  const sortedData = Object.keys(data)
    .sort()
    .reduce((acc, key) => {
      acc[key] = data[key];
      return acc;
    }, {});

  const sortedFile = JSON.stringify(sortedData, null, 2);

  fs.writeFileSync(arg, sortedFile, "utf-8");

  console.log(`sorted ${arg}`);
});
