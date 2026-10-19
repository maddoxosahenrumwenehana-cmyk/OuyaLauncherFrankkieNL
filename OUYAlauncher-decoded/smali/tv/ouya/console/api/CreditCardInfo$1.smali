.class final Ltv/ouya/console/api/CreditCardInfo$1;
.super Ljava/lang/Object;
.source "CreditCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/CreditCardInfo;
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
        "Ltv/ouya/console/api/CreditCardInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/CreditCardInfo$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/CreditCardInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/CreditCardInfo;
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 23
    new-instance v0, Ltv/ouya/console/api/CreditCardInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ltv/ouya/console/api/CreditCardInfo;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/CreditCardInfo$1;->newArray(I)[Ltv/ouya/console/api/CreditCardInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/CreditCardInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 28
    new-array v0, p1, [Ltv/ouya/console/api/CreditCardInfo;

    return-object v0
.end method
