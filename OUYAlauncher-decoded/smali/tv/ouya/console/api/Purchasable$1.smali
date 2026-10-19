.class final Ltv/ouya/console/api/Purchasable$1;
.super Ljava/lang/Object;
.source "Purchasable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/Purchasable;
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
        "Ltv/ouya/console/api/Purchasable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Purchasable$1;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Purchasable;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Purchasable;
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "productId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to rebuild purchasable. Encryption data state unknown"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :pswitch_0
    new-instance v1, Ltv/ouya/console/api/Purchasable;

    invoke-direct {v1, v0}, Ltv/ouya/console/api/Purchasable;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_0
    return-object v1

    :pswitch_1
    new-instance v1, Ltv/ouya/console/api/Purchasable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Ltv/ouya/console/api/Purchasable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/Purchasable$1;->newArray(I)[Ltv/ouya/console/api/Purchasable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ltv/ouya/console/api/Purchasable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 41
    new-array v0, p1, [Ltv/ouya/console/api/Purchasable;

    return-object v0
.end method
