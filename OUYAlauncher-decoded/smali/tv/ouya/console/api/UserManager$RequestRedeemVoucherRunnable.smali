.class Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestRedeemVoucherRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/ouya/console/api/UserManager;

.field final voucher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/UserManager;Ljava/lang/String;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p2, "voucher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p3, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    .line 272
    const-string v0, "requesting redeem voucher"

    invoke-direct {p0, p3, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 273
    iput-object p2, p0, Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;->voucher:Ljava/lang/String;

    .line 274
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
    .line 278
    iget-object v0, p0, Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;->this$0:Ltv/ouya/console/api/UserManager;

    invoke-static {v0}, Ltv/ouya/console/api/UserManager;->access$400(Ltv/ouya/console/api/UserManager;)Ltv/ouya/console/internal/IUserServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;->voucher:Ljava/lang/String;

    new-instance v2, Ltv/ouya/console/internal/StringListenerBinder;

    iget-object v3, p0, Ltv/ouya/console/api/UserManager$RequestRedeemVoucherRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v2, v3}, Ltv/ouya/console/internal/StringListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2}, Ltv/ouya/console/internal/IUserServiceDefinition;->requestRedeemVoucher(Ljava/lang/String;Ltv/ouya/console/internal/IStringListener;)V

    .line 279
    return-void
.end method
