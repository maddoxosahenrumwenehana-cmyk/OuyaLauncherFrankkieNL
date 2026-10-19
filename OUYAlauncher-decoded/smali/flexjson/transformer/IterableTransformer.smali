.class public Lflexjson/transformer/IterableTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "IterableTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 24
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 25
    .local v2, "iterable":Ljava/lang/Iterable;
    invoke-virtual {p0}, Lflexjson/transformer/IterableTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v4

    invoke-virtual {v4}, Lflexjson/JSONContext;->writeOpenArray()Lflexjson/TypeContext;

    move-result-object v3

    .line 26
    .local v3, "typeContext":Lflexjson/TypeContext;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {v3}, Lflexjson/TypeContext;->isFirst()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lflexjson/transformer/IterableTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v4

    invoke-virtual {v4}, Lflexjson/JSONContext;->writeComma()V

    .line 28
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lflexjson/TypeContext;->setFirst(Z)V

    .line 29
    invoke-virtual {p0}, Lflexjson/transformer/IterableTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v4

    invoke-virtual {v4, v1}, Lflexjson/JSONContext;->transform(Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lflexjson/transformer/IterableTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v4

    invoke-virtual {v4}, Lflexjson/JSONContext;->writeCloseArray()V

    .line 32
    return-void
.end method
