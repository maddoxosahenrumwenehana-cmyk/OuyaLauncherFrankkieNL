.class public Lnl/frankkie/ouyalauncher/MyServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "MyServer.java"


# static fields
.field private static final LICENCE:Ljava/lang/String; = "Copyright (c) 2012-2013 by Paul S. Hawke, 2001,2005-2013 by Jarno Elonen, 2010 by Konstantinos Togias\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."

.field public static final MIME_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final webpages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lnl/frankkie/ouyalauncher/web/WebPage;",
            ">;>;"
        }
    .end annotation
.end field

.field public static webserverActivity:Lnl/frankkie/ouyalauncher/WebserverActivity;


# instance fields
.field private final quiet:Z

.field private final rootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lnl/frankkie/ouyalauncher/MyServer$1;

    invoke-direct {v0}, Lnl/frankkie/ouyalauncher/MyServer$1;-><init>()V

    sput-object v0, Lnl/frankkie/ouyalauncher/MyServer;->webpages:Ljava/util/Map;

    .line 48
    new-instance v0, Lnl/frankkie/ouyalauncher/MyServer$2;

    invoke-direct {v0}, Lnl/frankkie/ouyalauncher/MyServer$2;-><init>()V

    sput-object v0, Lnl/frankkie/ouyalauncher/MyServer;->MIME_TYPES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/io/File;Z)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "wwwroot"    # Ljava/io/File;
    .param p4, "quiet"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p2}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 110
    iput-object p3, p0, Lnl/frankkie/ouyalauncher/MyServer;->rootDir:Ljava/io/File;

    .line 111
    iput-boolean p4, p0, Lnl/frankkie/ouyalauncher/MyServer;->quiet:Z

    .line 112
    return-void
.end method

