.class public Lflexjson/ObjectBinder;
.super Ljava/lang/Object;
.source "ObjectBinder.java"


# instance fields
.field private currentPath:Lflexjson/Path;

.field private factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lflexjson/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private jsonStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private objectStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pathFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lflexjson/Path;",
            "Lflexjson/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    .line 14
    new-instance v0, Lflexjson/Path;

    invoke-direct {v0}, Lflexjson/Path;-><init>()V

    iput-object v0, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/ObjectBinder;->pathFactories:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    .line 20
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Lflexjson/factories/BeanObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/BeanObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/util/Collection;

    new-instance v2, Lflexjson/factories/ListObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/ListObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/util/List;

    new-instance v2, Lflexjson/factories/ListObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/ListObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/util/Set;

    new-instance v2, Lflexjson/factories/SetObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/SetObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/util/SortedSet;

    new-instance v2, Lflexjson/factories/SortedSetObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/SortedSetObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    new-instance v2, Lflexjson/factories/MapObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/MapObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lflexjson/factories/IntegerObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/IntegerObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/IntegerObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/IntegerObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Lflexjson/factories/FloatObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/FloatObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/FloatObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/FloatObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lflexjson/factories/DoubleObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/DoubleObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/DoubleObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/DoubleObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Lflexjson/factories/ShortObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/ShortObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/ShortObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/ShortObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lflexjson/factories/LongObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/LongObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/LongObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/LongObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lflexjson/factories/ByteObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/ByteObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/ByteObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/ByteObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lflexjson/factories/BooleanObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/BooleanObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/BooleanObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/BooleanObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lflexjson/factories/CharacterObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/CharacterObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lflexjson/factories/CharacterObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/CharacterObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/Enum;

    new-instance v2, Lflexjson/factories/EnumObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/EnumObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lflexjson/factories/DateObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/DateObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lflexjson/factories/StringObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/StringObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/lang/reflect/Array;

    new-instance v2, Lflexjson/factories/ArrayObjectFactory;

    invoke-direct {v2}, Lflexjson/factories/ArrayObjectFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lflexjson/factories/BigDecimalFactory;

    invoke-direct {v2}, Lflexjson/factories/BigDecimalFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lflexjson/factories/BigIntegerFactory;

    invoke-direct {v2}, Lflexjson/factories/BigIntegerFactory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private findClassName(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "targetType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lflexjson/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v1, p0, Lflexjson/ObjectBinder;->pathFactories:Ljava/util/Map;

    iget-object v3, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lflexjson/ObjectBinder;->findClassInMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p2, v1}, Lflexjson/ObjectBinder;->useMostSpecific(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 203
    .local v0, "mostSpecificType":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 209
    .end local v0    # "mostSpecificType":Ljava/lang/Class;
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v1, v2

    .line 202
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 209
    goto :goto_1
.end method

.method private findFactoryByTargetClass(Ljava/lang/Class;)Lflexjson/ObjectFactory;
    .locals 6
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 253
    iget-object v5, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflexjson/ObjectFactory;

    .line 254
    .local v1, "factory":Lflexjson/ObjectFactory;
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 255
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 256
    .local v3, "intf":Ljava/lang/Class;
    invoke-direct {p0, v3}, Lflexjson/ObjectBinder;->findFactoryByTargetClass(Ljava/lang/Class;)Lflexjson/ObjectFactory;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    move-object v5, v1

    .line 261
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/Class;
    .end local v4    # "len$":I
    :goto_1
    return-object v5

    .line 255
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v2    # "i$":I
    .restart local v3    # "intf":Ljava/lang/Class;
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "intf":Ljava/lang/Class;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lflexjson/ObjectBinder;->findFactoryByTargetClass(Ljava/lang/Class;)Lflexjson/ObjectFactory;

    move-result-object v5

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    move-object v5, v1

    .line 261
    goto :goto_1
.end method

.method private findFactoryFor(Ljava/lang/Class;)Lflexjson/ObjectFactory;
    .locals 3
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 243
    iget-object v1, p0, Lflexjson/ObjectBinder;->pathFactories:Ljava/util/Map;

    iget-object v2, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/ObjectFactory;

    .line 244
    .local v0, "factory":Lflexjson/ObjectFactory;
    if-nez v0, :cond_1

    .line 245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    const-class v2, Ljava/lang/reflect/Array;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflexjson/ObjectFactory;

    .line 248
    :goto_0
    return-object v1

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lflexjson/ObjectBinder;->findFactoryByTargetClass(Ljava/lang/Class;)Lflexjson/ObjectFactory;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 248
    goto :goto_0
.end method

.method private findFieldInJson(Ljava/util/Map;Lflexjson/BeanProperty;)Ljava/lang/Object;
    .locals 3
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "property"    # Lflexjson/BeanProperty;

    .prologue
    .line 282
    invoke-virtual {p2}, Lflexjson/BeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 283
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 284
    invoke-virtual {p2}, Lflexjson/BeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "field":Ljava/lang/String;
    invoke-direct {p0, v0}, Lflexjson/ObjectBinder;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 288
    .end local v0    # "field":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getTargetClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .param p1, "targetType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v0, 0x0

    .line 166
    if-nez p1, :cond_0

    move-object p1, v0

    .line 177
    .end local p1    # "targetType":Ljava/lang/reflect/Type;
    :goto_0
    return-object p1

    .line 168
    .restart local p1    # "targetType":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 169
    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    .line 170
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 171
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "targetType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object p1, v0

    goto :goto_0

    .line 172
    .restart local p1    # "targetType":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 173
    const-class p1, Ljava/lang/reflect/Array;

    goto :goto_0

    .line 174
    :cond_3
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_4

    move-object p1, v0

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_5

    move-object p1, v0

    .line 177
    goto :goto_0

    .line 179
    :cond_5
    new-instance v0, Lflexjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveParameterizedTypes(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p1, "genericType"    # Ljava/lang/reflect/Type;
    .param p2, "targetType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 184
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 193
    .end local p1    # "genericType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p1

    .line 186
    .restart local p1    # "genericType":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 188
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    move-object p1, p2

    .line 189
    goto :goto_0

    .line 190
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    move-object p1, p2

    .line 191
    goto :goto_0

    .line 192
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_4

    .line 193
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "genericType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 195
    .restart local p1    # "genericType":Ljava/lang/reflect/Type;
    :cond_4
    new-instance v0, Lflexjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  Unknown generic type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Ljava/util/Map;

    .end local p1    # "source":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1, v1}, Lflexjson/ObjectBinder;->bindIntoMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 76
    :goto_0
    return-object p2

    .line 71
    .restart local p1    # "source":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "source":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, v0, v1}, Lflexjson/ObjectBinder;->bindIntoCollection(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    goto :goto_0

    .line 74
    .restart local p1    # "source":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/util/Map;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lflexjson/ObjectBinder;->bindIntoObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "targetType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 80
    iget-object v2, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 88
    iget-object v3, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :goto_0
    return-object v2

    .line 83
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lflexjson/ObjectBinder;->getTargetClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lflexjson/ObjectBinder;->findClassName(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    .local v1, "targetClass":Ljava/lang/Class;
    invoke-direct {p0, v1}, Lflexjson/ObjectBinder;->findFactoryFor(Ljava/lang/Class;)Lflexjson/ObjectFactory;

    move-result-object v0

    .line 85
    .local v0, "factory":Lflexjson/ObjectFactory;
    if-nez v0, :cond_1

    new-instance v2, Lflexjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": + Could not find a suitable ObjectFactory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v0    # "factory":Lflexjson/ObjectFactory;
    .end local v1    # "targetClass":Ljava/lang/Class;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    throw v2

    .line 86
    .restart local v0    # "factory":Lflexjson/ObjectFactory;
    .restart local v1    # "targetClass":Ljava/lang/Class;
    :cond_1
    :try_start_1
    invoke-interface {v0, p0, p1, p2, v1}, Lflexjson/ObjectFactory;->instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 88
    iget-object v3, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0
.end method

.method public bindIntoCollection(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 5
    .param p1, "value"    # Ljava/util/Collection;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;>(",
            "Ljava/util/Collection;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "target":Ljava/util/Collection;, "TT;"
    const/4 v2, 0x0

    .line 94
    .local v2, "valueType":Ljava/lang/reflect/Type;
    instance-of v3, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_0

    .line 95
    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    .end local p3    # "targetType":Ljava/lang/reflect/Type;
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 97
    :cond_0
    iget-object v3, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v3

    const-string v4, "values"

    invoke-virtual {v3, v4}, Lflexjson/Path;->enqueue(Ljava/lang/String;)Lflexjson/Path;

    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v3

    invoke-virtual {v3}, Lflexjson/Path;->pop()Ljava/lang/String;

    .line 104
    iget-object v3, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 105
    iget-object v3, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 106
    return-object p2
.end method

.method public bindIntoMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6
    .param p1, "input"    # Ljava/util/Map;
    .param p3, "keyType"    # Ljava/lang/reflect/Type;
    .param p4, "valueType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v4, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v4, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "inputKey":Ljava/lang/Object;
    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    const-string v5, "keys"

    invoke-virtual {v4, v5}, Lflexjson/Path;->enqueue(Ljava/lang/String;)Lflexjson/Path;

    .line 114
    invoke-virtual {p0, v1, p3}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "key":Ljava/lang/Object;
    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v4}, Lflexjson/Path;->pop()Ljava/lang/String;

    .line 116
    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    const-string v5, "values"

    invoke-virtual {v4, v5}, Lflexjson/Path;->enqueue(Ljava/lang/String;)Lflexjson/Path;

    .line 117
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p4}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v4}, Lflexjson/Path;->pop()Ljava/lang/String;

    .line 119
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    .end local v1    # "inputKey":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 122
    iget-object v4, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 123
    return-object p2
.end method

.method public bindIntoObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 15
    .param p1, "jsonOwner"    # Ljava/util/Map;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 128
    :try_start_0
    iget-object v11, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lflexjson/BeanAnalyzer;->analyze(Ljava/lang/Class;)Lflexjson/BeanAnalyzer;

    move-result-object v1

    .line 130
    .local v1, "analyzer":Lflexjson/BeanAnalyzer;
    invoke-virtual {v1}, Lflexjson/BeanAnalyzer;->getProperties()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflexjson/BeanProperty;

    .line 131
    .local v2, "descriptor":Lflexjson/BeanProperty;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lflexjson/ObjectBinder;->findFieldInJson(Ljava/util/Map;Lflexjson/BeanProperty;)Ljava/lang/Object;

    move-result-object v10

    .line 132
    .local v10, "value":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 133
    iget-object v11, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v2}, Lflexjson/BeanProperty;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lflexjson/Path;->enqueue(Ljava/lang/String;)Lflexjson/Path;

    .line 134
    invoke-virtual {v2}, Lflexjson/BeanProperty;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    .line 135
    .local v8, "setMethod":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_3

    .line 136
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 137
    .local v9, "types":[Ljava/lang/reflect/Type;
    array-length v11, v9

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 138
    const/4 v11, 0x0

    aget-object v7, v9, v11

    .line 139
    .local v7, "paramType":Ljava/lang/reflect/Type;
    iget-object v11, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v7, v0}, Lflexjson/ObjectBinder;->resolveParameterizedTypes(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-virtual {p0, v10, v14}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v7    # "paramType":Ljava/lang/reflect/Type;
    .end local v9    # "types":[Ljava/lang/reflect/Type;
    :cond_1
    :goto_1
    iget-object v11, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v11}, Lflexjson/Path;->pop()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 154
    .end local v1    # "analyzer":Lflexjson/BeanAnalyzer;
    .end local v2    # "descriptor":Lflexjson/BeanProperty;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "setMethod":Ljava/lang/reflect/Method;
    .end local v10    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v11, Lflexjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":  Could not access the no-arg constructor for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 141
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "analyzer":Lflexjson/BeanAnalyzer;
    .restart local v2    # "descriptor":Lflexjson/BeanProperty;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "setMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "types":[Ljava/lang/reflect/Type;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v11, Lflexjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":  Expected a single parameter for method "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .end local v1    # "analyzer":Lflexjson/BeanAnalyzer;
    .end local v2    # "descriptor":Lflexjson/BeanProperty;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "setMethod":Ljava/lang/reflect/Method;
    .end local v9    # "types":[Ljava/lang/reflect/Type;
    .end local v10    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 157
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v11, Lflexjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":  Exception while trying to invoke setter method."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 144
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "analyzer":Lflexjson/BeanAnalyzer;
    .restart local v2    # "descriptor":Lflexjson/BeanProperty;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "setMethod":Ljava/lang/reflect/Method;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lflexjson/BeanProperty;->getProperty()Ljava/lang/reflect/Field;

    move-result-object v5

    .line 145
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_1

    .line 146
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lflexjson/ObjectBinder;->bind(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 153
    .end local v2    # "descriptor":Lflexjson/BeanProperty;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "setMethod":Ljava/lang/reflect/Method;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v11, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    return-object v11
.end method

.method public bindPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 321
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 306
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 308
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 310
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 312
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 314
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 316
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_7

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_0

    .line 318
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    const-class v0, Ljava/util/Date;

    if-ne p2, v0, :cond_9

    .line 321
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object p1, v0

    goto/16 :goto_0

    .line 323
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_9
    new-instance v0, Lflexjson/JSONException;

    const-string v1, "%s: Don\'t know how to bind %s into class %s.  You might need to use an ObjectFactory instead of a plain class."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v4

    invoke-virtual {v4}, Lflexjson/Path;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cannotConvertValueToTargetType(Ljava/lang/Object;Ljava/lang/Class;)Lflexjson/JSONException;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 162
    new-instance v0, Lflexjson/JSONException;

    const-string v1, "%s:  Can not convert %s into %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public findClassAtPath(Lflexjson/Path;)Ljava/lang/Class;
    .locals 2
    .param p1, "currentPath"    # Lflexjson/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lflexjson/ObjectBinder;->pathFactories:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflexjson/ObjectFactory;

    .line 329
    .local v0, "factory":Lflexjson/ObjectFactory;
    instance-of v1, v0, Lflexjson/factories/ClassLocatorObjectFactory;

    if-eqz v1, :cond_0

    .line 330
    check-cast v0, Lflexjson/factories/ClassLocatorObjectFactory;

    .end local v0    # "factory":Lflexjson/ObjectFactory;
    invoke-virtual {v0}, Lflexjson/factories/ClassLocatorObjectFactory;->getLocator()Lflexjson/ClassLocator;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lflexjson/ClassLocator;->locate(Lflexjson/ObjectBinder;Lflexjson/Path;)Ljava/lang/Class;

    move-result-object v1

    .line 332
    :goto_0
    return-object v1

    .restart local v0    # "factory":Lflexjson/ObjectFactory;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected findClassInMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "override"    # Ljava/lang/Class;

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    const-string v2, "class"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, "classname":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 230
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 238
    .end local v0    # "classname":Ljava/lang/String;
    .end local p2    # "override":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object p2

    .line 232
    .restart local v0    # "classname":Ljava/lang/String;
    .restart local p2    # "override":Ljava/lang/Class;
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lflexjson/JSONException;

    const-string v3, "%s:  Could not load %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCurrentPath()Lflexjson/Path;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lflexjson/ObjectBinder;->jsonStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lflexjson/ObjectBinder;->objectStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected instantiate(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 267
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 268
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 269
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    return-object v2

    .line 270
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Lflexjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":There was an exception trying to instantiate an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 272
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lflexjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":There was an exception trying to instantiate an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 274
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lflexjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":There was an exception trying to instantiate an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 276
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lflexjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lflexjson/ObjectBinder;->currentPath:Lflexjson/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lacks a no argument constructor.  Flexjson will instantiate any protected, private, or public no-arg constructor."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public use(Lflexjson/Path;Lflexjson/ObjectFactory;)Lflexjson/ObjectBinder;
    .locals 1
    .param p1, "path"    # Lflexjson/Path;
    .param p2, "factory"    # Lflexjson/ObjectFactory;

    .prologue
    .line 51
    iget-object v0, p0, Lflexjson/ObjectBinder;->pathFactories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object p0
.end method

.method public use(Ljava/lang/Class;Lflexjson/ObjectFactory;)Lflexjson/ObjectBinder;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "factory"    # Lflexjson/ObjectFactory;

    .prologue
    .line 56
    iget-object v0, p0, Lflexjson/ObjectBinder;->factories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object p0
.end method

.method protected useMostSpecific(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p1, "classFromTarget"    # Ljava/lang/Class;
    .param p2, "typeFound"    # Ljava/lang/Class;

    .prologue
    .line 214
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 215
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    .end local p1    # "classFromTarget":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "classFromTarget":Ljava/lang/Class;
    :cond_1
    move-object p1, p2

    .line 215
    goto :goto_0

    .line 216
    :cond_2
    if-eqz p2, :cond_3

    move-object p1, p2

    .line 217
    goto :goto_0

    .line 218
    :cond_3
    if-nez p1, :cond_0

    .line 221
    const/4 p1, 0x0

    goto :goto_0
.end method
