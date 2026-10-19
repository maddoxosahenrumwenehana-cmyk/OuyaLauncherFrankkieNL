.class public Lflexjson/JSONParameterizedType;
.super Ljava/lang/Object;
.source "JSONParameterizedType.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private clazz:Ljava/lang/Class;

.field private types:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lflexjson/JSONParameterizedType;->clazz:Ljava/lang/Class;

    .line 13
    iput-object p2, p0, Lflexjson/JSONParameterizedType;->types:[Ljava/lang/reflect/Type;

    .line 14
    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lflexjson/JSONParameterizedType;->types:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lflexjson/JSONParameterizedType;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lflexjson/JSONParameterizedType;->clazz:Ljava/lang/Class;

    return-object v0
.end method
