.class public Lnl/frankkie/ouyalauncher/web/GetApps;
.super Lnl/frankkie/ouyalauncher/web/WebPage;
.source "GetApps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/web/WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 12
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
    .line 26
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 27
    .local v6, "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v8, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 28
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "text/html"

    const-string v11, "Apps not found !\ntry restarting webserver."

    invoke-direct {v8, v9, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-object v8

    .line 30
    :cond_0
    sget-object v8, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v4

    .line 31
    .local v4, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v8, v4, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT id FROM appinfo"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 32
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 33
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "text/html"

    const-string v11, "Apps not found !\nGo to applist and restart webserver."

    invoke-direct {v8, v9, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, "appInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;>;"
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 37
    new-instance v0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct {v0, v8}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;-><init>(I)V

    .line 38
    .local v0, "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnLoad()V

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    .end local v0    # "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    :cond_2
    new-instance v7, Lflexjson/JSONSerializer;

    invoke-direct {v7}, Lflexjson/JSONSerializer;-><init>()V

    .line 42
    .local v7, "serializer":Lflexjson/JSONSerializer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, "excludes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "componentName"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v8, "lastOpened"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v8, "timesOpened"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v7, v3}, Lflexjson/JSONSerializer;->setExcludes(Ljava/util/List;)V

    .line 47
    invoke-virtual {v7, v1}, Lflexjson/JSONSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "json":Ljava/lang/String;
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v6    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "text/json"

    invoke-direct {v6, v8, v9, v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object v8, v6

    .line 49
    goto :goto_0
.end method
