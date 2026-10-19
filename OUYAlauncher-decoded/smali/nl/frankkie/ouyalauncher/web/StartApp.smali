.class public Lnl/frankkie/ouyalauncher/web/StartApp;
.super Lnl/frankkie/ouyalauncher/web/WebPage;
.source "StartApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/web/WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getLaunchIntentForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lfi/iki/elonen/NanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 22
    .local v3, "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v4, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 23
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v6, "text/html"

    const-string v7, "App not found, try restarting server"

    invoke-direct {v4, v5, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-object v4

    .line 25
    :cond_0
    sget-object v4, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v4, "packageName"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 28
    const-string v4, "BAXY"

    const-string v5, "/startApp, packagename == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1
    invoke-virtual {p0, v1, v2}, Lnl/frankkie/ouyalauncher/web/StartApp;->getLaunchIntentForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    sget-object v4, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v3    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v5, "text/html"

    const-string v6, "ok"

    invoke-direct {v3, v4, v5, v6}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object v4, v3

    .line 35
    goto :goto_0
.end method
