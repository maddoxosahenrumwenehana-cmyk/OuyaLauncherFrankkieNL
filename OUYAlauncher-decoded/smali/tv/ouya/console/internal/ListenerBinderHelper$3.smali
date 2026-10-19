.class Ltv/ouya/console/internal/ListenerBinderHelper$3;
.super Ljava/lang/Object;
.source "ListenerBinderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/ouya/console/internal/ListenerBinderHelper;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/internal/ListenerBinderHelper;


# direct methods
.method constructor <init>(Ltv/ouya/console/internal/ListenerBinderHelper;)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper$3;, "Ltv/ouya/console/internal/ListenerBinderHelper.3;"
    iput-object p1, p0, Ltv/ouya/console/internal/ListenerBinderHelper$3;->this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper$3;, "Ltv/ouya/console/internal/ListenerBinderHelper.3;"
    iget-object v0, p0, Ltv/ouya/console/internal/ListenerBinderHelper$3;->this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-static {v0}, Ltv/ouya/console/internal/ListenerBinderHelper;->access$000(Ltv/ouya/console/internal/ListenerBinderHelper;)Ltv/ouya/console/api/OuyaResponseListener;

    move-result-object v0

    invoke-interface {v0}, Ltv/ouya/console/api/OuyaResponseListener;->onCancel()V

    .line 39
    return-void
.end method
