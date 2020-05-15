#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QDebug>
#include <iostream>
#include <fstream>
#include <cryptopp/aes.h>
#include <cryptopp/modes.h>
#include <cryptopp/base64.h>
#include <cryptopp/sha.h>
#include <cryptopp/osrng.h>
#include <cryptopp/filters.h>
#include <cryptopp/files.h>
#include <cryptopp/hex.h>
#include <cryptopp/rsa.h>
#include "assistant.h"


using namespace std;

class BackEnd : public QObject
{
    Q_OBJECT
public:
    BackEnd();
    void generateKeyPair();
    Q_INVOKABLE QString getPrivateKey();
    Q_INVOKABLE QString getPublicKey();
    QString generateActivationCode();
    QString signActiveCode(QString code, QString privateKey);
    bool verifyHash(QString hash, QString publicKey, QString activation_code);
    QString Private_Key = "error";
    QString Public_Key = "error";
    QString activationCode;
    CryptoPP::SecByteBlock  temp_subsig;
};

#endif // BACKEND_H
