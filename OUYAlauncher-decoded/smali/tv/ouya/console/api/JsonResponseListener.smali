.class public abstract Ltv/ouya/console/api/JsonResponseListener;
.super Ljava/lang/Object;
.source "JsonResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Ltv/ouya/console/api/JsonResponseListener;, "Ltv/ouya/console/api/JsonResponseListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCancel()V
.end method

.method public final onFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 19
    .local p0, "this":Ltv/ouya/console/api/JsonResponseListener;, "Ltv/ouya/console/api/JsonResponseListener<TT;>;"
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, v0}, Ltv/ouya/console/api/JsonResponseListener;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public final onFailure(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Ltv/ouya/console/api/JsonResponseListener;, "Ltv/ouya/console/api/JsonResponseListener<TT;>;"
    .local p3, "optionalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual {p0, p3}, Ltv/ouya/console/api/JsonResponseListener;->packageAsBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ltv/ouya/console/api/JsonResponseListener;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected packageAsBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Ltv/ouya/console/api/JsonResponseListener;, "Ltv/ouya/console/api/JsonResponseListener<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "thisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "thisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method
