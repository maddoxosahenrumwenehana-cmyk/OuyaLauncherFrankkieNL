.class public abstract Lflexjson/transformer/AbstractTransformer;
.super Ljava/lang/Object;
.source "AbstractTransformer.java"

# interfaces
.implements Lflexjson/transformer/Transformer;
.implements Lflexjson/transformer/Inline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lflexjson/JSONContext;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lflexjson/JSONContext;->get()Lflexjson/JSONContext;

    move-result-object v0

    return-object v0
.end method

.method public isInline()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
