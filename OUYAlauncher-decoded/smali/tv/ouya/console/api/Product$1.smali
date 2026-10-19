.class final Ltv/ouya/console/api/Product$1;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/Product;
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
        "Ltv/ouya/console/api/Product;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Product$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Product;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Product;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 25
    new-instance v0, Ltv/ouya/console/api/Product;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ltv/ouya/console/api/Product;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Product$1;->newArray(I)[Ltv/ouya/console/api/Product;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/Product;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 30
    new-array v0, p1, [Ltv/ouya/console/api/Product;

    return-object v0
.end method
