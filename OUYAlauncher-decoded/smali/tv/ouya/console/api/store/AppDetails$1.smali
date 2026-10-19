.class final Ltv/ouya/console/api/store/AppDetails$1;
.super Ljava/lang/Object;
.source "AppDetails.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/AppDetails;
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
        "Ltv/ouya/console/api/store/AppDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDetails$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/AppDetails;
    .locals 18
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, "mainImageFullUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 22
    .local v5, "uuid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 23
    .local v6, "apkFileSize":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 24
    .local v7, "versionNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 25
    .local v8, "publishedAt":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v9, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 28
    .local v10, "likeCount":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 29
    .local v11, "overview":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 30
    .local v12, "rating":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 31
    .local v13, "versionUuid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 32
    .local v14, "founder":Ljava/lang/Boolean;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 34
    .local v15, "developer":Ljava/lang/String;
    new-instance v1, Ltv/ouya/console/api/store/AppDetails;

    invoke-direct/range {v1 .. v15}, Ltv/ouya/console/api/store/AppDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v1

    .line 31
    .end local v14    # "founder":Ljava/lang/Boolean;
    .end local v15    # "developer":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/AppDetails$1;->newArray(I)[Ltv/ouya/console/api/store/AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/AppDetails;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 40
    new-array v0, p1, [Ltv/ouya/console/api/store/AppDetails;

    return-object v0
.end method
