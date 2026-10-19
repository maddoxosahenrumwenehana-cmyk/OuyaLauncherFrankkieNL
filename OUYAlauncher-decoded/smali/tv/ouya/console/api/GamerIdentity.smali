.class public Ltv/ouya/console/api/GamerIdentity;
.super Ljava/lang/Object;
.source "GamerIdentity.java"


# static fields
.field private static instance:Ltv/ouya/console/api/GamerIdentity;


# instance fields
.field private gamerToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Ltv/ouya/console/api/GamerIdentity;

    invoke-direct {v0}, Ltv/ouya/console/api/GamerIdentity;-><init>()V

    sput-object v0, Ltv/ouya/console/api/GamerIdentity;->instance:Ltv/ouya/console/api/GamerIdentity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Ltv/ouya/console/api/GamerIdentity;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Ltv/ouya/console/api/GamerIdentity;->instance:Ltv/ouya/console/api/GamerIdentity;

    return-object v0
.end method

.method public static setInstance(Ltv/ouya/console/api/GamerIdentity;)V
    .locals 0
    .param p0, "instance"    # Ltv/ouya/console/api/GamerIdentity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    sput-object p0, Ltv/ouya/console/api/GamerIdentity;->instance:Ltv/ouya/console/api/GamerIdentity;

    .line 17
    return-void
.end method


# virtual methods
.method public getGamerToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ltv/ouya/console/api/GamerIdentity;->gamerToken:Ljava/lang/String;

    return-object v0
.end method

.method public setGamerToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "Ouya Launcher Identity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object p1, p0, Ltv/ouya/console/api/GamerIdentity;->gamerToken:Ljava/lang/String;

    .line 26
    return-void
.end method
