.class public interface abstract Ltv/ouya/console/internal/IStoreServiceDefinition;
.super Ljava/lang/Object;
.source "IStoreServiceDefinition.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/internal/IStoreServiceDefinition$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestAppDownloadUrl(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAppInfo(Ljava/lang/String;Ltv/ouya/console/internal/IAppDetailsListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAppList(Ltv/ouya/console/internal/IAppDescriptionListListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAppListForTag(Ljava/lang/String;Ltv/ouya/console/internal/IAppDescriptionListListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestCachedUserInfo(Ltv/ouya/console/internal/IUserInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestCreateNewUser(Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestDeregisterConsole(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestDeveloperAppList(Ltv/ouya/console/internal/IAppDescriptionListListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestRegisterConsole(Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestResendEmail(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestStoreStructure(Ltv/ouya/console/internal/IStoreStructureListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestSystemMessage(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestTagList(Ltv/ouya/console/internal/ITagListListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUpdateUserInfo(Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUserInfo(Ltv/ouya/console/internal/IUserInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
