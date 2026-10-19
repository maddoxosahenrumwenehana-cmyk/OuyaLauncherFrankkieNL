.class public Lnl/frankkie/ouyalauncher/LogoActivity;
.super Landroid/app/Activity;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;,
        Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;
    }
.end annotation


# instance fields
.field logos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;",
            ">;"
        }
    .end annotation
.end field

.field table:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->logos:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lnl/frankkie/ouyalauncher/LogoActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/LogoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnl/frankkie/ouyalauncher/LogoActivity;->selectLogo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lnl/frankkie/ouyalauncher/LogoActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/LogoActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/LogoActivity;->fillTable()V

    return-void
.end method

.method private fillTable(Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;)Landroid/view/View;
    .locals 9
    .param p1, "logo"    # Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;

    .prologue
    .line 74
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/LogoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 75
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->table:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 76
    .local v3, "layout":Landroid/view/ViewGroup;
    const v6, 0x7f09000b

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x7f09000c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 78
    .local v5, "textView":Landroid/widget/TextView;
    const v6, 0x7f09000d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, "hiddenTextView":Landroid/widget/TextView;
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, p1, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, p1, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;->path:Ljava/lang/String;

    .line 83
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Lnl/frankkie/ouyalauncher/LogoActivity$1;

    invoke-direct {v6, p0, v4}, Lnl/frankkie/ouyalauncher/LogoActivity$1;-><init>(Lnl/frankkie/ouyalauncher/LogoActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-object v3
.end method

.method private fillTable()V
    .locals 7

    .prologue
    .line 54
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 55
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "row":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/LogoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 58
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->logos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 59
    rem-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    .line 60
    if-eqz v2, :cond_0

    .line 61
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    const v4, 0x7f03000c

    iget-object v5, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->table:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "row":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 65
    .restart local v2    # "row":Landroid/view/ViewGroup;
    :cond_1
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->logos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;

    invoke-direct {p0, v4}, Lnl/frankkie/ouyalauncher/LogoActivity;->fillTable(Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->logos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 68
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->table:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private initLogos()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;

    invoke-direct {v0, p0}, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;-><init>(Lnl/frankkie/ouyalauncher/LogoActivity;)V

    .line 39
    .local v0, "task":Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/LogoActivity$LogosLoaderAsynTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/LogoActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/LogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 46
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/LogoActivity;->setContentView(I)V

    .line 48
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 49
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/LogoActivity;->table:Landroid/view/ViewGroup;

    .line 50
    return-void
.end method

.method private selectLogo(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "logoFile"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/LogoActivity;->initUI()V

    .line 34
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/LogoActivity;->initLogos()V

    .line 35
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 146
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 148
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 156
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 157
    return-void
.end method
