{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red0\green0\blue0;
}
{\*\expandedcolortbl;;\csgray\c0;\csgray\c100000;\cssrgb\c0\c0\c0;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww13760\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 \cb3 \CocoaLigature0 # how to create a PEM for OCI\
# https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm\
\
openssl genrsa -out oci_api_key.pem 2048\
chmod go-rwx oci_api_key.pem\
openssl rsa -pubout -in oci_api_key.pem -out oci_api_key_public.pem\
\pard\pardeftab720\sl280\partightenfactor0

\f1\fs24 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \outl0\strokewidth0 \strokec4 cat oci_api_key_public.pem | pbcopy\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 \outl0\strokewidth0 \
openssl rsa -pubout -outform DER -in oci_api_key.pem | openssl md5 -c>fingerprint.txt\
}