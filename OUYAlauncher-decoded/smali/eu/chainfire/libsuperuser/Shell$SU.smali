.class public Leu/chainfire/libsuperuser/Shell$SU;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SU"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 248
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "echo -BOC-"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    const-string v6, "id"

    aput-object v6, v4, v5

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 252
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    const/4 v0, 0x0

    .line 256
    .local v0, "echo_seen":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    .local v2, "line":Ljava/lang/String;
    const-string v4, "uid="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 259
    const-string v4, "uid=0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 260
    :cond_3
    const-string v4, "-BOC-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static run(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 216
    const-string v0, "su"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static run(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "su"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static run([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "commands"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const-string v0, "su"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static version(Z)Ljava/lang/String;
    .locals 9
    .param p0, "internal"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 287
    const-string v5, "sh"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v3, "su -V"

    :goto_0
    aput-object v3, v6, v8

    const/4 v3, 0x1

    const-string v7, "exit"

    aput-object v7, v6, v3

    invoke-static {v5, v6, v4, v8}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 291
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    move-object v1, v4

    .line 303
    :goto_1
    return-object v1

    .line 287
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v3, "su -v"

    goto :goto_0

    .line 293
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    .local v1, "line":Ljava/lang/String;
    if-nez p0, :cond_3

    .line 295
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 298
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    :cond_4
    move-object v1, v4

    .line 303
    goto :goto_1

    .line 299
    .restart local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_2
.end method
