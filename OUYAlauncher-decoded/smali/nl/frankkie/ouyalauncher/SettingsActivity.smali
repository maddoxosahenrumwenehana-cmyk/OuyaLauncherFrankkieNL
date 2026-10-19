.class public Lnl/frankkie/ouyalauncher/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 17

    .prologue
    .line 35
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x400

    const/16 v16, 0x400

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setFlags(II)V

    .line 38
    const v14, 0x7f03000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->setContentView(I)V

    .line 40
    invoke-static/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 41
    invoke-static/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/Util;->setClock(Landroid/app/Activity;)V

    .line 53
    const v14, 0x7f09000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 54
    .local v5, "liveWallpaperBtn":Landroid/widget/Button;
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$1;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v14, 0x7f090010

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 70
    .local v6, "logoBaxyBtn":Landroid/widget/Button;
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$2;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v14, 0x7f090011

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 81
    .local v7, "logoOuyaBtn":Landroid/widget/Button;
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$3;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v14, 0x7f09002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$12;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v14, 0x7f090012

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 92
    .local v2, "clockAnalog":Landroid/widget/Button;
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$4;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v14, 0x7f090013

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 102
    .local v3, "clockDigital":Landroid/widget/Button;
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$5;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v14, 0x7f090015

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 112
    .local v1, "betaToggleButton":Landroid/widget/ToggleButton;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 113
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string v14, "betaEnabled"

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 119
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12, v1}, Lnl/frankkie/ouyalauncher/SettingsActivity$6;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;Landroid/content/SharedPreferences;Landroid/widget/ToggleButton;)V

    invoke-virtual {v1, v14}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    const v14, 0x7f090016

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 148
    .local v4, "feedbackBtn":Landroid/widget/Button;
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$7;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v14, 0x7f09002d
    move-object/from16 v0, p0
    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;
    move-result-object v14
    check-cast v14, Landroid/widget/Button;
    new-instance v15, Lnl/frankkie/ouyalauncher/SettingsActivity$13;
    move-object/from16 v0, p0
    invoke-direct {v15, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$13;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

        const-string v14, "settings_add_widget"

    const-string v15, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    new-instance v15, Lnl/frankkie/ouyalauncher/SettingsActivity$9;

    invoke-direct {v15, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$9;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
   
        const-string v14, "settings_remove_widgets"

    const-string v15, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    new-instance v15, Lnl/frankkie/ouyalauncher/SettingsActivity$10;

    invoke-direct {v15, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$10;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    
        const-string v14, "settings_webserver"

    const-string v15, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    new-instance v15, Lnl/frankkie/ouyalauncher/SettingsActivity$11;

    invoke-direct {v15, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$11;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v14, 0x7f090014

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 159
    .local v8, "musicBtn":Landroid/widget/Button;
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    new-instance v14, Lnl/frankkie/ouyalauncher/SettingsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnl/frankkie/ouyalauncher/SettingsActivity$8;-><init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v14, 0x7f090017

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnl/frankkie/ouyalauncher/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 172
    .local v13, "versionTextView":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget v9, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 173
    .local v9, "myVersion":I
    invoke-virtual/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lnl/frankkie/ouyalauncher/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v10, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 174
    .local v10, "myVersionName":Ljava/lang/String;
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v9    # "myVersion":I
    .end local v10    # "myVersionName":Ljava/lang/String;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v11

    .line 176
    .local v11, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/SettingsActivity;->initUI()V

    .line 32
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    sget-object v1, Lnl/frankkie/ouyalauncher/StartActivity;->currentInstance:Lnl/frankkie/ouyalauncher/StartActivity;

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cancel_pending_widget

    if-eqz p3, :cancel_pending_widget

    invoke-virtual {v1, p3}, Lnl/frankkie/ouyalauncher/StartActivity;->addAppWidget(Landroid/content/Intent;)V
    goto :cond_0

    :cancel_pending_widget
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/StartActivity;->cancelPendingAppWidget()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 183
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 185
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 191
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 193
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 194
    return-void
.end method
