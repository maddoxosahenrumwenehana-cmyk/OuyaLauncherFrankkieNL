.class Ltv/ouya/console/api/UserManager$RequestUserAddsAccountRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestUserAddsAccountRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/UserManager;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$RequestUserAddsAccountRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    .line 230
    const-string v0, "requesting user adds account"

    invoke-direct {p0, p2, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 231
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
    .line 235
    iget-object v0, p0, Ltv/ouya/console/api/UserManager$RequestUserAddsAccountRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    invoke-static {v0}, Ltv/ouya/console/api/UserManager;->access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    new-instance v1, Ltv/ouya/console/internal/VoidListenerBinder;

    iget-object v2, p0, Ltv/ouya/console/api/UserManager$RequestUserAddsAccountRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v1, v2}, Ltv/ouya/console/internal/VoidListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition;->requestUserAddsAccount(Ltv/ouya/console/internal/IVoidListener;)V

    .line 236
    return-void
.end method
