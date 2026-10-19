.class public Lflexjson/factories/MapObjectFactory;
.super Ljava/lang/Object;
.source "MapObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .param p4, "targetClass"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 13
    if-eqz p3, :cond_0

    .line 14
    instance-of v1, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 15
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 16
    .local v0, "ptype":Ljava/lang/reflect/ParameterizedType;
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, p2, v1, v2, v3}, Lflexjson/ObjectBinder;->bindIntoMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    .end local v0    # "ptype":Ljava/lang/reflect/ParameterizedType;
    :goto_0
    return-object v1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2, v1, v2, v2}, Lflexjson/ObjectBinder;->bindIntoMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
