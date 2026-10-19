.class Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable$1;
.super Ljava/lang/Object;
.source "OuyaFacade.java"

# interfaces
.implements Ltv/ouya/console/api/OuyaResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Ltv/ouya/console/api/OuyaFacade;


# direct methods
.method constructor <init>(Ltv/ouya/console/api/OuyaFacade;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable$1;->val$this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "optionalData"    # Landroid/os/Bundle;

    .prologue
    .line 315
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 311
    return-void
.end method
