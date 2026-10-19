.class Ltv/ouya/console/internal/ListenerBinderHelper$1;
.super Ljava/lang/Object;
.source "ListenerBinderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/ouya/console/internal/ListenerBinderHelper;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ltv/ouya/console/internal/ListenerBinderHelper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper$1;, "Ltv/ouya/console/internal/ListenerBinderHelper.1;"
    iput-object p1, p0, Ltv/ouya/console/internal/ListenerBinderHelper$1;->this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

    iput-object p2, p0, Ltv/ouya/console/internal/ListenerBinderHelper$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 20
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper$1;, "Ltv/ouya/console/internal/ListenerBinderHelper.1;"
    iget-object v0, p0, Ltv/ouya/console/internal/ListenerBinderHelper$1;->this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-static {v0}, Ltv/ouya/console/internal/ListenerBinderHelper;->access$000(Ltv/ouya/console/internal/ListenerBinderHelper;)Ltv/ouya/console/api/OuyaResponseListener;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/internal/ListenerBinderHelper$1;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ltv/ouya/console/api/OuyaResponseListener;->onSuccess(Ljava/lang/Object;)V

    .line 21
    return-void
.end method
