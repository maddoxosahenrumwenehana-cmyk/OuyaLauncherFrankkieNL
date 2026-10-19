.class Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;
.super Ltv/ouya/console/api/RequestRunnable;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/StoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestUpdateUserInfoRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/ouya/console/api/RequestRunnable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mUserInfo:Ltv/ouya/console/api/UserInfo;

.field final synthetic this$0:Ltv/ouya/console/api/StoreManager;


# direct methods
.method public constructor <init>(Ltv/ouya/console/api/StoreManager;Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/api/OuyaResponseListener;)V
    .locals 1
    .param p2, "userInfo"    # Ltv/ouya/console/api/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/UserInfo;",
            "Ltv/ouya/console/api/OuyaResponseListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p3, "listener":Ltv/ouya/console/api/OuyaResponseListener;, "Ltv/ouya/console/api/OuyaResponseListener<Ljava/lang/Void;>;"
    iput-object p1, p0, Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;->this$0:Ltv/ouya/console/api/StoreManager;

    .line 383
    const-string v0, "requesting UserInfo update"

    invoke-direct {p0, p3, v0}, Ltv/ouya/console/api/RequestRunnable;-><init>(Ltv/ouya/console/api/OuyaResponseListener;Ljava/lang/String;)V

    .line 384
    iput-object p2, p0, Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;->mUserInfo:Ltv/ouya/console/api/UserInfo;

    .line 385
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
    .line 389
    iget-object v0, p0, Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;->this$0:Ltv/ouya/console/api/StoreManager;

    invoke-static {v0}, Ltv/ouya/console/api/StoreManager;->access$000(Ltv/ouya/console/api/StoreManager;)Ltv/ouya/console/internal/IStoreServiceDefinition;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;->mUserInfo:Ltv/ouya/console/api/UserInfo;

    new-instance v2, Ltv/ouya/console/internal/VoidListenerBinder;

    iget-object v3, p0, Ltv/ouya/console/api/StoreManager$RequestUpdateUserInfoRunnable;->listener:Ltv/ouya/console/api/OuyaResponseListener;

    invoke-direct {v2, v3}, Ltv/ouya/console/internal/VoidListenerBinder;-><init>(Ltv/ouya/console/api/OuyaResponseListener;)V

    invoke-interface {v0, v1, v2}, Ltv/ouya/console/internal/IStoreServiceDefinition;->requestUpdateUserInfo(Ltv/ouya/console/api/UserInfo;Ltv/ouya/console/internal/IVoidListener;)V

    .line 390
    return-void
.end method
