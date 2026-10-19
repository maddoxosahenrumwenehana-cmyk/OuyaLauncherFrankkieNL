.class public Lflexjson/transformer/HtmlEncoderTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "HtmlEncoderTransformer.java"


# static fields
.field private static final htmlEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    .line 33
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&quot;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&amp;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&lt;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&gt;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&nbsp;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xa9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&copy;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&reg;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Agrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Aacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Acirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Atilde;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Auml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Aring;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&AElig;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ccedil;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Egrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Eacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ecirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Euml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Igrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Iacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Icirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Iuml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ETH;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ntilde;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ograve;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Oacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ocirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Otilde;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ouml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Oslash;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xd9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ugrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Uacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Ucirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Uuml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&Yacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&THORN;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&szlig;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&agrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&aacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&acirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&atilde;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&auml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&aring;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&aelig;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ccedil;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&egrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&eacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ecirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&euml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&igrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&iacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&icirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&iuml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&eth;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ntilde;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ograve;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&oacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ocirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&otilde;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ouml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&oslash;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xf9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ugrave;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&uacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&ucirc;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xfc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&uuml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xfd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&yacute;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&thorn;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&yuml;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    const/16 v1, 0x20ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&euro;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lflexjson/transformer/HtmlEncoderTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 114
    .local v1, "intVal":I
    sget-object v3, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {p0}, Lflexjson/transformer/HtmlEncoderTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v4

    sget-object v3, Lflexjson/transformer/HtmlEncoderTransformer;->htmlEntities:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 112
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    const/16 v3, 0x80

    if-le v1, v3, :cond_1

    .line 117
    invoke-virtual {p0}, Lflexjson/transformer/HtmlEncoderTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    const-string v4, "&#"

    invoke-virtual {v3, v4}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lflexjson/transformer/HtmlEncoderTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lflexjson/transformer/HtmlEncoderTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p0}, Lflexjson/transformer/HtmlEncoderTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    .end local v1    # "intVal":I
    :cond_2
    invoke-virtual {p0}, Lflexjson/transformer/HtmlEncoderTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 126
    return-void
.end method
