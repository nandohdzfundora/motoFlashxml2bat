from re import S
import xml.etree.ElementTree as ET

arc = ET.parse('../flashfile.xml').getroot()


def getFlash(step):
    return getErase(step)+" "+step.attrib['filename']

def getErase(step):
    return step.attrib['operation']+" "+step.attrib['partition']

def getDefault(step):
    return step.attrib['operation']+" "+step.attrib['var']
    #<step operation="oem" var="fb_mode_set"/>

getCommandsDic = {
    "flash":getFlash,
    "erase":getErase,
}

stepList = arc.find("steps").findall("step")
steps = ''
for child in stepList:
    order="mfastboot.exe "
    if child.attrib['operation']=="flash" or child.attrib['operation']=="erase":
        order += getCommandsDic[child.attrib['operation']](child)
    else:
        order += getDefault(child)
    order+='\n'
    steps+= order

f = open("../flashall.bat", "w")
f.write(steps)
f.close()
     