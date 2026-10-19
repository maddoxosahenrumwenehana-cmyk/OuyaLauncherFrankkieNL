.class public Lnl/frankkie/ouyalauncher/web/Apps;
.super Lnl/frankkie/ouyalauncher/web/WebPage;
.source "Apps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 19
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 21
    .local v6, "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v8, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v3

    .line 22
    .local v3, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v8, v3, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT id FROM appinfo"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 23
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 24
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "text/html"

    const-string v11, "Apps not found !\nGo to applist and restart webserver."

    invoke-direct {v8, v9, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-object v8

    .line 26
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "appInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;>;"
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 28
    new-instance v0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct {v0, v8}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;-><init>(I)V

    .line 29
    .local v0, "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnLoad()V

    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    .end local v0    # "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v8, "<html><head><title>BAXY - Apps</title></head><body><a href=\"/\">HOME</a><br /><br />"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v8, "<table>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .line 38
    .local v5, "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<tr><td><img src=\"/appImage?packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" alt=\"\" /><td>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<td>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</tr>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 40
    .end local v5    # "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    :cond_2
    const-string v8, "\n</table>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v6    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "text/html"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object v8, v6

    .line 43
    goto/16 :goto_0
.end method
