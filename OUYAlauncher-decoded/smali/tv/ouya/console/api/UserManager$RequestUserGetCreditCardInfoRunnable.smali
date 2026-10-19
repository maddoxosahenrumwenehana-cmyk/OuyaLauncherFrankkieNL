.class Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestUserGetCreditCardInfoRunnable"
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
            "Ltv/ouya/console/api/CreditCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ltv/ouya/console/api/CreditCardInfo;>;"
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    .line 284
    const-string v0, "requesting user credit card info"

    invoke-direct {p0, p2, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;Ltv/ouya/console/api/UserManager$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/ouya/console/api/UserManager;
    .param p2, "x1"    # Ltv/ouya/console/api/OuyaResponseListener;
    .param p3, "x2"    # Ltv/ouya/console/api/UserManager$1;

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;-><init>(Ltv/ouya/console/api/UserManager;Ltv/ouya/console/api/OuyaResponseListener;)V

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
    .line 289
    iget-object v0, p0, Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    invoke-static {v0}, Ltv/ouya/console/api/UserManager;->access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    new-instance v1, Ltv/ouya/console/internal/CreditCardInfoListenerBinder;

    iget-object v2, p0, Ltv/ouya/console/api/UserManager$RequestUserGetCreditCardInfoRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v1, v2}, Ltv/ouya/console/internal/CreditCardInfoListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1}, Ltv/ouya/console/internal/IUserServiceDefinition;->requestUserGetCreditCard(Ltv/ouya/console/internal/ICreditCardInfoListener;)V

    .line 290
    return-void
.end method
