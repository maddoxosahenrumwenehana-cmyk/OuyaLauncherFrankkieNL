.class public Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;
.super Ljava/lang/Object;
.source "BackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/BackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBackground"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field isSelected:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/BackgroundActivity;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;->isSelected:Z

    return-void
.end method
