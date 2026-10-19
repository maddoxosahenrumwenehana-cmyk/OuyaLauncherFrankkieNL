.class public Lflexjson/transformer/ArrayTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "ArrayTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0}, Lflexjson/transformer/ArrayTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    invoke-virtual {v3}, Lflexjson/JSONContext;->writeOpenArray()Lflexjson/TypeContext;

    move-result-object v2

    .line 27
    .local v2, "typeContext":Lflexjson/TypeContext;
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 28
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 29
    invoke-virtual {v2}, Lflexjson/TypeContext;->isFirst()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lflexjson/transformer/ArrayTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    invoke-virtual {v3}, Lflexjson/JSONContext;->writeComma()V

    .line 30
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lflexjson/TypeContext;->setFirst(Z)V

    .line 31
    invoke-virtual {p0}, Lflexjson/transformer/ArrayTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lflexjson/JSONContext;->transform(Ljava/lang/Object;)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lflexjson/transformer/ArrayTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v3

    invoke-virtual {v3}, Lflexjson/JSONContext;->writeCloseArray()V

    .line 34
    return-void
.end method
