.class public Ltv/ouya/console/api/OuyaPurchaseHelper;
.super Ljava/lang/Object;
.source "OuyaPurchaseHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProductIdSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "IapSampleActivity"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSuspendedPurchase(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-static {p0}, Ltv/ouya/console/api/OuyaPurchaseHelper;->getProductIdSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    .local v1, "purchasePrefs":Landroid/content/SharedPreferences;
    const-string v4, "currentPurchase"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "suspendedPurchaseId":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v2, v3

    .line 39
    .end local v2    # "suspendedPurchaseId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 37
    .restart local v2    # "suspendedPurchaseId":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "currentPurchase"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static final suspendPurchase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchasableId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Ltv/ouya/console/api/OuyaPurchaseHelper;->getProductIdSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "currentPurchase"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method
