.class public Lflexjson/transformer/BooleanTransformer;
.super Lflexjson/transformer/AbstractTransformer;
.source "BooleanTransformer.java"


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
    invoke-virtual {p0}, Lflexjson/transformer/BooleanTransformer;->getContext()Lflexjson/JSONContext;

    move-result-object v1

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Lflexjson/JSONContext;->write(Ljava/lang/String;)V

    .line 22
    return-void

    .line 21
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
