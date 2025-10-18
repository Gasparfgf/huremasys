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
./asadmin delete-domain domain1
./asadmin create-domain --adminport 4848 --instanceport 8080 domain1

``


---

## 🧑‍💻 Auteur

💼 Name : [Gaspar da Rosa Francisco](https://www.linkedin.com/in/gaspar-francisco-5a4639203/)

🎓 Profile : Software engineer — Full Stack Developer

🔗 GitHub : [Gasparfgf](https://github.com/Gasparfgf)
