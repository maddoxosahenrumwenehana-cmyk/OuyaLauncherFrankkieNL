.class final Ltv/ouya/console/api/store/AppDescription$1;
.super Ljava/lang/Object;
.source "AppDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/AppDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ltv/ouya/console/api/store/AppDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDescription$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDescription;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDescription;
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v11, -0x1

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "mainImageFullUrl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 47
    .local v10, "versionCount":I
    const/4 v4, 0x0

    .line 48
    .local v4, "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    if-le v10, v11, :cond_0

    .line 49
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    .restart local v4    # "versions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ltv/ouya/console/api/store/AppDescription$AppVersion;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "key":Ljava/lang/String;
    new-instance v9, Ltv/ouya/console/api/store/AppDescription$AppVersion;

    invoke-direct {v9}, Ltv/ouya/console/api/store/AppDescription$AppVersion;-><init>()V

    .line 53
    .local v9, "version":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUuid(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setUploadedAt(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ltv/ouya/console/api/store/AppDescription$AppVersion;->setMainImageFullUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 59
    .end local v6    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "version":Ltv/ouya/console/api/store/AppDescription$AppVersion;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 60
    .local v8, "tagCount":I
    const/4 v5, 0x0

    .line 61
    .local v5, "tagNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-le v8, v11, :cond_1

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "tagNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .restart local v5    # "tagNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    .end local v6    # "i":I
    :cond_1
    new-instance v0, Ltv/ouya/console/api/store/AppDescription;

    invoke-direct/range {v0 .. v5}, Ltv/ouya/console/api/store/AppDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDescription$1;->newArray(I)[Ltv/ouya/console/api/store/AppDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/AppDescription;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 72
    new-array v0, p1, [Ltv/ouya/console/api/store/AppDescription;

    return-object v0
.end method
