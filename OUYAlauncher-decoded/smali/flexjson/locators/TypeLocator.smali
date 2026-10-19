.class public Lflexjson/locators/TypeLocator;
.super Ljava/lang/Object;
.source "TypeLocator.java"

# interfaces
.implements Lflexjson/ClassLocator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lflexjson/ClassLocator;"
    }
.end annotation


# instance fields
.field private fieldname:Ljava/lang/String;

.field private types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldname"    # Ljava/lang/String;

    .prologue
    .line 21
    .local p0, "this":Lflexjson/locators/TypeLocator;, "Lflexjson/locators/TypeLocator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflexjson/locators/TypeLocator;->types:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lflexjson/locators/TypeLocator;->fieldname:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Class;)Lflexjson/locators/TypeLocator;
    .locals 1
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Class;",
            ")",
            "Lflexjson/locators/TypeLocator;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lflexjson/locators/TypeLocator;, "Lflexjson/locators/TypeLocator<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lflexjson/locators/TypeLocator;->types:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-object p0
.end method

.method public locate(Lflexjson/ObjectBinder;Lflexjson/Path;)Ljava/lang/Class;
    .locals 7
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "currentPath"    # Lflexjson/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lflexjson/locators/TypeLocator;, "Lflexjson/locators/TypeLocator<TT;>;"
    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "source":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 33
    check-cast v0, Ljava/util/Map;

    .line 34
    .local v0, "map":Ljava/util/Map;
    iget-object v2, p0, Lflexjson/locators/TypeLocator;->types:Ljava/util/Map;

    iget-object v3, p0, Lflexjson/locators/TypeLocator;->fieldname:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 36
    .end local v0    # "map":Ljava/util/Map;
    :cond_0
    new-instance v2, Lflexjson/JSONException;

    const-string v3, "%s: Don\'t know how to locate types for source %s using fieldname %s.  TypeLocator requires the source object be a java.util.Map in order to work."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lflexjson/locators/TypeLocator;->fieldname:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
