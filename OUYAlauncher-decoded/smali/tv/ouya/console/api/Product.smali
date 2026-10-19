.class public Ltv/ouya/console/api/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/Product;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private identifier:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private priceInCents:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ltv/ouya/console/api/Product$1;

    invoke-direct {v0}, Ltv/ouya/console/api/Product$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priceInCents"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    .line 59
    iput p3, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Product;->readFromJSONObject(Lorg/json/JSONObject;)V

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-ne p0, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/Product;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 150
    check-cast v0, Ltv/ouya/console/api/Product;

    .line 152
    .local v0, "product":Ltv/ouya/console/api/Product;
    iget v3, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    iget v4, v0, Ltv/ouya/console/api/Product;->priceInCents:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 153
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 154
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceInCents()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 167
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    add-int v0, v1, v2

    .line 169
    return v0
.end method

.method public readFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 179
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    .line 180
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    .line 181
    const-string v0, "priceInCents"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    .line 182
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setPriceInCents(I)V
    .locals 0
    .param p1, "priceInCents"    # I

    .prologue
    .line 113
    iput p1, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget-object v0, p0, Ltv/ouya/console/api/Product;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Ltv/ouya/console/api/Product;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Ltv/ouya/console/api/Product;->priceInCents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
