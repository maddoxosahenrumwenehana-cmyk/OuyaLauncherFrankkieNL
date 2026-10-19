.class public Lnl/frankkie/ouyalauncher/WebserverActivity;
.super Landroid/app/Activity;
.source "WebserverActivity.java"


# static fields
.field public static context:Landroid/content/Context; = null

.field public static final uploadHtml:Ljava/lang/String; = "\n<form enctype=\"multipart/form-data\" action=\"/upload/\" method=\"post\">\n<input type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"2000000\">\nFile: <input name=\"uploadFile\" type=\"file\"><br>\nPath: <input type=\"text\" name=\"pad\" value=\"/sdcard/\"><br>\n<input name=\"gezien\" value=\"ja\" type=\"hidden\">\n<input type=\"submit\" value=\"Start Upload\" name=\"submitButton\">\n</form>\n"


# instance fields
.field handler:Landroid/os/Handler;

.field portNumber:I

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv2sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/16 v0, 0x4d2

    iput v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->portNumber:I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 10
    .param p0, "useIPv4"    # Z

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    .line 98
    .local v5, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 99
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 101
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "sAddr":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v7

    .line 104
    .local v7, "isIPv4":Z
    if-eqz p0, :cond_3

    .line 105
    if-eqz v7, :cond_1

    .line 118
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v7    # "isIPv4":Z
    .end local v8    # "sAddr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v8

    .line 108
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v6    # "intf":Ljava/net/NetworkInterface;
    .restart local v7    # "isIPv4":Z
    .restart local v8    # "sAddr":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_1

    .line 109
    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 110
    .local v2, "delim":I
    if-ltz v2, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 116
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v7    # "isIPv4":Z
    .end local v8    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 118
    :cond_4
    const-string v8, ""

    goto :goto_0
.end method


# virtual methods
.method public initQR()V
    .locals 4

    .prologue
    .line 45
    const v2, 0x7f090027

    invoke-virtual {p0, v2}, Lnl/frankkie/ouyalauncher/WebserverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http%3A%2F%2F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lnl/frankkie/ouyalauncher/WebserverActivity;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%3A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->portNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%2F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "adres":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://chart.apis.google.com/chart?cht=qr&chs=512x512&chld=L&choe=UTF-8&chl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public initUI()V
    .locals 5

    .prologue
    const/16 v2, 0x400

    const/4 v4, 0x1

    .line 57
    invoke-virtual {p0, v4}, Lnl/frankkie/ouyalauncher/WebserverActivity;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/WebserverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 60
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/WebserverActivity;->setContentView(I)V

    .line 62
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 63
    const v1, 0x7f090028

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/WebserverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv1:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/WebserverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv2:Landroid/widget/TextView;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv2sb:Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "Begin Log"

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/WebserverActivity;->log(Ljava/lang/String;)V

    .line 67
    const-string v0, "Please use our browser on your PC and go to:\nhttp://%s:1234/"

    .line 68
    .local v0, "template":Ljava/lang/String;
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv1:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Lnl/frankkie/ouyalauncher/WebserverActivity;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public initWebserverStuff()V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/MyServer;->main(Lnl/frankkie/ouyalauncher/WebserverActivity;)V

    .line 54
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lnl/frankkie/ouyalauncher/WebserverActivity$1;

    invoke-direct {v1, p0, p1}, Lnl/frankkie/ouyalauncher/WebserverActivity$1;-><init>(Lnl/frankkie/ouyalauncher/WebserverActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public logHandler(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "BAXY"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv2sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv2:Landroid/widget/TextView;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv2sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 85
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sput-object p0, Lnl/frankkie/ouyalauncher/WebserverActivity;->context:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/WebserverActivity;->initUI()V

    .line 40
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/WebserverActivity;->initWebserverStuff()V

    .line 41
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/WebserverActivity;->initQR()V

    .line 42
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 125
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 127
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 133
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 136
    return-void
.end method
