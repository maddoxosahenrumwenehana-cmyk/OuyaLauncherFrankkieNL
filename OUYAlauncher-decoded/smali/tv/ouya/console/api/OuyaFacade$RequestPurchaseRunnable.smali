.class Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "OuyaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestPurchaseRunnable"
.end annotation


# instance fields
.field private final purchasable:Ltv/ouya/console/api/Purchasable;

.field final synthetic this$0:Ltv/ouya/console/api/OuyaFacade;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p2, "purchasable"    # Ltv/ouya/console/api/Purchasable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/Purchasable;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p3, "purchaseListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    .line 347
    const-string v0, "purchasing"

    invoke-direct {p0, p3, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 348
    iput-object p2, p0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;->purchasable:Ltv/ouya/console/api/Purchasable;

    .line 349
    return-void
.end method


# virtual methods
.method doRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v0}, Ltv/ouya/console/api/OuyaFacade;->access$100(Ltv/ouya/console/api/OuyaFacade;)Ltv/ouya/console/internal/IIapServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v1}, Ltv/ouya/console/api/OuyaFacade;->access$200(Ltv/ouya/console/api/OuyaFacade;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;->purchasable:Ltv/ouya/console/api/Purchasable;

    new-instance v3, Ltv/ouya/console/internal/StringListenerBinder;

    iget-object v4, p0, Ltv/ouya/console/api/OuyaFacade$RequestPurchaseRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v3, v4}, Ltv/ouya/console/internal/StringListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2, v3}, Ltv/ouya/console/internal/IIapServiceDefinition;->requestPurchase(Ljava/lang/String;Ltv/ouya/console/api/Purchasable;Ltv/ouya/console/internal/IStringListener;)V

    .line 354
    return-void
.end method
