.class public Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;
.super Ljava/lang/Object;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/LogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLogo"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field isSelected:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/LogoActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/LogoActivity;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->isSelected:Z

    return-void
.end method
