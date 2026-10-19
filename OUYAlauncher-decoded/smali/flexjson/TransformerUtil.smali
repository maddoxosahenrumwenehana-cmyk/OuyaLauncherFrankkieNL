.class public Lflexjson/TransformerUtil;
.super Ljava/lang/Object;
.source "TransformerUtil.java"


# static fields
.field private static final defaultTransformers:Lflexjson/transformer/TypeTransformerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    new-instance v2, Lflexjson/transformer/TypeTransformerMap;

    invoke-direct {v2}, Lflexjson/transformer/TypeTransformerMap;-><init>()V

    sput-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    .line 18
    new-instance v1, Lflexjson/transformer/NullTransformer;

    invoke-direct {v1}, Lflexjson/transformer/NullTransformer;-><init>()V

    .line 19
    .local v1, "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const/4 v3, 0x0

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lflexjson/transformer/ObjectTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/ObjectTransformer;-><init>()V

    .line 22
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Object;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Lflexjson/transformer/ClassTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/ClassTransformer;-><init>()V

    .line 25
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lflexjson/transformer/BooleanTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/BooleanTransformer;-><init>()V

    .line 28
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Boolean;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Lflexjson/transformer/NumberTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/NumberTransformer;-><init>()V

    .line 32
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Number;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Integer;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Long;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Double;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Float;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/math/BigDecimal;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/math/BigInteger;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Lflexjson/transformer/StringTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/StringTransformer;-><init>()V

    .line 50
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/String;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Lflexjson/transformer/CharacterTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/CharacterTransformer;-><init>()V

    .line 53
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Character;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lflexjson/transformer/BasicDateTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/BasicDateTransformer;-><init>()V

    .line 57
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/util/Date;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Lflexjson/transformer/EnumTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/EnumTransformer;-><init>()V

    .line 60
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Enum;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lflexjson/transformer/IterableTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/IterableTransformer;-><init>()V

    .line 63
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/lang/Iterable;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Lflexjson/transformer/MapTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/MapTransformer;-><init>()V

    .line 66
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/util/Map;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lflexjson/transformer/NullTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/NullTransformer;-><init>()V

    .line 69
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Lflexjson/transformer/ArrayTransformer;

    .end local v1    # "transformer":Lflexjson/transformer/Transformer;
    invoke-direct {v1}, Lflexjson/transformer/ArrayTransformer;-><init>()V

    .line 72
    .restart local v1    # "transformer":Lflexjson/transformer/Transformer;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    const-class v3, Ljava/util/Arrays;

    new-instance v4, Lflexjson/transformer/TransformerWrapper;

    invoke-direct {v4, v1}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v3, v4}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :try_start_0
    const-string v2, "org.hibernate.proxy.HibernateProxy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, "hibernateProxy":Ljava/lang/Class;
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    new-instance v3, Lflexjson/transformer/TransformerWrapper;

    new-instance v4, Lflexjson/transformer/HibernateTransformer;

    invoke-direct {v4}, Lflexjson/transformer/HibernateTransformer;-><init>()V

    invoke-direct {v3, v4}, Lflexjson/transformer/TransformerWrapper;-><init>(Lflexjson/transformer/Transformer;)V

    invoke-virtual {v2, v0, v3}, Lflexjson/transformer/TypeTransformerMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "hibernateProxy":Ljava/lang/Class;
    :goto_0
    sget-object v2, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 83
    return-void

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultTypeTransformers()Lflexjson/transformer/TypeTransformerMap;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lflexjson/TransformerUtil;->defaultTransformers:Lflexjson/transformer/TypeTransformerMap;

    return-object v0
.end method
