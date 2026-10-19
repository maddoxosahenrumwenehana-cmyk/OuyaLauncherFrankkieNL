.class public abstract Ltv/ouya/console/api/CancelIgnoringJsonResponseListener;
.super Ltv/ouya/console/api/JsonResponseListener;
.source "CancelIgnoringJsonResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltv/ouya/console/api/JsonResponseListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Ltv/ouya/console/api/CancelIgnoringJsonResponseListener;, "Ltv/ouya/console/api/CancelIgnoringJsonResponseListener<TT;>;"
    invoke-direct {p0}, Ltv/ouya/console/api/JsonResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Ltv/ouya/console/api/CancelIgnoringJsonResponseListener;, "Ltv/ouya/console/api/CancelIgnoringJsonResponseListener<TT;>;"
    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
