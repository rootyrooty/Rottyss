#!/usr/local/bin/pip3 python3
import webbrowser
import os
import sys
import subprocess
#try:
#    import apt
#except ImportError:
#    print("Please install the 'python3-apt' package")
#    exit(1)


#dev tools
# print format Cprint(Terminal.black,"wadsadw") example willprint black wadsadw
# print "need2add" // not added yet
#packages lists
#get package packages[categorynumber][packagenumber]
#numbers start at 0]

#dpkg --get-selections | grep -v deinstall package list


Exploitation_Tools = [
        "armitage",
        "backdoor-factory",
        "beef-xss",
        "cisco-auditing-tool",
        "cisco-global-exploiter",
        "cisco-ocs",
        "cisco-torch",
        "commix",
        "crackle",
        "exploitdb",
        "jboss-autopwn",
        "linux-exploit-suggester",
        "metasploit-framework",
        "msfpc",
        "routersploit",
        "set",
        "shellnoob",
        "sqlmap",
        "thc-ipv6",
        "yersinia"
	]
Forensics_Tools = [
        "bulk-extractor",
        "capstone-tool",
        "chntpw",
        "cuckoo",
        "dc3dd",
        "ddrescue",
        "dumpzilla",
        "extundelete",
        "foremost",
        "galleta",
        "guymager",
        "libdistorm3-3",
        "p0f",
        "pdf-parser",
        "pdfid",
        "peepdf",
        "python-distorm3",
        "python3-capstone",
        "python3-distorm3",
        "regripper",
        "volatility",
        "xplico"
	]  
Hardware_Hacking = [
        "android-sdk",
        "apktool",
        "arduino",
        "dex2jar",
        "sakis3g",
        "smali"
	]
Information_Gathering = [
        "ace-voip",
        "amap",
        "apt2",
        "arp-scan",
        "bing-ip2hosts",
        "braa",
        "casefile",
        "cdpsnarf",
        "cisco-torch",
        "copy-router-config",
        "dmitry",
        "dnsenum",
        "dnsmap",
        "dnsrecon",
        "dnstracer",
        "dnswalk",
        "dotdotpwn",
        "enum4linux",
        "enumiax",
        "eyewitness",
        "faraday",
        "fierce",
        "firewalk",
        "fragroute",
        "fragrouter",
        "golismero",
        "goofile",
        "hping3",
        "ident-user-enum",
        "inspy",
        "intrace",
        "ismtp",
        "lbd",
        "masscan",
        "metagoofil",
        "nbtscan-unixwiz",
        "nikto",
        "nmap",
        "ntopng",
        "ntopng-data",
        "ntopng-doc",
        "osrframework",
        "p0f",
        "parsero",
        "qsslcaudit",
        "recon-ng",
        "set",
        "smbmap",
        "smtp-user-enum",
        "sntop",
        "sparta",
        "sslsplit",
        "sslstrip",
        "sslyze",
        "sublist3r",
        "thc-ipv6",
        "theharvester",
        "tlssled",
        "twofi",
        "unicornscan",
        "urlcrazy",
        "wireshark",
        "xplico"
	]
Maintaining_Access = [
        "cryptcat",
        "cymothoa",
        "dbd",
        "dns2tcp",
        "httptunnel",
        "nishang",
        "polenum",
        "powersploit",
        "pwnat",
        "ridenum",
        "sbd",
        "shellter",
        "webshells",
        "weevely",
        "winexe"
	]	
Password_Attacks = [
        "brutespray",
        "burpsuite",
        "cewl",
        "chntpw",
        "cisco-auditing-tool",
        "cmospwd",
        "creddump7",
        "crowbar",
        "crunch",
        "gpp-decrypt",
        "hash-identifier",
        "hashcat",
        "hydra",
        "john",
        "johnny",
        "maskprocessor",
        "multiforcer",
        "ncrack",
        "oclgausscrack",
        "patator",
        "polenum",
        "rainbowcrack",
        "rcracki-mt",
        "rsmangler",
        "seclists",
        "sqldict",
        "statsprocessor",
        "thc-pptp-bruter",
        "truecrack",
        "webscarab",
        "wordlists",
        "zaproxy"
	]
Reporting_Tools = [
        "casefile",
        "cherrytree",
        "cutycapt",
        "dos2unix",
        "dradis",
        "metagoofil",
        "nipper-ng",
        "pipal",
	]
