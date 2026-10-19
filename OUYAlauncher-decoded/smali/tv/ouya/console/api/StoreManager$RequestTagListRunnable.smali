.class Ltv/ouya/console/api/StoreManager$RequestTagListRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/StoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestTagListRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/ouya/console/api/RequestRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Ltv/ouya/console/api/store/Tag;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/StoreManager;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/util/List",
            "<",
            "Ltv/ouya/console/api/store/Tag;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/util/List<Ltv/ouya/console/api/store/Tag;>;>;"
    iput-object p1, p0, Ltv/ouya/console/api/StoreManager$RequestTagListRunnable;->this$0:Ltv/ouya/console/api/StoreManager;

    .line 281
    const-string v0, "fetching tag list"

    invoke-direct {p0, p2, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 282
    return-void
.end method


# virtual methods
.method doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager$RequestTagListRunnable;->this$0:Ltv/ouya/console/api/StoreManager;

    invoke-static {v0}, Ltv/ouya/console/api/StoreManager;->access$000(Ltv/ouya/console/api/StoreManager;)Ltv/ouya/console/internal/IStoreServiceDefinition;

    move-result-object v0

    new-instance v1, Ltv/ouya/console/internal/TagListListenerBinder;

    iget-object v2, p0, Ltv/ouya/console/api/StoreManager$RequestTagListRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v1, v2}, Ltv/ouya/console/internal/TagListListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1}, Ltv/ouya/console/internal/IStoreServiceDefinition;->requestTagList(Ltv/ouya/console/internal/ITagListListener;)V

    .line 287
    return-void
.end method
