.class public Lnl/frankkie/ouyalauncher/web/Upload;
.super Lnl/frankkie/ouyalauncher/web/WebPage;
.source "Upload.java"


# static fields
.field public static final page:Ljava/lang/String; = "<html><head><title>BAXY</title></head><body><h2>BAXY</h2><a href=\"/\">HOME</a><form enctype=\"multipart/form-data\" action=\"/upload\" method=\"post\">\n<input type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"2000000\">\nFile: <input name=\"uploadFile\" type=\"file\"><br>\nPath: <input type=\"text\" name=\"path\" value=\"/sdcard/uploads/\"><br>\n<input name=\"gezien\" value=\"ja\" type=\"hidden\">\n<input type=\"submit\" value=\"Start Upload\" name=\"submitButton\">\n</form></body></html>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 29
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 30
    .local v5, "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {p2, v9}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 31
    const-string v9, "uploadFile"

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 32
    .local v8, "tempFilename":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 34
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "file":Ljava/io/File;
    :try_start_0
    const-string v9, "path"

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    .local v4, "pathString":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 39
    const-string v4, "/sdcard/uploads/"

    .line 41
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 44
    new-instance v10, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v9, "uploadFile"

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 45
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "text/html"

    const-string v11, "OK !"

    invoke-direct {v5, v9, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "pathString":Ljava/lang/String;
    .restart local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    :goto_0
    move-object v6, v5

    .line 58
    .end local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    .end local v8    # "tempFilename":Ljava/lang/String;
    .local v6, "response":Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 46
    .end local v6    # "response":Ljava/lang/Object;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v8    # "tempFilename":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "text/html"

    const-string v11, "Upload Error !"

    invoke-direct {v5, v9, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "text/html"

    const-string v11, "Upload Error !"

    invoke-direct {v5, v9, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    goto :goto_0

    .line 55
    .end local v8    # "tempFilename":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "<html><head><title>BAXY</title></head><body><h2>BAXY</h2><a href=\"/\">HOME</a><form enctype=\"multipart/form-data\" action=\"/upload\" method=\"post\">\n<input type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"2000000\">\nFile: <input name=\"uploadFile\" type=\"file\"><br>\nPath: <input type=\"text\" name=\"path\" value=\"/sdcard/uploads/\"><br>\n<input name=\"gezien\" value=\"ja\" type=\"hidden\">\n<input type=\"submit\" value=\"Start Upload\" name=\"submitButton\">\n</form></body></html>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "text/html"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v9, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object v6, v5

    .line 58
    .restart local v6    # "response":Ljava/lang/Object;
    goto :goto_1
.end method
