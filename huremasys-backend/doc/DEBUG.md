# Maintenance & Utilities

This file aims to keep track of the solutions of some problems i found while developing this app.

---

## Payara server

If the server has already started and you try to start again, here how to restart it properly :

```bash
# execute from project_root/payara/bin/

./asadmin stop-domain domain1
./asadmin start-domain domain1
```

When the default ports are already used by a payara server from another application or after the above commands, the server still not responding properly :

Delete and recreate the domain (if corrupted)

```bash
# execute from project_root/payara/bin/
# think stoping the domain (command above) before these commands

./asadmin delete-domain domain1
./asadmin create-domain --adminport 4848 --instanceport 8080 domain1
```

In case the creation of a new domain does not work, it's often due to: permissions, corrupted file remnants or an incorrect installation path /JAVA_HOME.

The solution is to completely deletes old domains and temporary files:

```bash
rm -rf ~/eclipse-workspace/huremasys/payara/glassfish/domains/*
rm -rf ~/eclipse-workspace/huremasys/payara/glassfish/lib/databases
```
Then recreate the domain.

If it doesn't work, then probably a payara server is already running with a domain.

So, check it:

```bash
ps aux | grep payara
```

If it's the case, then kill its process:

```bash
sudo kill -9 $(ps aux | grep 'payara6' | grep -v grep | awk '{print $2}')
sudo kill -9 $(ps aux | grep 'glassfish' | grep -v grep | awk '{print $2}')
```

---

## 🧑‍💻 Auteur

💼 **Name** : [Gaspar da Rosa Francisco](https://www.linkedin.com/in/gaspar-francisco-5a4639203/)

🎓 **Profile** : Software engineer — Full Stack Developer

🔗 **GitHub** : [Gasparfgf](https://github.com/Gasparfgf)
