mongoimport --db test --collection indicators --drop --file ./indicators.txt 
mongoimport --db test --collection sections --drop --file ./sections.txt 
mongoimport --db test --collection questions --drop --file ./questions.txt 
mongoimport --db test --collection users --drop --file ./users.txt
mongoimport --db test --collection meta --drop --file ./meta.txt
