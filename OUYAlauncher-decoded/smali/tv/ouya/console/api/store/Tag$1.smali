.class final Ltv/ouya/console/api/store/Tag$1;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/Tag;
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
        "Ltv/ouya/console/api/store/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/Tag$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/Tag;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/Tag;
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 16
    .local v0, "adminOnly":Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "imageUrl":Ljava/lang/String;
    new-instance v3, Ltv/ouya/console/api/store/Tag;

    invoke-direct {v3, v2, v0, v1}, Ltv/ouya/console/api/store/Tag;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v3

    .line 15
    .end local v0    # "adminOnly":Ljava/lang/Boolean;
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/Tag$1;->newArray(I)[Ltv/ouya/console/api/store/Tag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/Tag;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 22
    new-array v0, p1, [Ltv/ouya/console/api/store/Tag;

    return-object v0
.end method
