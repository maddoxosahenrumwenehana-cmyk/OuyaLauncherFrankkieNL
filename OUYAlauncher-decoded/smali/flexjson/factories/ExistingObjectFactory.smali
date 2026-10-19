.class public Lflexjson/factories/ExistingObjectFactory;
.super Ljava/lang/Object;
.source "ExistingObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# instance fields
.field private source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lflexjson/factories/ExistingObjectFactory;->source:Ljava/lang/Object;

    .line 15
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
    .line 19
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iget-object v0, p0, Lflexjson/factories/ExistingObjectFactory;->source:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, p3}, Lflexjson/ObjectBinder;->bindIntoObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
