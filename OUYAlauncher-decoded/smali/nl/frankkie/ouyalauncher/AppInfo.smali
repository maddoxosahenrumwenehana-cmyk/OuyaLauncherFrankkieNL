.class Lnl/frankkie/ouyalauncher/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field filtered:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field intent:Landroid/content/Intent;

.field isOUYA:Z

.field isOUYAGame:Z

.field packagename:Ljava/lang/String;

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYA:Z

    .line 62
    iput-boolean v0, p0, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYAGame:Z

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/AppInfo;->packagename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    instance-of v3, p1, Lnl/frankkie/ouyalauncher/AppInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 85
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 88
    check-cast v0, Lnl/frankkie/ouyalauncher/AppInfo;

    .line 89
    .local v0, "that":Lnl/frankkie/ouyalauncher/AppInfo;
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v0, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 98
    .local v1, "result":I
    :goto_0
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "name":Ljava/lang/String;
    mul-int/lit8 v3, v1, 0x1f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v1, v3, v2

    .line 100
    return v1

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "result":I
    :cond_1
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "launchFlags"    # I

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    return-void
.end method
