.class public final Ltv/ouya/console/iap/api/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/iap/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static fill:I

.field public static wrap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x7f030000

    sput v0, Ltv/ouya/console/iap/api/R$style;->fill:I

    .line 18
    const v0, 0x7f030001

    sput v0, Ltv/ouya/console/iap/api/R$style;->wrap:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
