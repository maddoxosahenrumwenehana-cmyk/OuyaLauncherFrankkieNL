.class public interface abstract Lnl/wotuu/database/ISaveable;
.super Ljava/lang/Object;
.source "ISaveable.java"


# virtual methods
.method public abstract InDatabase()Ljava/lang/Boolean;
.end method

.method public abstract InDatabase(Ljava/util/List;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract OnDelete()V
.end method

.method public abstract OnInsert()V
.end method

.method public abstract OnLoad()V
.end method

.method public abstract OnUpdate()V
.end method
