.class Ltv/ouya/console/internal/ListenerBinderHelper$2;
.super Ljava/lang/Object;
.source "ListenerBinderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/ouya/console/internal/ListenerBinderHelper;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$optionalData:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ltv/ouya/console/internal/ListenerBinderHelper;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper$2;, "Ltv/ouya/console/internal/ListenerBinderHelper.2;"
    iput-object p1, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

    iput p2, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->val$errorCode:I

    iput-object p3, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->val$errorMessage:Ljava/lang/String;

    iput-object p4, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->val$optionalData:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 29
    .local p0, "this":Ltv/ouya/console/internal/ListenerBinderHelper$2;, "Ltv/ouya/console/internal/ListenerBinderHelper.2;"
    iget-object v0, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->this$0:Ltv/ouya/console/internal/ListenerBinderHelper;

    invoke-static {v0}, Ltv/ouya/console/internal/ListenerBinderHelper;->access$000(Ltv/ouya/console/internal/ListenerBinderHelper;)Ltv/ouya/console/api/OuyaResponseListener;

    move-result-object v0

    iget v1, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->val$errorCode:I

    iget-object v2, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->val$errorMessage:Ljava/lang/String;

    iget-object v3, p0, Ltv/ouya/console/internal/ListenerBinderHelper$2;->val$optionalData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Ltv/ouya/console/api/OuyaResponseListener;->onFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
