.class public abstract Ltv/ouya/console/internal/IUserServiceDefinition$Stub;
.super Landroid/os/Binder;
.source "IUserServiceDefinition.java"

# interfaces
.implements Ltv/ouya/console/internal/IUserServiceDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/internal/IUserServiceDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/internal/IUserServiceDefinition$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "tv.ouya.console.internal.IUserServiceDefinition"

.field static final TRANSACTION_requestAddLike:I = 0x5

.field static final TRANSACTION_requestRedeemVoucher:I = 0x9

.field static final TRANSACTION_requestRemoveLike:I = 0x6

.field static final TRANSACTION_requestUserAddCreditCard:I = 0x3

.field static final TRANSACTION_requestUserAddCreditCardWithZIP:I = 0x8

.field static final TRANSACTION_requestUserAddsAccount:I = 0x2

.field static final TRANSACTION_requestUserGetCreditCard:I = 0x4

.field static final TRANSACTION_requestUserLikes:I = 0x7

.field static final TRANSACTION_requestUsername:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p0, p0, v0}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IUserServiceDefinition;
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
    const-string v1, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltv/ouya/console/internal/IUserServiceDefinition;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ltv/ouya/console/internal/IUserServiceDefinition;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ltv/ouya/console/internal/IUserServiceDefinition$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v2

    .line 52
    .local v2, "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUsername(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 54
    goto :goto_0

    .line 58
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    :sswitch_2
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserAddsAccount(Ltv/ouya/console/internal/IVoidListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 63
    goto :goto_0

    .line 67
    .end local v1    # "_arg0":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_3
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v7

    .local v7, "_arg6":Ltv/ouya/console/internal/IVoidListener;
    move-object v0, p0

    .line 82
    invoke-virtual/range {v0 .. v7}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserAddCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 84
    goto :goto_0

    .line 88
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_4
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/ICreditCardInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/ICreditCardInfoListener;

    move-result-object v1

    .line 91
    .local v1, "_arg0":Ltv/ouya/console/internal/ICreditCardInfoListener;
    invoke-virtual {p0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserGetCreditCard(Ltv/ouya/console/internal/ICreditCardInfoListener;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 93
    goto :goto_0

    .line 97
    .end local v1    # "_arg0":Ltv/ouya/console/internal/ICreditCardInfoListener;
    :sswitch_5
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v2

    .line 102
    .local v2, "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestAddLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 104
    goto/16 :goto_0

    .line 108
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_6
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v2

    .line 113
    .restart local v2    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestRemoveLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_7
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v1

    .line 122
    .local v1, "_arg0":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserLikes(Ltv/ouya/console/internal/IStringListener;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 124
    goto/16 :goto_0

    .line 128
    .end local v1    # "_arg0":Ltv/ouya/console/internal/IStringListener;
    :sswitch_8
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 142
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v8

    .local v8, "_arg7":Ltv/ouya/console/internal/IVoidListener;
    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v8}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestUserAddCreditCardWithZIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 147
    goto/16 :goto_0

    .line 151
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_9
    const-string v0, "tv.ouya.console.internal.IUserServiceDefinition"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v2

    .line 156
    .local v2, "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition$Stub;->requestRedeemVoucher(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 158
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
