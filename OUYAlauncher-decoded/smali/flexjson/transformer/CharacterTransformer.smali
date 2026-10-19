.class public Lflexjson/transformer/CharacterTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "CharacterTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lflexjson/transformer/AbstractTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0}, Lflexjson/transformer/CharacterTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflexjson/JSONContext;->writeQuoted(Ljava/lang/String;)V

    .line 22
    return-void
.end method
