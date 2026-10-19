.class public Leu/chainfire/libsuperuser/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/Shell$1;,
        Leu/chainfire/libsuperuser/Shell$Interactive;,
        Leu/chainfire/libsuperuser/Shell$Builder;,
        Leu/chainfire/libsuperuser/Shell$Command;,
        Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;,
        Leu/chainfire/libsuperuser/Shell$SU;,
        Leu/chainfire/libsuperuser/Shell$SH;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    return-void
.end method

.method public static run(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "wantSTDERR"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 23
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "environment"    # [Ljava/lang/String;
    .param p3, "wantSTDERR"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 91
    .local v16, "shellUpper":Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 92
    const-string v19, "Application attempted to run a shell command from the main thread"

    invoke-static/range {v19 .. v19}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 93
    new-instance v19, Leu/chainfire/libsuperuser/ShellOnMainThreadException;

    const-string v20, "Application attempted to run a shell command from the main thread"

    invoke-direct/range {v19 .. v20}, Leu/chainfire/libsuperuser/ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 96
    :cond_0
    const-string v19, "[%s%%] START"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 99
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 103
    .local v15, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 104
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v13, "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 107
    move-object/from16 v6, p2

    .local v6, "arr$":[Ljava/lang/String;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v8, v6, v11

    .line 108
    .local v8, "entry":Ljava/lang/String;
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .local v17, "split":I
    if-ltz v17, :cond_1

    .line 109
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 112
    .end local v8    # "entry":Ljava/lang/String;
    .end local v17    # "split":I
    :cond_2
    const/4 v10, 0x0

    .line 113
    .local v10, "i":I
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p2, v0

    .line 114
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 115
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, p2, v10

    .line 116
    add-int/lit8 v10, v10, 0x1

    .line 117
    goto :goto_1

    .line 121
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "len$":I
    .end local v13    # "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v14

    .line 122
    .local v14, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v14}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v4, "STDIN":Ljava/io/DataOutputStream;
    new-instance v5, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1, v15}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 124
    .local v5, "STDOUT":Leu/chainfire/libsuperuser/StreamGobbler;
    new-instance v3, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v21

    if-eqz p3, :cond_4

    move-object/from16 v19, v15

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 127
    .local v3, "STDERR":Leu/chainfire/libsuperuser/StreamGobbler;
    invoke-virtual {v5}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 128
    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 129
    move-object/from16 v6, p1

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v12, v6

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v12, :cond_5

    aget-object v18, v6, v11

    .line 130
    .local v18, "write":Ljava/lang/String;
    const-string v19, "[%s+] %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 131
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 129
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 124
    .end local v3    # "STDERR":Leu/chainfire/libsuperuser/StreamGobbler;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v18    # "write":Ljava/lang/String;
    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    .line 134
    .restart local v3    # "STDERR":Leu/chainfire/libsuperuser/StreamGobbler;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_5
    const-string v19, "exit\n"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 138
    invoke-virtual {v14}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :goto_4
    :try_start_2
    invoke-virtual {v5}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 149
    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 150
    invoke-virtual {v14}, Ljava/lang/Process;->destroy()V

    .line 153
    const-string v19, "su"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual {v14}, Ljava/lang/Process;->exitValue()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    const/16 v20, 0xff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 154
    const/4 v15, 0x0

    .line 164
    .end local v3    # "STDERR":Leu/chainfire/libsuperuser/StreamGobbler;
    .end local v4    # "STDIN":Ljava/io/DataOutputStream;
    .end local v5    # "STDOUT":Leu/chainfire/libsuperuser/StreamGobbler;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "process":Ljava/lang/Process;
    :cond_6
    :goto_5
    const-string v19, "[%s%%] END"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 165
    return-object v15

    .line 156
    :catch_0
    move-exception v7

    .line 158
    .local v7, "e":Ljava/io/IOException;
    const/4 v15, 0x0

    .line 162
    goto :goto_5

    .line 159
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 161
    .local v7, "e":Ljava/lang/InterruptedException;
    const/4 v15, 0x0

    goto :goto_5

    .line 146
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "STDERR":Leu/chainfire/libsuperuser/StreamGobbler;
    .restart local v4    # "STDIN":Ljava/io/DataOutputStream;
    .restart local v5    # "STDOUT":Leu/chainfire/libsuperuser/StreamGobbler;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v19

    goto :goto_4
.end method
