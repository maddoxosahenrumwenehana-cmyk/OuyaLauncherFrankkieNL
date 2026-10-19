.class public Ltv/ouya/console/api/Purchasable;
.super Ljava/lang/Object;
.source "Purchasable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/Purchasable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIV:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPayload:Ljava/lang/String;

.field private productId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ltv/ouya/console/api/Purchasable$1;

    invoke-direct {v0}, Ltv/ouya/console/api/Purchasable$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/Purchasable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "iv"    # Ljava/lang/String;
    .param p4, "payload"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Ltv/ouya/console/api/Purchasable;->mKey:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Ltv/ouya/console/api/Purchasable;->mIV:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Ltv/ouya/console/api/Purchasable;->mPayload:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private encrypt(Ljava/security/PublicKey;)Z
    .locals 12
    .param p1, "appKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 130
    const-string v8, "SHA1PRNG"

    invoke-static {v8}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v7

    .line 132
    .local v7, "sr":Ljava/security/SecureRandom;
    new-array v5, v9, [B

    .line 133
    .local v5, "keyBytes":[B
    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v4, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 136
    .local v4, "key":Ljavax/crypto/SecretKey;
    new-array v3, v9, [B

    .line 137
    .local v3, "ivBytes":[B
    invoke-virtual {v7, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 138
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 140
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 141
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, v11, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 142
    iget-object v8, p0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 144
    .local v6, "payload":[B
    const-string v8, "RSA"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v11, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 146
    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 148
    .local v1, "encryptedKey":[B
    invoke-static {v1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltv/ouya/console/api/Purchasable;->mKey:Ljava/lang/String;

    .line 149
    invoke-static {v3, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltv/ouya/console/api/Purchasable;->mIV:Ljava/lang/String;

    .line 150
    invoke-static {v6, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltv/ouya/console/api/Purchasable;->mPayload:Ljava/lang/String;

    .line 152
    return v11
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 163
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 167
    :goto_0
    return v1

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 166
    check-cast v0, Ltv/ouya/console/api/Purchasable;

    .line 167
    .local v0, "that":Ltv/ouya/console/api/Purchasable;
    iget-object v1, p0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    iget-object v2, v0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public hasEncryptionParameters()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->mIV:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->mPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Ltv/ouya/console/api/Purchasable;->hasEncryptionParameters()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{ \"key\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Ltv/ouya/console/api/Purchasable;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "\", \"iv\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v1, p0, Ltv/ouya/console/api/Purchasable;->mIV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "\", \"blob\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Ltv/ouya/console/api/Purchasable;->mPayload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Ltv/ouya/console/api/Purchasable;->hasEncryptionParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->mIV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Ltv/ouya/console/api/Purchasable;->mPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
