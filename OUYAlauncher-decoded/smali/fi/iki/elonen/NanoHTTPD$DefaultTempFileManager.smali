.class public Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$TempFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileManager"
.end annotation


# instance fields
.field private final tempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfi/iki/elonen/NanoHTTPD$TempFile;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpdir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const-string v0, "/sdcard/"

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    .line 406
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 417
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoHTTPD$TempFile;

    .line 419
    .local v0, "file":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :try_start_0
    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFile;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v2

    goto :goto_0

    .line 423
    .end local v0    # "file":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :cond_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 424
    return-void
.end method

.method public createTempFile()Lfi/iki/elonen/NanoHTTPD$TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    invoke-direct {v0, v1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, "tempFile":Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    return-object v0
.end method