Reverse_Engineering = [
        "apktool",
        "dex2jar",
        "edb-debugger",
        "javasnoop",
        "jd-gui",
        "ollydbg",
        "python-distorm3",
        "python3-distorm3",
        "smali",
        "valgrind",
        "yara"
	]
Sniffing_and_Spoofing = [
        "bettercap",
        "burpsuite",
        "dnschef",
        "fiked",
        "hamster-sidejack",
        "hexinject",
        "iaxflood",
        "inviteflood",
        "ismtp",
        "isr-evilgrade",
        "mitmproxy",
        "ohrwurm",
        "protos-sip",
        "rebind",
        "responder",
        "rtpbreak",
        "rtpinsertsound",
        "rtpmixsound",
        "sctpscan",
        "siparmyknife",
        "sipp",
        "sipvicious",
        "sniffjoke",
        "sslsplit",
        "sslstrip",
        "thc-ipv6",
        "voiphopper",
        "webscarab",
        "wifi-honey",
        "wireshark",
        "xspy",
        "yersinia",
        "zaproxy"
	]
Stress_Testing = [
        "dhcpig",
        "funkload",
        "iaxflood",
        "inviteflood",
        "ipv6-toolkit",
        "mdk3",
        "reaver",
        "rtpflood",
        "slowhttptest",
        "t50",
        "termineter",
        "thc-ipv6",
        "thc-ssl-dos"
	]
Vulnerability_Analysis = [
        "bbqsql",
        "bed",
        "cisco-auditing-tool",
        "cisco-global-exploiter",
        "cisco-ocs",
        "cisco-torch",
        "copy-router-config",
        "doona",
        "dotdotpwn",
        "jsql",
        "lynis",
        "nmap",
        "ohrwurm",
        "openvas",
        "oscanner",
        "sfuzz",
        "sidguesser",
        "siparmyknife",
        "sqlmap",
        "sqlninja",
        "sqlsus",
        "thc-ipv6",
        "tnscmd10g",
        "unix-privesc-check",
        "yersinia"
	]
Web_Applications = [
        "apache-users",
        "arachni",
        "bbqsql",
        "burpsuite",
        "cutycapt",
        "davtest",
        "dirb",
        "dirbuster",
        "funkload",
        "gobuster",
        "hurl",
        "jboss-autopwn",
        "joomscan",
        "jsql",
        "nikto",
        "padbuster",
        "paros",
        "parsero",
        "plecost",
        "recon-ng",
        "skipfish",
        "sqlmap",
        "sqlninja",
        "sqlsus",
        "uniscan",
        "webscarab",
        "websploit",
        "wfuzz",
        "whatweb",
        "wpscan",
        "xsser",
        "zaproxy"
	]
Wireless_Attacks = [
        "aircrack-ng",
        "airgraph-ng",
        "asleap",
        "bluelog",
        "blueranger",
        "bluesnarfer",
        "bully",
        "cowpatty",
        "crackle",
        "eapmd5pass",
        "fern-wifi-cracker",
        "freeradius-wpe",
        "hostapd-wpe",
        "kalibrate-rtl",
        "killerbee",
        "kismet",
        "mdk3",
        "mfcuk",
        "mfoc",
        "mfterm",
        "multimon-ng",
        "pixiewps",
        "pyrit",
        "reaver",
        "redfang",
        "rtlsdr-scanner",
        "spooftooph",
        "wifi-honey",
        "wifiphisher",
        "wifite"
	]

packages=[
	Exploitation_Tools,
	Forensics_Tools,
	Hardware_Hacking,
	Information_Gathering,
	Maintaining_Access,
	Password_Attacks,
	Reporting_Tools,
	Reverse_Engineering,
	Sniffing_and_Spoofing,
	Stress_Testing,
	Vulnerability_Analysis,
	Web_Applications,
	Wireless_Attacks
	]

# os.system(aptgi+packages[0][1]) to install package
aptgi ="sudo apt-get install "
isroot= "root"


def installp(ptype,p):
	if packages[ptype][p] in installed_packages :
		os.system(aptgi+packages[ptype][p])
		os.system (input())
	else:
		Cprint(col.orange,"package is already installed")
			
class Instalapplist:		
	def isinstalled(ptype,p):
			try:
				import p
			except ImportError as e:
				pass
			 
					
			
