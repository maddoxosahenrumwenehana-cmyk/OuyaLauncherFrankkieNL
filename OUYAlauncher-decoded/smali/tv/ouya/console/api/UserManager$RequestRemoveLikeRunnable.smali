.class Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestRemoveLikeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/UserManager;

.field private uuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    .line 311
    const-string v0, "requesting remove like"

    invoke-direct {p0, p3, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 312
    iput-object p2, p0, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;->uuid:Ljava/lang/String;

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/ouya/console/api/UserManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ltv/ouya/console/api/OuyaResponseListener;
    .param p4, "x3"    # Ltv/ouya/console/api/UserManager$1;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3}, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

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
    .line 317
    iget-object v0, p0, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    invoke-static {v0}, Ltv/ouya/console/api/UserManager;->access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;->uuid:Ljava/lang/String;

    new-instance v2, Ltv/ouya/console/internal/VoidListenerBinder;

    iget-object v3, p0, Ltv/ouya/console/api/UserManager$RequestRemoveLikeRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v2, v3}, Ltv/ouya/console/internal/VoidListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition;->requestRemoveLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 318
    return-void
.end method
