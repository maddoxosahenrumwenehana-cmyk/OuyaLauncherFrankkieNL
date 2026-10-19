.class public interface abstract Ltv/ouya/console/internal/IUserServiceDefinition;
.super Ljava/lang/Object;
.source "IUserServiceDefinition.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/internal/IUserServiceDefinition$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestAddLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestRedeemVoucher(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestRemoveLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUserAddCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUserAddCreditCardWithZIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUserAddsAccount(Ltv/ouya/console/internal/IVoidListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUserGetCreditCard(Ltv/ouya/console/internal/ICreditCardInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUserLikes(Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUsername(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
