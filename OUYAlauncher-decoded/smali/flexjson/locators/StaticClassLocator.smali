.class public Lflexjson/locators/StaticClassLocator;
.super Ljava/lang/Object;
.source "StaticClassLocator.java"

# interfaces
.implements Lflexjson/ClassLocator;


# instance fields
.field private target:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lflexjson/locators/StaticClassLocator;->target:Ljava/lang/Class;

    .line 20
    return-void
.end method


# virtual methods
.method public locate(Lflexjson/ObjectBinder;Lflexjson/Path;)Ljava/lang/Class;
    .locals 1
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "currentPath"    # Lflexjson/Path;

    .prologue
    .line 23
    iget-object v0, p0, Lflexjson/locators/StaticClassLocator;->target:Ljava/lang/Class;

    return-object v0
.end method
