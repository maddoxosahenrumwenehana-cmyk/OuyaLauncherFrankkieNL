.class public interface abstract Ltv/ouya/console/internal/IIapServiceDefinition;
.super Ljava/lang/Object;
.source "IIapServiceDefinition.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/internal/IIapServiceDefinition$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestGamerUuid(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestProductList(Ljava/lang/String;Ljava/util/List;Ltv/ouya/console/internal/IProductListListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Purchasable;",
            ">;",
            "Ltv/ouya/console/internal/IProductListListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestPurchase(Ljava/lang/String;Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestReceipts(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTestMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
