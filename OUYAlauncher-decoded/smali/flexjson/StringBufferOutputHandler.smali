.class public Lflexjson/StringBufferOutputHandler;
.super Ljava/lang/Object;
.source "StringBufferOutputHandler.java"

# interfaces
.implements Lflexjson/OutputHandler;


# instance fields
.field private out:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "out"    # Ljava/lang/StringBuffer;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lflexjson/StringBufferOutputHandler;->out:Ljava/lang/StringBuffer;

    .line 24
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lflexjson/StringBufferOutputHandler;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;II)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lflexjson/StringBufferOutputHandler;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 39
    return p3
.end method

.method public write(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "append"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lflexjson/StringBufferOutputHandler;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 33
    iget-object v0, p0, Lflexjson/StringBufferOutputHandler;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    add-int/lit8 v0, p3, 0x1

    return v0
.end method

.method public write(Ljava/lang/String;)Lflexjson/OutputHandler;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lflexjson/StringBufferOutputHandler;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    return-object p0
.end method
