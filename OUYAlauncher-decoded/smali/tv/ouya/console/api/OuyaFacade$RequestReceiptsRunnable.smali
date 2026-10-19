.class Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "OuyaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestReceiptsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/OuyaFacade;


# direct methods
.method private constructor <init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;)V
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
    .line 358
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    .line 359
    const-string v0, "fetching receipts"

    invoke-direct {p0, p2, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/OuyaFacade$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/ouya/console/api/OuyaFacade;
    .param p2, "x1"    # Ltv/ouya/console/api/OuyaResponseListener;
    .param p3, "x2"    # Ltv/ouya/console/api/OuyaFacade$1;

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;-><init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;)V

    return-void
.end method


# virtual methods
.method doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v0}, Ltv/ouya/console/api/OuyaFacade;->access$100(Ltv/ouya/console/api/OuyaFacade;)Ltv/ouya/console/internal/IIapServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v1}, Ltv/ouya/console/api/OuyaFacade;->access$200(Ltv/ouya/console/api/OuyaFacade;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/ouya/console/internal/StringListenerBinder;

    iget-object v3, p0, Ltv/ouya/console/api/OuyaFacade$RequestReceiptsRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v2, v3}, Ltv/ouya/console/internal/StringListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2}, Ltv/ouya/console/internal/IIapServiceDefinition;->requestReceipts(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 365
    return-void
.end method
