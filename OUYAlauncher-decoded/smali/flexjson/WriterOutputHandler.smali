.class public Lflexjson/WriterOutputHandler;
.super Ljava/lang/Object;
.source "WriterOutputHandler.java"

# interfaces
.implements Lflexjson/OutputHandler;


# instance fields
.field private out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lflexjson/WriterOutputHandler;->out:Ljava/io/Writer;

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lflexjson/WriterOutputHandler;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;II)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lflexjson/WriterOutputHandler;->out:Ljava/io/Writer;

    sub-int v2, p3, p2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return p3

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lflexjson/JSONException;

    const-string v2, "There was a problem writing output to the Writer."

    invoke-direct {v1, v2, v0}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "append"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lflexjson/WriterOutputHandler;->out:Ljava/io/Writer;

    sub-int v2, p3, p2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 41
    iget-object v1, p0, Lflexjson/WriterOutputHandler;->out:Ljava/io/Writer;

    invoke-virtual {v1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v1, p3, 0x1

    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lflexjson/JSONException;

    const-string v2, "There was a problem writing output to the Writer."

    invoke-direct {v1, v2, v0}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/lang/String;)Lflexjson/OutputHandler;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lflexjson/WriterOutputHandler;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lflexjson/JSONException;

    const-string v2, "There was a problem writing output to the Writer."

    invoke-direct {v1, v2, v0}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
