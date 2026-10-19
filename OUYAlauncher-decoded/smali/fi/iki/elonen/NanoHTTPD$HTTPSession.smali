.class public Lfi/iki/elonen/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000


# instance fields
.field private headers:Ljava/util/Map;
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

.field private inputStream:Ljava/io/InputStream;

.field private method:Lfi/iki/elonen/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
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

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "tempFileManager"    # Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 657
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 659
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    .line 660
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 661
    return-void
.end method

.method static synthetic access$600(Lfi/iki/elonen/NanoHTTPD$HTTPSession;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .param p1, "x1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parseBody(Ljava/util/Map;)V

    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 824
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 869
    :goto_0
    return-void

    .line 829
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 830
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    .line 831
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 867
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 834
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    .line 837
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7

    .line 840
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 843
    .local v6, "uri":Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 844
    .local v4, "qmi":I
    if-ltz v4, :cond_4

    .line 845
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 846
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 855
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 856
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "line":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 858
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 859
    .local v3, "p":I
    if-ltz v3, :cond_3

    .line 860
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 862
    goto :goto_2

    .line 848
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "p":I
    :cond_4
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v7, v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 865
    :cond_5
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 22
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "fbuf"    # Ljava/nio/ByteBuffer;
    .param p3, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 877
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v4

    .line 878
    .local v4, "bpositions":[I
    const/4 v3, 0x1

    .line 879
    .local v3, "boundarycount":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 880
    .local v10, "mpline":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_e

    .line 881
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 882
    new-instance v18, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct/range {v18 .. v20}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v3    # "boundarycount":I
    .end local v4    # "bpositions":[I
    .end local v10    # "mpline":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 944
    .local v8, "ioe":Ljava/io/IOException;
    new-instance v18, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 884
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v3    # "boundarycount":I
    .restart local v4    # "bpositions":[I
    .restart local v10    # "mpline":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 885
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 886
    .local v9, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 887
    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 888
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 889
    .local v12, "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 890
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 893
    goto :goto_1

    .line 894
    .end local v12    # "p":I
    :cond_3
    if-eqz v10, :cond_0

    .line 895
    const-string v18, "content-disposition"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 896
    .local v5, "contentDisposition":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 897
    new-instance v18, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct/range {v18 .. v20}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v18

    .line 899
    :cond_4
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, "; "

    move-object/from16 v0, v18

    invoke-direct {v15, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .local v15, "st":Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 901
    .local v7, "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 902
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 903
    .local v16, "token":Ljava/lang/String;
    const/16 v18, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 904
    .restart local v12    # "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 905
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 908
    .end local v12    # "p":I
    .end local v16    # "token":Ljava/lang/String;
    :cond_6
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 909
    .local v14, "pname":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 911
    const-string v17, ""

    .line 912
    .local v17, "value":Ljava/lang/String;
    const-string v18, "content-type"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    .line 913
    :cond_7
    :goto_3
    if-eqz v10, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 914
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 915
    if-eqz v10, :cond_7

    .line 916
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 917
    .local v6, "d":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_8

    .line 918
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 920
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    add-int/lit8 v20, v6, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 925
    .end local v6    # "d":I
    :cond_9
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v3, v0, :cond_a

    .line 926
    new-instance v18, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v20, "Error processing request"

    invoke-direct/range {v18 .. v20}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v18

    .line 928
    :cond_a
    add-int/lit8 v18, v3, -0x2

    aget v18, v4, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .line 929
    .local v11, "offset":I
    add-int/lit8 v18, v3, -0x1

    aget v18, v4, v18

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v13

    .line 930
    .local v13, "path":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v18, "filename"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "value":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 932
    .restart local v17    # "value":Ljava/lang/String;
    if-nez v17, :cond_b

    .line 933
    const-string v17, "\"unnamedFile.apk\""

    .line 935
    :cond_b
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 937
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 938
    if-eqz v10, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 940
    .end local v11    # "offset":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 946
    .end local v5    # "contentDisposition":Ljava/lang/String;
    .end local v7    # "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "pname":Ljava/lang/String;
    .end local v15    # "st":Ljava/util/StringTokenizer;
    .end local v17    # "value":Ljava/lang/String;
    :cond_e
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "parms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1044
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1045
    const-string v3, "NanoHttpd.QUERY_STRING"

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    :cond_0
    return-void

    .line 1049
    :cond_1
    const-string v3, "NanoHttpd.QUERY_STRING"

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1052
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1054
    .local v1, "sep":I
    if-ltz v1, :cond_2

    .line 1055
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v3, v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findHeaderEnd([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, "splitbyte":I
    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_1

    .line 954
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    .line 955
    add-int/lit8 v1, v0, 0x4

    .line 959
    :goto_1
    return v1

    .line 957
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 7
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .prologue
    .line 966
    const/4 v3, 0x0

    .line 967
    .local v3, "matchcount":I
    const/4 v1, -0x1

    .line 968
    .local v1, "matchbyte":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v2, "matchbytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 970
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p2, v3

    if-ne v5, v6, :cond_2

    .line 971
    if-nez v3, :cond_0

    .line 972
    move v1, v0

    .line 973
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 974
    array-length v5, p2

    if-ne v3, v5, :cond_1

    .line 975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    const/4 v3, 0x0

    .line 977
    const/4 v1, -0x1

    .line 969
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    :cond_2
    sub-int/2addr v0, v3

    .line 981
    const/4 v3, 0x0

    .line 982
    const/4 v1, -0x1

    goto :goto_1

    .line 985
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 986
    .local v4, "ret":[I
    const/4 v0, 0x0

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 987
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 989
    :cond_4
    return-object v4
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 1018
    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile()Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v1

    .line 1019
    .local v1, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    .end local v1    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :goto_0
    return-object v2

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BAXY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseBody(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 735
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 736
    .local v17, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v14, 0x0

    .line 739
    .local v14, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v17

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v6, "content-length"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v6, "content-length"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 751
    .local v19, "size":J
    :goto_0
    const/16 v2, 0x200

    new-array v11, v2, [B

    .line 752
    .local v11, "buf":[B
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ltz v2, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v2, v19, v6

    if-lez v2, :cond_3

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    const/16 v7, 0x200

    invoke-virtual {v2, v11, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 754
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    int-to-long v6, v2

    sub-long v19, v19, v6

    .line 755
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-lez v2, :cond_0

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v2, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 812
    .end local v11    # "buf":[B
    .end local v19    # "size":J
    :catchall_0
    move-exception v2

    move-object v5, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :goto_2
    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 813
    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    throw v2

    .line 744
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    move-object/from16 v0, p0

    iget v6, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v2, v6, :cond_2

    .line 745
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v6, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v2, v6

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .restart local v19    # "size":J
    goto :goto_0

    .line 747
    .end local v19    # "size":J
    :cond_2
    const-wide/16 v19, 0x0

    .restart local v19    # "size":J
    goto :goto_0

    .line 761
    .restart local v11    # "buf":[B
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    .line 762
    .local v4, "fbuf":Ljava/nio/ByteBuffer;
    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 765
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 766
    .local v8, "bin":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :try_start_2
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v6}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 771
    const-string v12, ""

    .line 772
    .local v12, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v6, "content-type"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 774
    .local v13, "contentTypeHeader":Ljava/lang/String;
    const/16 v21, 0x0

    .line 775
    .local v21, "st":Ljava/util/StringTokenizer;
    if-eqz v13, :cond_4

    .line 776
    new-instance v21, Ljava/util/StringTokenizer;

    .end local v21    # "st":Ljava/util/StringTokenizer;
    const-string v2, ",; "

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .restart local v21    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 778
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 782
    :cond_4
    const-string v2, "multipart/form-data"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 784
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_5

    .line 785
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v6, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v7, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v2, v6, v7}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v2

    .line 812
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v13    # "contentTypeHeader":Ljava/lang/String;
    .end local v21    # "st":Ljava/util/StringTokenizer;
    :catchall_1
    move-exception v2

    goto/16 :goto_2

    .line 788
    .restart local v12    # "contentType":Ljava/lang/String;
    .restart local v13    # "contentTypeHeader":Ljava/lang/String;
    .restart local v21    # "st":Ljava/util/StringTokenizer;
    :cond_5
    const-string v10, "boundary="

    .line 789
    .local v10, "boundaryStartString":Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    add-int v9, v2, v6

    .line 790
    .local v9, "boundaryContentStart":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "boundary":Ljava/lang/String;
    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 792
    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 795
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 812
    .end local v3    # "boundary":Ljava/lang/String;
    .end local v9    # "boundaryContentStart":I
    .end local v10    # "boundaryStartString":Ljava/lang/String;
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v13    # "contentTypeHeader":Ljava/lang/String;
    .end local v21    # "st":Ljava/util/StringTokenizer;
    :cond_7
    :goto_3
    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 813
    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 815
    return-void

    .line 798
    .restart local v12    # "contentType":Ljava/lang/String;
    .restart local v13    # "contentTypeHeader":Ljava/lang/String;
    .restart local v21    # "st":Ljava/util/StringTokenizer;
    :cond_8
    :try_start_3
    const-string v16, ""

    .line 799
    .local v16, "postLine":Ljava/lang/String;
    const/16 v2, 0x200

    new-array v15, v2, [C

    .line 800
    .local v15, "pbuf":[C
    invoke-virtual {v5, v15}, Ljava/io/BufferedReader;->read([C)I

    move-result v18

    .line 801
    .local v18, "read":I
    :goto_4
    if-ltz v18, :cond_9

    const-string v2, "\r\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-static {v15, v6, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 803
    invoke-virtual {v5, v15}, Ljava/io/BufferedReader;->read([C)I

    move-result v18

    goto :goto_4

    .line 805
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 808
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v13    # "contentTypeHeader":Ljava/lang/String;
    .end local v15    # "pbuf":[C
    .end local v16    # "postLine":Ljava/lang/String;
    .end local v18    # "read":I
    .end local v21    # "st":Ljava/util/StringTokenizer;
    :cond_a
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v6}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 809
    const-string v2, "content"

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 10
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 996
    const-string v4, ""

    .line 997
    .local v4, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 998
    const/4 v2, 0x0

    .line 1000
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v7}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile()Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v6

    .line 1001
    .local v6, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1002
    .local v5, "src":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-interface {v6}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1004
    .local v0, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    add-int v8, p2, p3

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1005
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1006
    invoke-interface {v6}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 1010
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    .line 1013
    .end local v0    # "dest":Ljava/nio/channels/FileChannel;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "src":Ljava/nio/ByteBuffer;
    .end local v6    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :cond_0
    :goto_0
    return-object v4

    .line 1007
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v7, "BAXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1010
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V

    throw v7

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "src":Ljava/nio/ByteBuffer;
    .restart local v6    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1007
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 1031
    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1032
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1036
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1031
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    const/16 v10, 0x2000

    :try_start_0
    new-array v0, v10, [B

    .line 670
    .local v0, "buf":[B
    const/4 v10, 0x0

    iput v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 671
    const/4 v10, 0x0

    iput v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 673
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v11, 0x0

    const/16 v12, 0x2000

    invoke-virtual {v10, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 674
    .local v7, "read":I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    .line 676
    new-instance v10, Ljava/net/SocketException;

    const-string v11, "NanoHttpd Shutdown"

    invoke-direct {v10, v11}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/net/SocketException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    .end local v1    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v11}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    throw v10

    .line 683
    .restart local v0    # "buf":[B
    .restart local v7    # "read":I
    :cond_0
    :try_start_2
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    iget v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    iget v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    rsub-int v12, v12, 0x2000

    invoke-virtual {v10, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 678
    :cond_1
    if-lez v7, :cond_2

    .line 679
    iget v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    add-int/2addr v10, v7

    iput v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 680
    iget v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {p0, v0, v10}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v10

    iput v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 681
    iget v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    if-lez v10, :cond_0

    .line 687
    :cond_2
    iget v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v10, v11, :cond_3

    .line 688
    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    iget v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v11, v12

    invoke-direct {v9, v0, v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 689
    .local v9, "splitInputStream":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/SequenceInputStream;

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    invoke-direct {v8, v9, v10}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 690
    .local v8, "sequenceInputStream":Ljava/io/SequenceInputStream;
    iput-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    .line 693
    .end local v8    # "sequenceInputStream":Ljava/io/SequenceInputStream;
    .end local v9    # "splitInputStream":Ljava/io/ByteArrayInputStream;
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 694
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 697
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    const/4 v12, 0x0

    iget v13, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {v11, v0, v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 700
    .local v2, "hin":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v4, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {p0, v2, v4, v10, v11}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 703
    const-string v10, "method"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lfi/iki/elonen/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v10

    iput-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 704
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    if-nez v10, :cond_4

    .line 705
    new-instance v10, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v11, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "BAD REQUEST: Syntax error."

    invoke-direct {v10, v11, v12}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 721
    .end local v0    # "buf":[B
    .end local v2    # "hin":Ljava/io/BufferedReader;
    .end local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "read":I
    :catch_1
    move-exception v3

    .line 722
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response;

    sget-object v10, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v11, "text/plain"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v10, v11, v12}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .local v5, "r":Lfi/iki/elonen/NanoHTTPD$Response;
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v5, v10}, Lfi/iki/elonen/NanoHTTPD$Response;->access$700(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/io/OutputStream;)V

    .line 724
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v10}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 730
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v10}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 732
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 708
    .end local v5    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v0    # "buf":[B
    .restart local v2    # "hin":Ljava/io/BufferedReader;
    .restart local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "read":I
    :cond_4
    :try_start_4
    const-string v10, "uri"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    .line 711
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v10, p0}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$HTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v5

    .line 712
    .restart local v5    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    if-nez v5, :cond_5

    .line 713
    new-instance v10, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v11, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v10, v11, v12}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 725
    .end local v0    # "buf":[B
    .end local v2    # "hin":Ljava/io/BufferedReader;
    .end local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    .end local v7    # "read":I
    :catch_2
    move-exception v6

    .line 726
    .local v6, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    :try_start_5
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response;

    invoke-virtual {v6}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v10

    const-string v11, "text/plain"

    invoke-virtual {v6}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v10, v11, v12}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .restart local v5    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v5, v10}, Lfi/iki/elonen/NanoHTTPD$Response;->access$700(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/io/OutputStream;)V

    .line 728
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v10}, Lfi/iki/elonen/NanoHTTPD;->access$400(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 730
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v10}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_0

    .line 715
    .end local v6    # "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    .restart local v0    # "buf":[B
    .restart local v2    # "hin":Ljava/io/BufferedReader;
    .restart local v4    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "read":I
    :cond_5
    :try_start_6
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v5, v10}, Lfi/iki/elonen/NanoHTTPD$Response;->setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V

    .line 716
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v5, v10}, Lfi/iki/elonen/NanoHTTPD$Response;->access$700(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 730
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v10}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method
