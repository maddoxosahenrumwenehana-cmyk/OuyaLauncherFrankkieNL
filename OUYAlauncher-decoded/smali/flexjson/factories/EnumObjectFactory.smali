.class public Lflexjson/factories/EnumObjectFactory;
.super Ljava/lang/Object;
.source "EnumObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    .line 11
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 12
    check-cast p3, Ljava/lang/Class;

    .end local p3    # "targetType":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 14
    .restart local p3    # "targetType":Ljava/lang/reflect/Type;
    :cond_0
    new-instance v0, Lflexjson/JSONException;

    const-string v1, "%s:  Don\'t know how to convert %s to enumerated constant of %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