.method private encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, ""

    .line 123
    .local v0, "newUri":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "/ "

    const/4 v4, 0x1

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "tok":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 137
    .end local v2    # "tok":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 133
    .restart local v2    # "tok":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private listDirectory(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 19
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 276
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Directory "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "heading":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<html><head><title>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</title><style><!--\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "span.dirname { font-weight: bold; }\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "span.filesize { font-size: 75%; }\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "// -->\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</style>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</head><body><h1>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</h1><a href=\"/\">HOME</a><br />\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 284
    .local v10, "msg":Ljava/lang/String;
    const/4 v13, 0x0

    .line 285
    .local v13, "up":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    .line 286
    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, "u":Ljava/lang/String;
    const/16 v14, 0x2f

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 288
    .local v11, "slash":I
    if-ltz v11, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v11, v14, :cond_0

    .line 289
    const/4 v14, 0x0

    add-int/lit8 v15, v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 293
    .end local v11    # "slash":I
    .end local v12    # "u":Ljava/lang/String;
    :cond_0
    new-instance v14, Lnl/frankkie/ouyalauncher/MyServer$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/MyServer$4;-><init>(Lnl/frankkie/ouyalauncher/MyServer;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 299
    .local v5, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 300
    new-instance v14, Lnl/frankkie/ouyalauncher/MyServer$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/MyServer$5;-><init>(Lnl/frankkie/ouyalauncher/MyServer;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 306
    .local v3, "directories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 307
    if-nez v13, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v14, v15

    if-lez v14, :cond_a

    .line 308
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<ul>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 309
    if-nez v13, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 310
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<section class=\"directories\">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 311
    if-eqz v13, :cond_3

    .line 312
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<li><a rel=\"directory\" href=\"/files"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\"><span class=\"dirname\">..</span></a></b></li>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 314
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_4

    .line 315
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "dir":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<li><a rel=\"directory\" href=\"/files"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lnl/frankkie/ouyalauncher/MyServer;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\"><span class=\"dirname\">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</span></a></b></li>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 314
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "dir":Ljava/lang/String;
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</section>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 320
    .end local v7    # "i":I
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 321
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<section class=\"files\">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 322
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_8

    .line 323
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 325
    .local v4, "file":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<li><a href=\"/files"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lnl/frankkie/ouyalauncher/MyServer;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\"><span class=\"filename\">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</span></a>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 326
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    .local v1, "curFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 328
    .local v8, "len":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&nbsp;<span class=\"filesize\">("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 329
    const-wide/16 v14, 0x400

    cmp-long v14, v8, v14

    if-gez v14, :cond_6

    .line 330
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bytes"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 335
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")</span></li>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 322
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 331
    :cond_6
    const-wide/32 v14, 0x100000

    cmp-long v14, v8, v14

    if-gez v14, :cond_7

    .line 332
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v15, 0x400

    div-long v15, v8, v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v15, 0x400

    rem-long v15, v8, v15

    const-wide/16 v17, 0xa

    div-long v15, v15, v17

    const-wide/16 v17, 0x64

    rem-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " KB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 334
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/32 v15, 0x100000

    div-long v15, v8, v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/32 v15, 0x100000

    rem-long v15, v8, v15

    const-wide/16 v17, 0xa

    div-long v15, v15, v17

    const-wide/16 v17, 0x64

    rem-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " MB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 337
    .end local v1    # "curFile":Ljava/io/File;
    .end local v4    # "file":Ljava/lang/String;
    .end local v8    # "len":J
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</section>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 339
    .end local v7    # "i":I
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</ul>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 341
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</body></html>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 342
    return-object v10
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v0, Lnl/frankkie/ouyalauncher/MyServer;->webserverActivity:Lnl/frankkie/ouyalauncher/WebserverActivity;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lnl/frankkie/ouyalauncher/MyServer;->webserverActivity:Lnl/frankkie/ouyalauncher/WebserverActivity;

    invoke-virtual {v0, p0}, Lnl/frankkie/ouyalauncher/WebserverActivity;->log(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static main(Lnl/frankkie/ouyalauncher/WebserverActivity;)V
    .locals 6
    .param p0, "webserverActivityInstance"    # Lnl/frankkie/ouyalauncher/WebserverActivity;

    .prologue
    .line 395
    const/16 v1, 0x4d2

    .line 396
    .local v1, "port":I
    sput-object p0, Lnl/frankkie/ouyalauncher/MyServer;->webserverActivity:Lnl/frankkie/ouyalauncher/WebserverActivity;

    .line 398
    const-string v0, "127.0.0.1"

    .line 399
    .local v0, "host":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sdcard/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    .line 400
    .local v3, "wwwroot":Ljava/io/File;
    const/4 v2, 0x0

    .line 418
    .local v2, "quiet":Z
    new-instance v4, Lnl/frankkie/ouyalauncher/MyServer;

    invoke-direct {v4, v0, v1, v3, v2}, Lnl/frankkie/ouyalauncher/MyServer;-><init>(Ljava/lang/String;ILjava/io/File;Z)V

    invoke-static {v4}, Lfi/iki/elonen/ServerRunner;->executeInstance(Lfi/iki/elonen/NanoHTTPD;)V

    .line 419
    return-void
.end method


# virtual methods
.method getRootDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MyServer;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 13
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
    .line 347
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lfi/iki/elonen/NanoHTTPD$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnl/frankkie/ouyalauncher/MyServer;->log(Ljava/lang/String;)V

    .line 349
    iget-boolean v2, p0, Lnl/frankkie/ouyalauncher/MyServer;->quiet:Z

    if-nez v2, :cond_2

    .line 350
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 353
    .local v9, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 355
    .local v12, "value":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  HDR: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v12    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 358
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 360
    .restart local v12    # "value":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  PRM: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 362
    .end local v12    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 363
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 365
    .restart local v12    # "value":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  UPLOADED: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 369
    .end local v9    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "value":Ljava/lang/String;
    :cond_2
    const-string v2, "/files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MyServer;->getRootDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0, v2}, Lnl/frankkie/ouyalauncher/MyServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v11

    .line 387
    :goto_3
    return-object v11

    .line 373
    :cond_3
    const/4 v11, 0x0

    .line 374
    .local v11, "response":Lfi/iki/elonen/NanoHTTPD$Response;
    const/4 v1, 0x0

    .line 376
    .local v1, "page":Lnl/frankkie/ouyalauncher/web/WebPage;
    :try_start_0
    sget-object v2, Lnl/frankkie/ouyalauncher/MyServer;->webpages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 377
    .local v7, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnl/frankkie/ouyalauncher/web/WebPage;>;"
    if-nez v7, :cond_4

    .line 378
    new-instance v10, Lnl/frankkie/ouyalauncher/web/Error404;

    invoke-direct {v10}, Lnl/frankkie/ouyalauncher/web/Error404;-><init>()V

    .end local v1    # "page":Lnl/frankkie/ouyalauncher/web/WebPage;
    .local v10, "page":Lnl/frankkie/ouyalauncher/web/WebPage;
    move-object v1, v10

    .end local v10    # "page":Lnl/frankkie/ouyalauncher/web/WebPage;
    .restart local v1    # "page":Lnl/frankkie/ouyalauncher/web/WebPage;
    :goto_4
    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 382
    invoke-virtual/range {v1 .. v6}, Lnl/frankkie/ouyalauncher/web/WebPage;->serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v11

    goto :goto_3

    .line 380
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnl/frankkie/ouyalauncher/web/WebPage;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 383
    .end local v7    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lnl/frankkie/ouyalauncher/web/WebPage;>;"
    :catch_0
    move-exception v8

    .line 384
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    new-instance v11, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v11    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "text/plain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error 500, server error.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11    # "response":Lfi/iki/elonen/NanoHTTPD$Response;
    goto :goto_3
.end method

.method serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 28
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "homeDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 145
    .local v20, "res":Lfi/iki/elonen/NanoHTTPD$Response;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lnl/frankkie/ouyalauncher/MyServer;->log(Ljava/lang/String;)V

    .line 146
    const-string v24, "/files"

    const-string v25, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-nez v24, :cond_0

    .line 149
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, "text/plain"

    const-string v26, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_0
    if-nez v20, :cond_2

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    sget-char v25, Ljava/io/File;->separatorChar:C

    const/16 v26, 0x2f

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 155
    const/16 v24, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    if-ltz v24, :cond_1

    .line 156
    const/16 v24, 0x0

    const/16 v25, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_1
    const-string v24, "../"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 160
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, "text/plain"

    const-string v26, "FORBIDDEN: Won\'t serve ../ for security reasons."

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_2
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v10, "f":Ljava/io/File;
    if-nez v20, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_3

    .line 165
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, "text/plain"

    const-string v26, "Error 404, file not found."

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_3
    if-nez v20, :cond_11

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 172
    const-string v24, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 173
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, "text/html"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "<html><body>Redirected: <a href=\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\">"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "</a></body></html>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    const-string v24, "Location"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_4
    if-nez v20, :cond_11

    .line 181
    new-instance v24, Ljava/io/File;

    const-string v25, "index.html"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 182
    new-instance v10, Ljava/io/File;

    .end local v10    # "f":Ljava/io/File;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/index.html"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v10    # "f":Ljava/io/File;
    move-object/from16 v21, v20

    .line 195
    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .local v21, "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :goto_0
    if-nez v21, :cond_10

    .line 197
    const/4 v15, 0x0

    .line 198
    .local v15, "mime":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2e

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 199
    .local v6, "dot":I
    if-ltz v6, :cond_5

    .line 200
    sget-object v24, Lnl/frankkie/ouyalauncher/MyServer;->MIME_TYPES:Ljava/util/Map;

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v25

    add-int/lit8 v26, v6, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 202
    :cond_5
    if-nez v15, :cond_6

    .line 203
    const-string v15, "application/octet-stream"

    .line 207
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, "etag":Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 211
    .local v22, "startFrom":J
    const-wide/16 v7, -0x1

    .line 212
    .local v7, "endAt":J
    const-string v24, "range"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 213
    .local v19, "range":Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 214
    const-string v24, "bytes="

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 215
    const-string v24, "bytes="

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 216
    const/16 v24, 0x2d

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 218
    .local v16, "minus":I
    if-lez v16, :cond_7

    .line 219
    const/16 v24, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 220
    add-int/lit8 v24, v16, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    .line 228
    .end local v16    # "minus":I
    :cond_7
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 229
    .local v11, "fileLen":J
    if-eqz v19, :cond_e

    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-ltz v24, :cond_e

    .line 230
    cmp-long v24, v22, v11

    if-ltz v24, :cond_b

    .line 231
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, "text/plain"

    const-string v26, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :try_start_3
    const-string v24, "Content-Range"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bytes 0-0/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v24, "ETag"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 271
    .end local v6    # "dot":I
    .end local v7    # "endAt":J
    .end local v9    # "etag":Ljava/lang/String;
    .end local v11    # "fileLen":J
    .end local v15    # "mime":Ljava/lang/String;
    .end local v19    # "range":Ljava/lang/String;
    .end local v22    # "startFrom":J
    :goto_2
    const-string v24, "Accept-Ranges"

    const-string v25, "bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-object v20

    .line 183
    :cond_8
    new-instance v24, Ljava/io/File;

    const-string v25, "index.htm"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 184
    new-instance v10, Ljava/io/File;

    .end local v10    # "f":Ljava/io/File;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/index.htm"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v10    # "f":Ljava/io/File;
    move-object/from16 v21, v20

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 185
    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_9
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 187
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lnl/frankkie/ouyalauncher/MyServer;->listDirectory(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Ljava/lang/String;)V

    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object/from16 v21, v20

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 189
    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_a
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, "text/plain"

    const-string v26, "FORBIDDEN: No directory listing."

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object/from16 v21, v20

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 235
    .restart local v6    # "dot":I
    .restart local v7    # "endAt":J
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v11    # "fileLen":J
    .restart local v15    # "mime":Ljava/lang/String;
    .restart local v19    # "range":Ljava/lang/String;
    .restart local v22    # "startFrom":J
    :cond_b
    const-wide/16 v24, 0x0

    cmp-long v24, v7, v24

    if-gez v24, :cond_c

    .line 236
    const-wide/16 v24, 0x1

    sub-long v7, v11, v24

    .line 238
    :cond_c
    sub-long v24, v7, v22

    const-wide/16 v26, 0x1

    add-long v17, v24, v26

    .line 239
    .local v17, "newLen":J
    const-wide/16 v24, 0x0

    cmp-long v24, v17, v24

    if-gez v24, :cond_d

    .line 240
    const-wide/16 v17, 0x0

    .line 243
    :cond_d
    move-wide/from16 v4, v17

    .line 244
    .local v4, "dataLen":J
    :try_start_4
    new-instance v13, Lnl/frankkie/ouyalauncher/MyServer$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10, v4, v5}, Lnl/frankkie/ouyalauncher/MyServer$3;-><init>(Lnl/frankkie/ouyalauncher/MyServer;Ljava/io/File;J)V

    .line 250
    .local v13, "fis":Ljava/io/FileInputStream;
    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 252
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15, v13}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 253
    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :try_start_5
    const-string v24, "Content-Length"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v24, "Content-Range"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bytes "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v24, "ETag"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 267
    .end local v4    # "dataLen":J
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "newLen":J
    :catch_0
    move-exception v14

    .line 268
    .end local v6    # "dot":I
    .end local v7    # "endAt":J
    .end local v9    # "etag":Ljava/lang/String;
    .end local v11    # "fileLen":J
    .end local v19    # "range":Ljava/lang/String;
    .end local v22    # "startFrom":J
    .local v14, "ioe":Ljava/io/IOException;
    :goto_3
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, "text/plain"

    const-string v26, "FORBIDDEN: Reading file failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_2

    .line 258
    .end local v14    # "ioe":Ljava/io/IOException;
    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v6    # "dot":I
    .restart local v7    # "endAt":J
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v11    # "fileLen":J
    .restart local v19    # "range":Ljava/lang/String;
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v22    # "startFrom":J
    :cond_e
    :try_start_6
    const-string v24, "if-none-match"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 259
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v25, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v15, v2}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_2

    .line 261
    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_f
    new-instance v20, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v24, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v15, v2}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 262
    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :try_start_7
    const-string v24, "Content-Length"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v24, "ETag"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 267
    .end local v6    # "dot":I
    .end local v7    # "endAt":J
    .end local v9    # "etag":Ljava/lang/String;
    .end local v11    # "fileLen":J
    .end local v19    # "range":Ljava/lang/String;
    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .end local v22    # "startFrom":J
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    :catch_1
    move-exception v14

    move-object/from16 v20, v21

    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto :goto_3

    .line 222
    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v6    # "dot":I
    .restart local v7    # "endAt":J
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v16    # "minus":I
    .restart local v19    # "range":Ljava/lang/String;
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v22    # "startFrom":J
    :catch_2
    move-exception v24

    goto/16 :goto_1

    .end local v6    # "dot":I
    .end local v7    # "endAt":J
    .end local v9    # "etag":Ljava/lang/String;
    .end local v15    # "mime":Ljava/lang/String;
    .end local v16    # "minus":I
    .end local v19    # "range":Ljava/lang/String;
    .end local v22    # "startFrom":J
    :cond_10
    move-object/from16 v20, v21

    .end local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_2

    :cond_11
    move-object/from16 v21, v20

    .end local v20    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v21    # "res":Lfi/iki/elonen/NanoHTTPD$Response;
    goto/16 :goto_0
.end method
