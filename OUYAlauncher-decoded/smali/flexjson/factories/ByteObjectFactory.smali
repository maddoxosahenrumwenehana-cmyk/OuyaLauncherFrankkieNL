.class public Lflexjson/factories/ByteObjectFactory;
.super Ljava/lang/Object;
.source "ByteObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .param p4, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 11
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 12
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 14
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p1, p2, v0}, Lflexjson/ObjectBinder;->cannotConvertValueToTargetType(Ljava/lang/Object;Ljava/lang/Class;)Lflexjson/JSONException;

    move-result-object v0

    throw v0
.end method
