.class Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestUserAddCreditCardRunnable"
.end annotation


# instance fields
.field final cvn:Ljava/lang/String;

.field final email:Ljava/lang/String;

.field final expiry_month:Ljava/lang/String;

.field final expiry_year:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final number:Ljava/lang/String;

.field final synthetic this$0:Ltv/ouya/console/api/UserManager;

.field final zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "cvn"    # Ljava/lang/String;
    .param p6, "expiry_month"    # Ljava/lang/String;
    .param p7, "expiry_year"    # Ljava/lang/String;
    .param p8, "zip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p9, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    .line 251
    const-string v0, "requesting user add credit card"

    invoke-direct {p0, p9, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 252
    iput-object p2, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->name:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->email:Ljava/lang/String;

    .line 254
    iput-object p4, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->number:Ljava/lang/String;

    .line 255
    iput-object p5, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->cvn:Ljava/lang/String;

    .line 256
    iput-object p6, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->expiry_month:Ljava/lang/String;

    .line 257
    iput-object p7, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->expiry_year:Ljava/lang/String;

    .line 258
    iput-object p8, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->zip:Ljava/lang/String;

    .line 259
    return-void
.end method


# virtual methods
.method doRun()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    invoke-static {v0}, Ltv/ouya/console/api/UserManager;->access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->name:Ljava/lang/String;

    iget-object v2, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->email:Ljava/lang/String;

    iget-object v3, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->number:Ljava/lang/String;

    iget-object v4, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->cvn:Ljava/lang/String;

    iget-object v5, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->expiry_month:Ljava/lang/String;

    iget-object v6, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->expiry_year:Ljava/lang/String;

    iget-object v7, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->zip:Ljava/lang/String;

    new-instance v8, Ltv/ouya/console/internal/VoidListenerBinder;

    iget-object v9, p0, Ltv/ouya/console/api/UserManager$RequestUserAddCreditCardRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v8, v9}, Ltv/ouya/console/internal/VoidListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface/range {v0 .. v8}, Ltv/ouya/console/internal/IUserServiceDefinition;->requestUserAddCreditCardWithZIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/ouya/console/internal/IVoidListener;)V

    .line 265
    return-void
.end method
