.class Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "OuyaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/OuyaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestProductListRunnable"
.end annotation


# instance fields
.field private final purchasables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Purchasable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltv/ouya/console/api/OuyaFacade;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/OuyaFacade;Ljava/util/List;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/Purchasable;",
            ">;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ltv/ouya/console/api/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p2, "purchasables":Ljava/util/List;, "Ljava/util/List<Ltv/ouya/console/api/Purchasable;>;"
    .local p3, "productListListener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/ArrayList<Ltv/ouya/console/api/Product;>;>;"
    iput-object p1, p0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    .line 333
    const-string v0, "fetching product list"

    invoke-direct {p0, p3, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 334
    iput-object p2, p0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;->purchasables:Ljava/util/List;

    .line 335
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
    .line 339
    iget-object v0, p0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v0}, Ltv/ouya/console/api/OuyaFacade;->access$100(Ltv/ouya/console/api/OuyaFacade;)Ltv/ouya/console/internal/IIapServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;->this$0:Ltv/ouya/console/api/OuyaFacade;

    invoke-static {v1}, Ltv/ouya/console/api/OuyaFacade;->access$200(Ltv/ouya/console/api/OuyaFacade;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;->purchasables:Ljava/util/List;

    new-instance v3, Ltv/ouya/console/internal/ProductListListenerBinder;

    iget-object v4, p0, Ltv/ouya/console/api/OuyaFacade$RequestProductListRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v3, v4}, Ltv/ouya/console/internal/ProductListListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2, v3}, Ltv/ouya/console/internal/IIapServiceDefinition;->requestProductList(Ljava/lang/String;Ljava/util/List;Ltv/ouya/console/internal/IProductListListener;)V

    .line 340
    return-void
.end method
