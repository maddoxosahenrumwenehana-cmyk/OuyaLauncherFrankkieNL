.class final Ltv/ouya/console/api/store/StoreSection$1;
.super Ljava/lang/Object;
.source "StoreSection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/StoreSection;
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
        "Ltv/ouya/console/api/store/StoreSection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/StoreSection$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/StoreSection;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/StoreSection;
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 30
    .local v2, "subsectionCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v3, "subsections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltv/ouya/console/api/store/StoreSection;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/StoreSection$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/StoreSection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance v5, Ltv/ouya/console/api/store/StoreSection;

    invoke-direct {v5, v1, v4, v3}, Ltv/ouya/console/api/store/StoreSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v5
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/StoreSection$1;->newArray(I)[Ltv/ouya/console/api/store/StoreSection;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/StoreSection;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 40
    new-array v0, p1, [Ltv/ouya/console/api/store/StoreSection;

    return-object v0
.end method
