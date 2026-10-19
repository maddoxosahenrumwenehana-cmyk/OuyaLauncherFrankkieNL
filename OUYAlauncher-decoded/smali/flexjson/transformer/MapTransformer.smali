.class public Lflexjson/transformer/MapTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "MapTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 27
    invoke-virtual {p0}, Lflexjson/transformer/MapTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v0

    .line 28
    .local v0, "context":Lflexjson/JSONContext;
    invoke-virtual {v0}, Lflexjson/JSONContext;->getPath()Lflexjson/Path;

    move-result-object v3

    .local v3, "path":Lflexjson/Path;
    move-object v6, p1

    .line 29
    check-cast v6, Ljava/util/Map;

    .line 31
    .local v6, "value":Ljava/util/Map;
    invoke-virtual {p0}, Lflexjson/transformer/MapTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v7

    invoke-virtual {v7}, Lflexjson/JSONContext;->writeOpenObject()Lflexjson/TypeContext;

    move-result-object v5

    .line 32
    .local v5, "typeContext":Lflexjson/TypeContext;
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v3, v7}, Lflexjson/Path;->enqueue(Ljava/lang/String;)Lflexjson/Path;

    .line 36
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lflexjson/JSONContext;->isIncluded(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lflexjson/JSONContext;->getTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v4

    check-cast v4, Lflexjson/transformer/TransformerWrapper;

    .line 41
    .local v4, "transformer":Lflexjson/transformer/TransformerWrapper;
    invoke-virtual {v4}, Lflexjson/transformer/TransformerWrapper;->isInline()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 42
    invoke-virtual {v5}, Lflexjson/TypeContext;->isFirst()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lflexjson/transformer/MapTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v7

    invoke-virtual {v7}, Lflexjson/JSONContext;->writeComma()V

    .line 43
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lflexjson/TypeContext;->setFirst(Z)V

    .line 44
    if-eqz v2, :cond_5

    .line 45
    invoke-virtual {p0}, Lflexjson/transformer/MapTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lflexjson/JSONContext;->writeName(Ljava/lang/String;)V

    .line 51
    :cond_1
    :goto_3
    if-eqz v2, :cond_6

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lflexjson/TypeContext;->setPropertyName(Ljava/lang/String;)V

    .line 57
    :goto_4
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lflexjson/transformer/TransformerWrapper;->transform(Ljava/lang/Object;)V

    .line 61
    .end local v4    # "transformer":Lflexjson/transformer/TransformerWrapper;
    :cond_2
    invoke-virtual {v3}, Lflexjson/Path;->pop()Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v7, v8

    .line 34
    goto :goto_1

    :cond_4
    move-object v7, v8

    .line 36
    goto :goto_2

    .line 47
    .restart local v4    # "transformer":Lflexjson/transformer/TransformerWrapper;
    :cond_5
    invoke-virtual {p0}, Lflexjson/transformer/MapTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v7

    invoke-virtual {v7, v8}, Lflexjson/JSONContext;->writeName(Ljava/lang/String;)V

    goto :goto_3

    .line 54
    :cond_6
    invoke-virtual {v5, v8}, Lflexjson/TypeContext;->setPropertyName(Ljava/lang/String;)V

    goto :goto_4

    .line 64
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "transformer":Lflexjson/transformer/TransformerWrapper;
    :cond_7
    invoke-virtual {p0}, Lflexjson/transformer/MapTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v7

    invoke-virtual {v7}, Lflexjson/JSONContext;->writeCloseObject()V

    .line 65
    return-void
.end method
