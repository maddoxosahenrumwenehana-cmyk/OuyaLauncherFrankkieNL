.class Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/StoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAppsListForTagRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/ouya/console/api/RequestRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Ltv/ouya/console/api/store/AppDescription;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Ltv/ouya/console/api/StoreManager;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/StoreManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/AppDescription;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/List<Ltv/ouya/console/api/store/AppDescription;>;>;"
    iput-object p1, p0, Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;->this$0:Ltv/ouya/console/api/StoreManager;

    .line 268
    const-string v0, "fetching developer apps list"

    invoke-direct {p0, p3, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 269
    iput-object p2, p0, Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;->mTag:Ljava/lang/String;

    .line 270
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
    .line 274
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;->this$0:Ltv/ouya/console/api/StoreManager;

    invoke-static {v0}, Ltv/ouya/console/api/StoreManager;->access$000(Ltv/ouya/console/api/StoreManager;)Ltv/ouya/console/internal/IStoreServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;->mTag:Ljava/lang/String;

    new-instance v2, Ltv/ouya/console/internal/AppDescriptionListListenerBinder;

    iget-object v3, p0, Ltv/ouya/console/api/StoreManager$RequestAppsListForTagRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v2, v3}, Ltv/ouya/console/internal/AppDescriptionListListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2}, Ltv/ouya/console/internal/IStoreServiceDefinition;->requestAppListForTag(Ljava/lang/String;Ltv/ouya/console/internal/IAppDescriptionListListener;)V

    .line 275
    return-void
.end method
