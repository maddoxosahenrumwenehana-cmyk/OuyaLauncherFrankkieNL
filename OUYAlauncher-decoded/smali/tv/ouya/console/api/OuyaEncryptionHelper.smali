.class public Ltv/ouya/console/api/OuyaEncryptionHelper;
.super Ljava/lang/Object;
.source "OuyaEncryptionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createReceipt(Ltv/ouya/console/internal/util/OuyaDateParser;Lorg/json/JSONObject;)Ltv/ouya/console/api/Receipt;
    .locals 6
    .param p1, "odp"    # Ltv/ouya/console/internal/util/OuyaDateParser;
    .param p2, "receipt"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v1, "purchaseDate"

    .line 199
    .local v1, "dateField":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 206
    .local v0, "date":Ljava/util/Date;
    :goto_0
    const-string v1, "generateDate"

    .line 207
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 214
    .local v2, "generatedDate":Ljava/util/Date;
    :goto_1
    const-string v4, "identifier"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "productId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    const-string v4, "sku"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_0
    new-instance v4, Ltv/ouya/console/api/Receipt;

    const-string v5, "priceInCents"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v3, v5, v0, v2}, Ltv/ouya/console/api/Receipt;-><init>(Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V

    return-object v4

    .line 202
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "generatedDate":Ljava/util/Date;
    .end local v3    # "productId":Ljava/lang/String;
    :cond_1
    const-string v4, "date"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ltv/ouya/console/internal/util/OuyaDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0

    .line 210
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 211
    .restart local v2    # "generatedDate":Ljava/util/Date;
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    goto :goto_1
.end method

.method public static decryptProductResponse(Ljava/lang/String;[B)Ltv/ouya/console/api/Product;
    .locals 13
    .param p0, "encryptedResponse"    # Ljava/lang/String;
    .param p1, "appKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 159
    invoke-static {p0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 161
    .local v4, "encryptedReceiptResponse":[B
    aget-byte v10, v4, v10

    if-eq v10, v11, :cond_0

    .line 162
    new-instance v10, Ljava/security/InvalidParameterException;

    const-string v11, "The receipt is encrypted using a system which is unknown"

    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 166
    :cond_0
    const-string v10, "RSA"

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 167
    .local v5, "factory":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v7, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 168
    .local v7, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v5, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v8

    .line 170
    .local v8, "privateRSAKey":Ljava/security/PrivateKey;
    aget-byte v6, v4, v11

    .line 171
    .local v6, "keySize":I
    const-string v10, "RSA"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 172
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 173
    invoke-virtual {v1, v4, v11, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    .line 175
    .local v3, "decryptedKey":[B
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v0, v3, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 178
    .local v0, "aesKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v10, "AES"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 179
    invoke-virtual {v1, v12, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 180
    add-int/lit8 v10, v6, 0x2

    array-length v11, v4

    invoke-virtual {v1, v4, v10, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 181
    .local v2, "decryptedData":[B
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 182
    .local v9, "receiptResponse":Ljava/lang/String;
    new-instance v10, Ltv/ouya/console/api/Product;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ltv/ouya/console/api/Product;-><init>(Lorg/json/JSONObject;)V

    return-object v10
.end method


# virtual methods
.method public decryptPurchaseResponse(Lorg/json/JSONObject;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 13
    .param p1, "encryptedResponse"    # Lorg/json/JSONObject;
    .param p2, "appKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v11, "key"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "iv"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "blob"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 74
    :cond_0
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Invalid response from server"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 77
    :cond_1
    const-string v11, "key"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "base64Data":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 79
    .local v7, "keyData":[B
    const-string v11, "RSA/ECB/PKCS1Padding"

    const-string v12, "BC"

    invoke-static {v11, v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 80
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x2

    invoke-virtual {v1, v11, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 81
    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 82
    .local v6, "keyBytes":[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v5, v6, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 84
    .local v5, "key":Ljavax/crypto/SecretKey;
    const-string v11, "iv"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 86
    .local v4, "ivBytes":[B
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 88
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const-string v11, "blob"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "payloadString":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 90
    .local v8, "payload":[B
    const-string v11, "AES/CBC/PKCS5Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 91
    const/4 v11, 0x2

    invoke-virtual {v1, v11, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    invoke-virtual {v1, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 94
    .local v2, "encryptedReceipts":[B
    new-instance v10, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v11, v2, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v10, "response":Lorg/json/JSONObject;
    const-string v11, "uuid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 96
    const-string v11, "uuid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 98
    :goto_0
    return-object v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public decryptReceiptResponse(Lorg/json/JSONObject;Ljava/security/PublicKey;)Ljava/util/List;
    .locals 13
    .param p1, "encryptedResponse"    # Lorg/json/JSONObject;
    .param p2, "appKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/security/PublicKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Receipt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v11, "key"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "iv"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "blob"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 36
    :cond_0
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Invalid response from server"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 39
    :cond_1
    const-string v11, "key"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "base64Data":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 41
    .local v7, "keyData":[B
    const-string v11, "RSA/ECB/PKCS1Padding"

    const-string v12, "BC"

    invoke-static {v11, v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 42
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x2

    invoke-virtual {v1, v11, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 43
    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 44
    .local v6, "keyBytes":[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v5, v6, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 46
    .local v5, "key":Ljavax/crypto/SecretKey;
    const-string v11, "iv"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 48
    .local v4, "ivBytes":[B
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 50
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const-string v11, "blob"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "payloadString":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 52
    .local v8, "payload":[B
    const-string v11, "AES/CBC/PKCS5Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 53
    const/4 v11, 0x2

    invoke-virtual {v1, v11, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    invoke-virtual {v1, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 56
    .local v2, "encryptedReceipts":[B
    new-instance v10, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v11, v2, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v10, "purchasesWrapper":Lorg/json/JSONObject;
    const-string v11, "purchases"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {p0, v11}, Ltv/ouya/console/api/OuyaEncryptionHelper;->parseJSONReceiptResponse(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    return-object v11
.end method

.method public parseJSONReceiptResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "receiptResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Receipt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    const-string v2, "ENCRYPTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ltv/ouya/console/api/OuyaEncryptionHelper;->parseJSONReceiptResponse(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 119
    :goto_0
    return-object v2

    .line 116
    :cond_0
    const-string v2, "ENCRYPTED"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "purchasesWrapper":Lorg/json/JSONObject;
    const-string v2, "purchases"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltv/ouya/console/api/OuyaEncryptionHelper;->parseJSONReceiptResponse(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 120
    .end local v1    # "purchasesWrapper":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 122
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseJSONReceiptResponse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1, "receiptArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Receipt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v2, "receipts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltv/ouya/console/api/Receipt;>;"
    new-instance v1, Ltv/ouya/console/internal/util/OuyaDateParser;

    invoke-direct {v1}, Ltv/ouya/console/internal/util/OuyaDateParser;-><init>()V

    .line 139
    .local v1, "odp":Ltv/ouya/console/internal/util/OuyaDateParser;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ltv/ouya/console/api/OuyaEncryptionHelper;->createReceipt(Ltv/ouya/console/internal/util/OuyaDateParser;Lorg/json/JSONObject;)Ltv/ouya/console/api/Receipt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-object v2
.end method
