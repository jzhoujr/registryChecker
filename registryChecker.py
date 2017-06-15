from winreg import *

hKey = OpenKey(HKEY_LOCAL_MACHINE, "SOFTWARE")

try:
    i = 0
    for i in range(1024):
        subkey = EnumKey(hKey, i)
        print (subkey)
        if (subkey == 'Canon'):
            print ('Canon Software Found!!!')
        i += 1

except WindowsError:
    pass