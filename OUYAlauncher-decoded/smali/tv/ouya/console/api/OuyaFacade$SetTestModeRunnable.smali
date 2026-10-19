.class Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "OuyaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetTestModeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/OuyaFacade;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/OuyaFacade;)V
    .locals 2

    .prologue
    .line 307
    iput-object p1, p0, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    .line 308
    new-instance v0, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable$1;

    invoke-direct {v0, p1}, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable$1;-><init>(Ltv/ouya/console/api/OuyaFacade;)V

    const-string v1, "setting test mode"

    invoke-direct {p0, v0, v1}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 321
    return-void
.end method


# virtual methods
.method doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade$SetTestModeRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v0}, Ltv/ouya/console/api/OuyaFacade;->access$100(Ltv/ouya/console/api/OuyaFacade;)Ltv/ouya/console/internal/IIapServiceDefinition;

    move-result-object v0

    invoke-interface {v0}, Ltv/ouya/console/internal/IIapServiceDefinition;->setTestMode()V

    .line 326
    return-void
.end method