class col:
    """
    A list of settings for stylish terminal output according to
	http://www.termsys.demon.co.uk/vtansi.htm
    """
    black = "\033[1;30m"
    red = "\033[1;31m"
    green = "\033[1;32m"
    yellow = "\033[1;33m"
    blue = "\033[1;34m"
    orange= "\033[33m"
    magenta = "\033[1;35m"
    cyan = "\033[1;36m"
    white = "\033[1;37m"
    reset = "\033[0m"
    underscore = "\033[4m"
def Cprint(color,text):
		print (color+text) 
def clear():
	os.system('cls' if os.name == 'nt' else 'clear')
def logo():
	
	print ("")
	Cprint(col.red,"                    this is elad's Cheat Script lazy     \033[0m  \n")
def Cheatsheet ():
	while True :
		clear()
		logo()
		Cprint (col.red,"****************************** Cheat Scripts *****************************")
		print ("")
		Cprint (col.orange,"enter the index of the cheatsheet you want to open ")
		Cprint (col.orange,"enter anything else to exit \n")
		Cprint (col.orange,"1) Reverse Shell Cheat Sheet")
		Cprint (col.orange,"2) SQL Injection Cheat Sheet")
		Cprint (col.orange,"3) XSS cheatsheet")
		Cprint (col.orange,"4) LFI Cheat Sheet")
		Cprint (col.orange,"5) Path Traversal Cheat Sheet: Windows")
		Cprint (col.orange,"b) to go back")
		
		i = input()
		
		if i == "1":
			webbrowser.open('https://highon.coffee/blog/reverse-shell-cheat-sheet/')
		elif i == "2":
			webbrowser.open('https://www.netsparker.com/blog/web-security/sql-injection-cheat-sheet/ ')
		elif i == "3":
			webbrowser.open('http://n0p.net/penguicon/php_app_sec/mirror/xss.html ')
		elif i == "4":
			webbrowser.open('https://highon.coffee/blog/lfi-cheat-sheet/ ')
		elif i == "5":
			webbrowser.open('https://www.gracefulsecurity.com/path-traversal-cheat-sheet-windows/')
		if i == "b":
			mainmenu() 
			break
def Tools ():
	while True :
		clear()
		logo()
		
		Cprint (col.red, "****************************** All Tools ********************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open\install")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Checkers")
		Cprint (col.orange, "2) View tools catagories")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) Install All tools")
		Cprint (col.orange, "b) to go back")
		
		i = input()

		if i == "1":
			Checkers()
		elif i == "2":
			ToolsCat()
		elif i == "3":
			Cprint (col.orange, "need2add")
		elif i == "4":
			Cprint (col.orange, "need2add")
		elif i == "5":
			Cprint (col.orange, "need2add")
		if i == "b":
			mainmenu() 
			break
def Checkers ():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "******************************* Checkers ********************************")
		print ("")
		Cprint (col.orange, "enter the index of the Checker you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Multikeker")
		Cprint (col.orange, "2) ")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) ")
		Cprint (col.orange, "b) ")
		
		i = input()

		if i == "1":
			Cprint (col.orange, "need2add")
		elif i == "2":
			Cprint (col.orange, "need2add")
		elif i == "3":
			Cprint (col.orange, "need2add")
		elif i == "4":
			Cprint (col.orange, "need2add")
		elif i == "5":
			Cprint (col.orange, "need2add")
		if i == "b":
			Tools() 
			break
def ToolsCat():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			Expltools()
		elif i == "2":
			Frctools()
		elif i == "3":
			Hdhack()
		elif i == "4":
			InfoGath()
		elif i == "5":
			MntngAcc()
		elif i == "6":
			PsswdAttk()	
		elif i == "7":
			Reprttools()	
		elif i == "8":
			RevrEngne()
		elif i == "9":
			SnifnSpof()
		elif i == "10":
			Strsstst()
		elif i == "11":
			VulAnal()
		elif i == "12":
			WebApps()
		elif i == "13":
			WireAttks()
		if i == "b":
			Tools()

