.class public Lflexjson/transformer/NullTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "NullTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-virtual {p0}, Lflexjson/transformer/NullTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 29
    return-void
.end method
