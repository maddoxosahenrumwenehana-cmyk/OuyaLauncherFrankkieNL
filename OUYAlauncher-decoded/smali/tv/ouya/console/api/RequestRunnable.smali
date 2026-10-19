.class public abstract Ltv/ouya/console/api/RequestRunnable;
.super Ljava/lang/Object;
.source "RequestRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected listener:Ltv/ouya/console/api/OuyaResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Ltv/ouya/console/api/RequestRunnable;, "Ltv/ouya/console/api/RequestRunnable<TT;>;"
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ltv/ouya/console/api/RequestRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    .line 16
    iput-object p2, p0, Ltv/ouya/console/api/RequestRunnable;->target:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method abstract doRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public run()V
    .locals 5

    .prologue
    .line 22
    .local p0, "this":Ltv/ouya/console/api/RequestRunnable;, "Ltv/ouya/console/api/RequestRunnable<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ltv/ouya/console/api/RequestRunnable;->doRun()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OUYASDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/ouya/console/api/RequestRunnable;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    iget-object v1, p0, Ltv/ouya/console/api/RequestRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    const/16 v2, 0xbbb

    const-string v3, ""

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, v2, v3, v4}, Ltv/ouya/console/api/OuyaResponseListener;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
