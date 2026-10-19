.class public Ltv/ouya/console/internal/ListenerBinderHelper;
.super Ljava/lang/Object;
.source "ListenerBinderHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private listener:Ltv/ouya/console/api/OuyaResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper;, "Ltv/ouya/console/internal/ListenerBinderHelper<TT;>;"
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Ltv/ouya/console/internal/ListenerBinderHelper;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    .line 14
    return-void
.end method

.method static synthetic access$000(Ltv/ouya/console/internal/ListenerBinderHelper;)Ltv/ouya/console/api/OuyaResponseListener;
    .locals 1
    .param p0, "x0"    # Ltv/ouya/console/internal/ListenerBinderHelper;

    .prologue
    .line 9
    iget-object v0, p0, Ltv/ouya/console/internal/ListenerBinderHelper;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper;, "Ltv/ouya/console/internal/ListenerBinderHelper<TT;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ltv/ouya/console/internal/ListenerBinderHelper$3;

    invoke-direct {v1, p0}, Ltv/ouya/console/internal/ListenerBinderHelper$3;-><init>(Ltv/ouya/console/internal/ListenerBinderHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "optionalData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper;, "Ltv/ouya/console/internal/ListenerBinderHelper<TT;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ltv/ouya/console/internal/ListenerBinderHelper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Ltv/ouya/console/internal/ListenerBinderHelper$2;-><init>(Ltv/ouya/console/internal/ListenerBinderHelper;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper;, "Ltv/ouya/console/internal/ListenerBinderHelper<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ltv/ouya/console/internal/ListenerBinderHelper$1;

    invoke-direct {v1, p0, p1}, Ltv/ouya/console/internal/ListenerBinderHelper$1;-><init>(Ltv/ouya/console/internal/ListenerBinderHelper;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method
