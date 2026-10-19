.class public abstract Ltv/ouya/console/internal/IIapServiceDefinition$Stub;
.super Landroid/os/Binder;
.source "IIapServiceDefinition.java"

# interfaces
.implements Ltv/ouya/console/internal/IIapServiceDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/internal/IIapServiceDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/internal/IIapServiceDefinition$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "tv.ouya.console.internal.IIapServiceDefinition"

.field static final TRANSACTION_requestGamerUuid:I = 0x5

.field static final TRANSACTION_requestProductList:I = 0x2

.field static final TRANSACTION_requestPurchase:I = 0x3

.field static final TRANSACTION_requestReceipts:I = 0x4

.field static final TRANSACTION_setTestMode:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-virtual {p0, p0, v0}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IIapServiceDefinition;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltv/ouya/console/internal/IIapServiceDefinition;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ltv/ouya/console/internal/IIapServiceDefinition;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ltv/ouya/console/internal/IIapServiceDefinition$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->setTestMode()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v5, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v5, Ltv/ouya/console/api/Purchasable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/Purchasable;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ltv/ouya/console/internal/IProductListListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IProductListListener;

    move-result-object v3

    .line 61
    .local v3, "_arg2":Ltv/ouya/console/internal/IProductListListener;
    invoke-virtual {p0, v0, v2, v3}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->requestProductList(Ljava/lang/String;Ljava/util/List;Ltv/ouya/console/internal/IProductListListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/Purchasable;>;"
    .end local v3    # "_arg2":Ltv/ouya/console/internal/IProductListListener;
    :sswitch_3
    const-string v5, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    sget-object v5, Ltv/ouya/console/api/Purchasable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/ouya/console/api/Purchasable;

    .line 78
    .local v1, "_arg1":Ltv/ouya/console/api/Purchasable;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v3

    .line 79
    .local v3, "_arg2":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v0, v1, v3}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->requestPurchase(Ljava/lang/String;Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/internal/IStringListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v1    # "_arg1":Ltv/ouya/console/api/Purchasable;
    .end local v3    # "_arg2":Ltv/ouya/console/internal/IStringListener;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Ltv/ouya/console/api/Purchasable;
    goto :goto_1

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/api/Purchasable;
    :sswitch_4
    const-string v5, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v1

    .line 90
    .local v1, "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->requestReceipts(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    :sswitch_5
    const-string v5, "tv.ouya.console.internal.IIapServiceDefinition"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v1

    .line 101
    .restart local v1    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IIapServiceDefinition$Stub;->requestGamerUuid(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
