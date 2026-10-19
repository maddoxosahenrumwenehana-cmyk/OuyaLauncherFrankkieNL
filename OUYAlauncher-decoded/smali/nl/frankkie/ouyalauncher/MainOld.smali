.class public Lnl/frankkie/ouyalauncher/MainOld;
.super Landroid/app/Activity;
.source "MainOld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;
    }
.end annotation


# static fields
.field private static mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field adapter:Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;

.field gridView:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnl/frankkie/ouyalauncher/MainOld;->mApplications:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lnl/frankkie/ouyalauncher/MainOld;->mApplications:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadApplications()V
    .locals 10

    .prologue
    .line 53
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainOld;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 55
    .local v6, "manager":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    .local v5, "mainIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v7, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 64
    .local v2, "count":I
    sget-object v7, Lnl/frankkie/ouyalauncher/MainOld;->mApplications:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 65
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v7, Lnl/frankkie/ouyalauncher/MainOld;->mApplications:Ljava/util/ArrayList;

    .line 67
    :cond_0
    sget-object v7, Lnl/frankkie/ouyalauncher/MainOld;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 70
    new-instance v0, Lnl/frankkie/ouyalauncher/AppInfo;

    invoke-direct {v0}, Lnl/frankkie/ouyalauncher/AppInfo;-><init>()V

    .line 71
    .local v0, "application":Lnl/frankkie/ouyalauncher/AppInfo;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    .line 74
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v8, 0x10200000

    invoke-virtual {v0, v7, v8}, Lnl/frankkie/ouyalauncher/AppInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 79
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 81
    sget-object v7, Lnl/frankkie/ouyalauncher/MainOld;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "application":Lnl/frankkie/ouyalauncher/AppInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method protected initUI()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/MainOld;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainOld;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/MainOld;->setContentView(I)V

    .line 44
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/MainOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainOld;->gridView:Landroid/widget/GridView;

    .line 46
    new-instance v0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;-><init>(Lnl/frankkie/ouyalauncher/MainOld;)V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainOld;->adapter:Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;

    .line 48
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainOld;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainOld;->adapter:Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainOld;->initUI()V

    .line 35
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/MainOld;->loadApplications()V

    .line 36
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainOld;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 37
    return-void
.end method
