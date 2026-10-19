.class public abstract Ltv/ouya/console/api/CancelIgnoringOuyaResponseListener;
.super Ljava/lang/Object;
.source "CancelIgnoringOuyaResponseListener.java"

# interfaces
.implements Ltv/ouya/console/api/OuyaResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltv/ouya/console/api/OuyaResponseListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Ltv/ouya/console/api/CancelIgnoringOuyaResponseListener;, "Ltv/ouya/console/api/CancelIgnoringOuyaResponseListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Ltv/ouya/console/api/CancelIgnoringOuyaResponseListener;, "Ltv/ouya/console/api/CancelIgnoringOuyaResponseListener<TT;>;"
    return-void
.end method
