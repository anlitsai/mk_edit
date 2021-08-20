#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jun  9 13:46:32 2021

@author: altsai
"""
import os
import sys
import csv
import pandas as pd
import shutil
import re
import subprocess


file1='01_mk_link_cut.txt'
df_info=pd.read_csv(file1,delimiter=']',header=None)
#df_info=pd.read_csv('mk_link_cut_mod.txt',delimiter=']',header=None)
#print(df_info)


df_info[0]=df_info[0]+']'
df_key=df_info[0]
df_link=df_info[1]

print(df_info)
n_key=len(df_key)
print('#', n_key)



      
f0='test'
f1='02_mk_link_replace.txt'

shutil.copy2(f0,f1)




for i in range(n_key):
    key=df_key[i]
    link=df_link[i]
    print("key = ",key)
    print("link = ",link)

    with open(f1,'r+') as f:
        text=f.read()
        text=re.sub(link,key,text)
        text=re.sub("\(\[","[",text)
        text=re.sub("]\)","]",text)
        f.seek(0)
        f.write(text)
        f.truncate()


print('  ')
print('... finished ...')
print('  ')
