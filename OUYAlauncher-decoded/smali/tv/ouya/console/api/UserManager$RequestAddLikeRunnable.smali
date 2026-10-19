.class Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAddLikeRunnable"
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
    .line 296
    .local p3, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    .line 297
    const-string v0, "requesting add like"

    invoke-direct {p0, p3, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 298
    iput-object p2, p0, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;->uuid:Ljava/lang/String;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/ouya/console/api/UserManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ltv/ouya/console/api/OuyaResponseListener;
    .param p4, "x3"    # Ltv/ouya/console/api/UserManager$1;

    .prologue
    .line 293
    invoke-direct {p0, p1, p2, p3}, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V

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
    .line 303
    iget-object v0, p0, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    invoke-static {v0}, Ltv/ouya/console/api/UserManager;->access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;->uuid:Ljava/lang/String;

    new-instance v2, Ltv/ouya/console/internal/VoidListenerBinder;

    iget-object v3, p0, Ltv/ouya/console/api/UserManager$RequestAddLikeRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v2, v3}, Ltv/ouya/console/internal/VoidListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition;->requestAddLike(Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 304
    return-void
.end method
