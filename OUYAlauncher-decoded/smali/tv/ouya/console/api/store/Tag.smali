.class public Ltv/ouya/console/api/store/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/ouya/console/api/store/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adminOnly:Ljava/lang/Boolean;

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ltv/ouya/console/api/store/Tag$1;

    invoke-direct {v0}, Ltv/ouya/console/api/store/Tag$1;-><init>()V

    sput-object v0, Ltv/ouya/console/api/store/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adminOnly"    # Ljava/lang/Boolean;
    .param p3, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Ltv/ouya/console/api/store/Tag;->adminOnly:Ljava/lang/Boolean;

    .line 41
    iput-object p3, p0, Ltv/ouya/console/api/store/Tag;->imageUrl:Ljava/lang/String;

    .line 42
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
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/Tag;->readFromJSON(Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    instance-of v3, p1, Ltv/ouya/console/api/store/Tag;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 61
    check-cast v0, Ltv/ouya/console/api/store/Tag;

    .line 63
    .local v0, "that":Ltv/ouya/console/api/store/Tag;
    iget-object v3, p0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 64
    :cond_3
    iget-object v3, p0, Ltv/ouya/console/api/store/Tag;->adminOnly:Ljava/lang/Boolean;

    iget-object v4, p0, Ltv/ouya/console/api/store/Tag;->adminOnly:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 65
    :cond_4
    iget-object v3, p0, Ltv/ouya/console/api/store/Tag;->imageUrl:Ljava/lang/String;

    iget-object v4, v0, Ltv/ouya/console/api/store/Tag;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ltv/ouya/console/api/store/Tag;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 73
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/Tag;->adminOnly:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 74
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltv/ouya/console/api/store/Tag;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 75
    return v0
.end method

.method public readFromJSON(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    .line 96
    const-string v0, "admin_only"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/store/Tag;->adminOnly:Ljava/lang/Boolean;

    .line 97
    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/store/Tag;->imageUrl:Ljava/lang/String;

    .line 98
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 85
    iget-object v0, p0, Ltv/ouya/console/api/store/Tag;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Ltv/ouya/console/api/store/Tag;->adminOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Ltv/ouya/console/api/store/Tag;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
