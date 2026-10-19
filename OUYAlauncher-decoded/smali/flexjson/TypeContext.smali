.class public Lflexjson/TypeContext;
.super Ljava/lang/Object;
.source "TypeContext.java"


# instance fields
.field private basicType:Lflexjson/BasicType;

.field private isFirst:Z

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lflexjson/BasicType;)V
    .locals 1
    .param p1, "basicType"    # Lflexjson/BasicType;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lflexjson/TypeContext;->basicType:Lflexjson/BasicType;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflexjson/TypeContext;->isFirst:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getBasicType()Lflexjson/BasicType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lflexjson/TypeContext;->basicType:Lflexjson/BasicType;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lflexjson/TypeContext;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lflexjson/TypeContext;->isFirst:Z

    return v0
.end method

.method public setBasicType(Lflexjson/BasicType;)V
    .locals 0
    .param p1, "basicType"    # Lflexjson/BasicType;

    .prologue
    .line 34
    iput-object p1, p0, Lflexjson/TypeContext;->basicType:Lflexjson/BasicType;

    .line 35
    return-void
.end method

.method public setFirst(Z)V
    .locals 0
    .param p1, "first"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lflexjson/TypeContext;->isFirst:Z

    .line 43
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lflexjson/TypeContext;->propertyName:Ljava/lang/String;

    .line 51
    return-void
.end method
