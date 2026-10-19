.class final Ltv/ouya/console/api/Receipt$1;
.super Ljava/lang/Object;
.source "Receipt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/Receipt;
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
        "Ltv/ouya/console/api/Receipt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Receipt$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Receipt;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Receipt;
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 61
    new-instance v0, Ltv/ouya/console/api/Receipt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/ouya/console/api/Receipt;-><init>(Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Receipt$1;->newArray(I)[Ltv/ouya/console/api/Receipt;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/Receipt;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Ltv/ouya/console/api/Receipt;

    return-object v0
.end method