def InfoGath():
	while True :
		clear()
		logo()
		Cprint (col.red, "*************************** Pentesting Tools ****************************")
		Cprint (col.orange, "**************************** Info Gathering *****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
	
	
		i = input()

		if i == "1":
			Cprint (col.orange,"need2add")
		elif i == "2":
			Cprint (col.orange,"need2add")
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			Cprint (col.orange,"need2add")
		elif i == "5":
			Cprint (col.orange,"need2add")
		if i == "b":
			ToolsCat()
def VulAnal():
	while True :
		clear()
		logo()
		Cprint (col.red, "*************************** Pentesting Tools ****************************")
		Cprint (col.orange, "************************* Vulnerbility Analisis *************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, "1) Info Gathering")
		Cprint (col.orange, "2) Vulnerability Analisis")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) ")
		Cprint (col.orange, "6) ")
		Cprint (col.orange, "7) ")
		Cprint (col.orange, "5) ")
		Cprint (col.orange, "5) ")
		Cprint (col.orange, "5) ")
		Cprint (col.orange, "b) ")
	
	
	
		i = input()

		if i == "1":
			Cprint (col.orange,"need2add")
		elif i == "2":
			Cprint (col.orange,"need2add")
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			Cprint (col.orange,"need2add")
		elif i == "5":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def Expltools():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def Frctools():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()	
def Hdhack():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def MntngAcc():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def PsswdAttk():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def Reprttools():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def RevrEngne():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def SnifnSpof():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def Strsstst():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def WebApps():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()
def WireAttks():
	while True :
		clear()
		logo()
		Cprint (col.red, "****************************** All Tools ********************************")
		Cprint (col.orange, "*************************** Pentesting Tools ****************************")
		print ("")
		Cprint (col.orange, "enter the index of the Tool you want to open ")
		Cprint (col.orange, "enter anything else to exit \n")
		Cprint (col.orange, " 1) Exploitation_Tools")
		Cprint (col.orange, " 2) Forensics_Tools")
		Cprint (col.orange, " 3) Hardware_Hacking")
		Cprint (col.orange, " 4) Information_Gathering")
		Cprint (col.orange, " 5) Maintaining_Access")
		Cprint (col.orange, " 6) Password_Attacks")
		Cprint (col.orange, " 7) Reporting_Tools")
		Cprint (col.orange, " 8) Reverse_Engineering")
		Cprint (col.orange, " 9) Sniffing_and_Spoofing")
		Cprint (col.orange, "10) Stress_Testing")
		Cprint (col.orange, "11) Vulnerability_Analysis")
		Cprint (col.orange, "12) Web_Applications")
		Cprint (col.orange, "13) Wireless_Attacks")
		Cprint (col.orange, " b) ")
	
		i = input()
		if i == "1":
			InfoGath()
		elif i == "2":
			VulAnal()
		elif i == "3":
			Cprint (col.orange,"need2add")
		elif i == "4":
			InfoGath()
		elif i == "5":
			Cprint (col.orange,"need2add")	
		elif i == "6":
			Cprint (col.orange,"need2add")		
		elif i == "7":
			Cprint (col.orange,"need2add")	
		elif i == "8":
			Cprint (col.orange,"need2add")	
		elif i == "9":
			Cprint (col.orange,"need2add")	
		elif i == "10":
			Cprint (col.orange,"need2add")	
		elif i == "11":
			VulAnal()
		elif i == "12":
			Cprint (col.orange,"need2add")	
		elif i == "13":
			Cprint (col.orange,"need2add")	
		if i == "b":
			ToolsCat()

def mainmenu():
	while True :
		clear()
		logo()
		
		Cprint (col.red, "****************************** Main Menu ********************************")
		print ("")
		Cprint (col.orange,"enter the index of the cheatsheet you want to open \n")
		Cprint (col.orange, "1) To open cheatsheets")
		Cprint (col.orange, "2) All tools")
		Cprint (col.orange, "3) ")
		Cprint (col.orange, "4) ")
		Cprint (col.orange, "5) My shop")
		Cprint (col.orange, "0) to exit")
		
		
	
		i = input()
		
		if i == "1":
			Cheatsheet()
			break
		elif i == "2":
			Tools()
			break
		elif i == "3":
			break
			Cprint (col.orange,"need2add")
		elif i == "4":
			Cprint (col.orange,"need2add")
		elif i == "5":
			webbrowser.open('https://shoppy.gg/@rooty')
		elif i == "0":
			break


#reqs = subprocess.check_output([sys.executable, '-m', 'pip', 'freeze'])
#installed_packages = [r.decode().split('==')[0] for r in reqs.split()]
gp = "dpkg --get-selections"
installed_packages = str(os.system(gp))
clear()
#print(installed_packages) do not if else is print
#installp(1,21)

#installp(0,1)
#os.system(cmd+packages[0][1])

mainmenu()
#for beef-xss in packages (Exploitation Tools):
#		if p is not Installist(beef-xss):
	#		print "apt-get install "+ beef-xss
	#	else:
	#		print "package is already installed"


