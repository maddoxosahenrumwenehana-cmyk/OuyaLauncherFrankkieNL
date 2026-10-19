.class Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "OuyaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestGamerUuidRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/OuyaFacade;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/OuyaFacade;Ltv/ouya/console/api/OuyaResponseListener;)V
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
    .line 369
    .local p2, "gamerUuidListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    .line 370
    const-string v0, "fetching gamer UUID"

    invoke-direct {p0, p2, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 371
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
    .line 375
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v0}, Ltv/ouya/console/api/OuyaFacade;->access$100(Ltv/ouya/console/api/OuyaFacade;)Ltv/ouya/console/internal/IIapServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v1}, Ltv/ouya/console/api/OuyaFacade;->access$200(Ltv/ouya/console/api/OuyaFacade;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/ouya/console/internal/StringListenerBinder;

    iget-object v3, p0, Ltv/ouya/console/api/OuyaFacade$RequestGamerUuidRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v2, v3}, Ltv/ouya/console/internal/StringListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2}, Ltv/ouya/console/internal/IIapServiceDefinition;->requestGamerUuid(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 376
    return-void
.end method
