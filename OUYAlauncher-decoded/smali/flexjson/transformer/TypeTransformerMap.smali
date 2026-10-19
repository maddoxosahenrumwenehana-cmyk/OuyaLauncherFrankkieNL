.class public Lflexjson/transformer/TypeTransformerMap;
.super Ljava/util/HashMap;
.source "TypeTransformerMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class;",
        "Lflexjson/transformer/Transformer;",
        ">;"
    }
.end annotation


# instance fields
.field private parentTransformerMap:Lflexjson/transformer/TypeTransformerMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lflexjson/transformer/TypeTransformerMap;)V
    .locals 0
    .param p1, "parentTransformerMap"    # Lflexjson/transformer/TypeTransformerMap;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    iput-object p1, p0, Lflexjson/transformer/TypeTransformerMap;->parentTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    .line 34
    return-void
.end method

.method private updateTransformers(Ljava/lang/Class;Lflexjson/transformer/Transformer;)Lflexjson/transformer/Transformer;
    .locals 0
    .param p1, "key"    # Ljava/lang/Class;
    .param p2, "transformer"    # Lflexjson/transformer/Transformer;

    .prologue
    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-object p2
.end method


# virtual methods
.method findTransformer(Ljava/lang/Class;Ljava/lang/Class;)Lflexjson/transformer/Transformer;
    .locals 6
    .param p1, "key"    # Ljava/lang/Class;
    .param p2, "originalKey"    # Ljava/lang/Class;

    .prologue
    .line 51
    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 81
    :goto_0
    return-object v5

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lflexjson/transformer/TypeTransformerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    if-eq p1, p2, :cond_1

    .line 56
    invoke-virtual {p0, p1}, Lflexjson/transformer/TypeTransformerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflexjson/transformer/Transformer;

    invoke-direct {p0, p2, v5}, Lflexjson/transformer/TypeTransformerMap;->updateTransformers(Ljava/lang/Class;Lflexjson/transformer/Transformer;)Lflexjson/transformer/Transformer;

    move-result-object v5

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lflexjson/transformer/TypeTransformerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflexjson/transformer/Transformer;

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    const-class v5, Ljava/util/Arrays;

    invoke-virtual {p0, v5}, Lflexjson/transformer/TypeTransformerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflexjson/transformer/Transformer;

    invoke-direct {p0, p2, v5}, Lflexjson/transformer/TypeTransformerMap;->updateTransformers(Ljava/lang/Class;Lflexjson/transformer/Transformer;)Lflexjson/transformer/Transformer;

    move-result-object v5

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v2, v0, v1

    .line 72
    .local v2, "interfaze":Ljava/lang/Class;
    invoke-virtual {p0, v2}, Lflexjson/transformer/TypeTransformerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    invoke-virtual {p0, v2}, Lflexjson/transformer/TypeTransformerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflexjson/transformer/Transformer;

    invoke-direct {p0, p2, v5}, Lflexjson/transformer/TypeTransformerMap;->updateTransformers(Ljava/lang/Class;Lflexjson/transformer/Transformer;)Lflexjson/transformer/Transformer;

    move-result-object v5

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p0, v2, p2}, Lflexjson/transformer/TypeTransformerMap;->findTransformer(Ljava/lang/Class;Ljava/lang/Class;)Lflexjson/transformer/Transformer;

    move-result-object v4

    .line 76
    .local v4, "t":Lflexjson/transformer/Transformer;
    if-eqz v4, :cond_5

    move-object v5, v4

    goto :goto_0

    .line 70
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    .end local v2    # "interfaze":Ljava/lang/Class;
    .end local v4    # "t":Lflexjson/transformer/Transformer;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lflexjson/transformer/TypeTransformerMap;->findTransformer(Ljava/lang/Class;Ljava/lang/Class;)Lflexjson/transformer/Transformer;

    move-result-object v5

    goto :goto_0
.end method

.method public getTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 38
    if-nez p1, :cond_1

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v2, v1

    :goto_0
    if-nez p1, :cond_2

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0, v2, v1}, Lflexjson/transformer/TypeTransformerMap;->findTransformer(Ljava/lang/Class;Ljava/lang/Class;)Lflexjson/transformer/Transformer;

    move-result-object v0

    .line 39
    .local v0, "transformer":Lflexjson/transformer/Transformer;
    if-nez v0, :cond_0

    iget-object v1, p0, Lflexjson/transformer/TypeTransformerMap;->parentTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lflexjson/transformer/TypeTransformerMap;->parentTransformerMap:Lflexjson/transformer/TypeTransformerMap;

    invoke-virtual {v1, p1}, Lflexjson/transformer/TypeTransformerMap;->getTransformer(Ljava/lang/Object;)Lflexjson/transformer/Transformer;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    if-nez p1, :cond_3

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_2
    invoke-direct {p0, v1, v0}, Lflexjson/transformer/TypeTransformerMap;->updateTransformers(Ljava/lang/Class;Lflexjson/transformer/Transformer;)Lflexjson/transformer/Transformer;

    .line 46
    :cond_0
    return-object v0

    .line 38
    .end local v0    # "transformer":Lflexjson/transformer/Transformer;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 43
    .restart local v0    # "transformer":Lflexjson/transformer/Transformer;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2
.end method
