.class public Ltv/ouya/console/internal/StringListenerBinder;
.super Ltv/ouya/console/internal/IStringListener$Stub;
.source "StringListenerBinder.java"


# instance fields
.field private binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/internal/ListenerBinderHelper",
            "<",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    invoke-direct {p0}, Ltv/ouya/console/internal/IStringListener$Stub;-><init>()V

    .line 11
    new-instance v0, Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-direct {v0, p1}, Ltv/ouya/console/internal/ListenerBinderHelper;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    iput-object v0, p0, Ltv/ouya/console/internal/StringListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    .line 12
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
    .line 26
    iget-object v0, p0, Ltv/ouya/console/internal/StringListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0}, Ltv/ouya/console/internal/ListenerBinderHelper;->onCancel()V

    .line 27
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
    .line 21
    iget-object v0, p0, Ltv/ouya/console/internal/StringListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0, p1, p2, p3}, Ltv/ouya/console/internal/ListenerBinderHelper;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Ltv/ouya/console/internal/StringListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0, p1}, Ltv/ouya/console/internal/ListenerBinderHelper;->onSuccess(Ljava/lang/Object;)V

    .line 17
    return-void
.end method
