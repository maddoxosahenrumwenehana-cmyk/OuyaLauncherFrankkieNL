.class public Ltv/ouya/console/internal/TagListListenerBinder;
.super Ltv/ouya/console/internal/ITagListListener$Stub;
.source "TagListListenerBinder.java"


# instance fields
.field private binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/ouya/console/internal/ListenerBinderHelper",
            "<",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/Tag;",
            ">;>;"
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
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/Tag;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/List<Ltv/ouya/console/api/store/Tag;>;>;"
    invoke-direct {p0}, Ltv/ouya/console/internal/ITagListListener$Stub;-><init>()V

    .line 14
    new-instance v0, Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-direct {v0, p1}, Ltv/ouya/console/internal/ListenerBinderHelper;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    iput-object v0, p0, Ltv/ouya/console/internal/TagListListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    .line 15
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
    .line 29
    iget-object v0, p0, Ltv/ouya/console/internal/TagListListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0}, Ltv/ouya/console/internal/ListenerBinderHelper;->onCancel()V

    .line 30
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
    .line 24
    iget-object v0, p0, Ltv/ouya/console/internal/TagListListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0, p1, p2, p3}, Ltv/ouya/console/internal/ListenerBinderHelper;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/Tag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "details":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/store/Tag;>;"
    iget-object v0, p0, Ltv/ouya/console/internal/TagListListenerBinder;->binderHelper:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-virtual {v0, p1}, Ltv/ouya/console/internal/ListenerBinderHelper;->onSuccess(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
