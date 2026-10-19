.class public Ltv/ouya/console/internal/ProductListenerBinder;
.super Ltv/ouya/console/internal/IProductListener$Stub;
.source "ProductListenerBinder.java"


# instance fields
.field private binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/internal/ListenerBinderHelper",
            "<",
            "Ltv/ouya/console/api/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ltv/ouya/console/api/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/Product;>;"
    invoke-direct {p0}, Ltv/ouya/console/internal/IProductListener$Stub;-><init>()V

    .line 12
    new-instance v0, Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-direct {v0, p1}, Ltv/ouya/console/internal/ListenerBinderHelper;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    iput-object v0, p0, Ltv/ouya/console/internal/ProductListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    .line 13
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Ltv/ouya/console/internal/ProductListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0}, Ltv/ouya/console/internal/ListenerBinderHelper;->onCancel()V

    .line 28
    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "optionalData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Ltv/ouya/console/internal/ProductListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0, p1, p2, p3}, Ltv/ouya/console/internal/ListenerBinderHelper;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onSuccess(Ltv/ouya/console/api/Product;)V
    .locals 1
    .param p1, "product"    # Ltv/ouya/console/api/Product;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Ltv/ouya/console/internal/ProductListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0, p1}, Ltv/ouya/console/internal/ListenerBinderHelper;->onSuccess(Ljava/lang/Object;)V

    .line 18
    return-void
.end method
