.class Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestGetLikesRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/UserManager;


# direct methods
.method private constructor <init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;)V
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
    .line 323
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    .line 324
    const-string v0, "requesting get likes"

    invoke-direct {p0, p2, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/ouya/console/api/UserManager;
    .param p2, "x1"    # Ltv/ouya/console/api/OuyaResponseListener;
    .param p3, "x2"    # Ltv/ouya/console/api/UserManager$1;

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;)V

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
    .line 329
    iget-object v0, p0, Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    invoke-static {v0}, Ltv/ouya/console/api/UserManager;->access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    new-instance v1, Ltv/ouya/console/internal/StringListenerBinder;

    iget-object v2, p0, Ltv/ouya/console/api/UserManager$RequestGetLikesRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v1, v2}, Ltv/ouya/console/internal/StringListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition;->requestUserLikes(Ltv/ouya/console/internal/IStringListener;)V

    .line 330
    return-void
.end method
