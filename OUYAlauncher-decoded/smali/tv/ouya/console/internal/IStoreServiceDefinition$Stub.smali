.class public abstract Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;
.super Landroid/os/Binder;
.source "IStoreServiceDefinition.java"

# interfaces
.implements Ltv/ouya/console/internal/IStoreServiceDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/internal/IStoreServiceDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/internal/IStoreServiceDefinition$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "tv.ouya.console.internal.IStoreServiceDefinition"

.field static final TRANSACTION_requestAppDownloadUrl:I = 0x1

.field static final TRANSACTION_requestAppInfo:I = 0x2

.field static final TRANSACTION_requestAppList:I = 0x3

.field static final TRANSACTION_requestAppListForTag:I = 0x4

.field static final TRANSACTION_requestCachedUserInfo:I = 0xf

.field static final TRANSACTION_requestCreateNewUser:I = 0x6

.field static final TRANSACTION_requestDeregisterConsole:I = 0x7

.field static final TRANSACTION_requestDeveloperAppList:I = 0x8

.field static final TRANSACTION_requestRegisterConsole:I = 0x9

.field static final TRANSACTION_requestResendEmail:I = 0xa

.field static final TRANSACTION_requestStoreStructure:I = 0xd

.field static final TRANSACTION_requestSystemMessage:I = 0xe

.field static final TRANSACTION_requestTagList:I = 0x5

.field static final TRANSACTION_requestUpdateUserInfo:I = 0xb

.field static final TRANSACTION_requestUserInfo:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p0, p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStoreServiceDefinition;
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
    const-string v1, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ltv/ouya/console/internal/IStoreServiceDefinition;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ltv/ouya/console/internal/IStoreServiceDefinition;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v1

    .line 52
    .local v1, "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestAppDownloadUrl(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    :sswitch_2
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IAppDetailsListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IAppDetailsListener;

    move-result-object v1

    .line 63
    .local v1, "_arg1":Ltv/ouya/console/internal/IAppDetailsListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestAppInfo(Ljava/lang/String;Ltv/ouya/console/internal/IAppDetailsListener;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IAppDetailsListener;
    :sswitch_3
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IAppDescriptionListListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IAppDescriptionListListener;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Ltv/ouya/console/internal/IAppDescriptionListListener;
    invoke-virtual {p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestAppList(Ltv/ouya/console/internal/IAppDescriptionListListener;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ltv/ouya/console/internal/IAppDescriptionListListener;
    :sswitch_4
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IAppDescriptionListListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IAppDescriptionListListener;

    move-result-object v1

    .line 83
    .local v1, "_arg1":Ltv/ouya/console/internal/IAppDescriptionListListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestAppListForTag(Ljava/lang/String;Ltv/ouya/console/internal/IAppDescriptionListListener;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IAppDescriptionListListener;
    :sswitch_5
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/ITagListListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/ITagListListener;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Ltv/ouya/console/internal/ITagListListener;
    invoke-virtual {p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestTagList(Ltv/ouya/console/internal/ITagListListener;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Ltv/ouya/console/internal/ITagListListener;
    :sswitch_6
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    sget-object v3, Ltv/ouya/console/api/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/UserInfo;

    .line 107
    .local v0, "_arg0":Ltv/ouya/console/api/UserInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v1

    .line 108
    .local v1, "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestCreateNewUser(Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/internal/IVoidListener;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 104
    .end local v0    # "_arg0":Ltv/ouya/console/api/UserInfo;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ltv/ouya/console/api/UserInfo;
    goto :goto_1

    .line 114
    .end local v0    # "_arg0":Ltv/ouya/console/api/UserInfo;
    :sswitch_7
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestDeregisterConsole(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_8
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IAppDescriptionListListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IAppDescriptionListListener;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ltv/ouya/console/internal/IAppDescriptionListListener;
    invoke-virtual {p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestDeveloperAppList(Ltv/ouya/console/internal/IAppDescriptionListListener;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":Ltv/ouya/console/internal/IAppDescriptionListListener;
    :sswitch_9
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v0

    .line 137
    .local v0, "_arg0":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestRegisterConsole(Ltv/ouya/console/internal/IVoidListener;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_a
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v1

    .line 148
    .restart local v1    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestResendEmail(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :sswitch_b
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    sget-object v3, Ltv/ouya/console/api/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/UserInfo;

    .line 163
    .local v0, "_arg0":Ltv/ouya/console/api/UserInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IVoidListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IVoidListener;

    move-result-object v1

    .line 164
    .restart local v1    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestUpdateUserInfo(Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/internal/IVoidListener;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Ltv/ouya/console/api/UserInfo;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IVoidListener;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ltv/ouya/console/api/UserInfo;
    goto :goto_2

    .line 170
    .end local v0    # "_arg0":Ltv/ouya/console/api/UserInfo;
    :sswitch_c
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IUserInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IUserInfoListener;

    move-result-object v0

    .line 173
    .local v0, "_arg0":Ltv/ouya/console/internal/IUserInfoListener;
    invoke-virtual {p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestUserInfo(Ltv/ouya/console/internal/IUserInfoListener;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":Ltv/ouya/console/internal/IUserInfoListener;
    :sswitch_d
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IStoreStructureListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStoreStructureListener;

    move-result-object v0

    .line 182
    .local v0, "_arg0":Ltv/ouya/console/internal/IStoreStructureListener;
    invoke-virtual {p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestStoreStructure(Ltv/ouya/console/internal/IStoreStructureListener;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":Ltv/ouya/console/internal/IStoreStructureListener;
    :sswitch_e
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IStringListener;

    move-result-object v1

    .line 193
    .local v1, "_arg1":Ltv/ouya/console/internal/IStringListener;
    invoke-virtual {p0, v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestSystemMessage(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ltv/ouya/console/internal/IStringListener;
    :sswitch_f
    const-string v3, "tv.ouya.console.internal.IStoreServiceDefinition"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ltv/ouya/console/internal/IUserInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Ltv/ouya/console/internal/IUserInfoListener;

    move-result-object v0

    .line 202
    .local v0, "_arg0":Ltv/ouya/console/internal/IUserInfoListener;
    invoke-virtual {p0, v0}, Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;->requestCachedUserInfo(Ltv/ouya/console/internal/IUserInfoListener;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
