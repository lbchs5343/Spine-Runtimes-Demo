.class public abstract Lg/gc;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private downloadListener:Landroid/webkit/DownloadListener;

.field private isShowOverrideFailTips:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private uaAppName:Ljava/lang/String;

.field private webChromeClient:Landroid/webkit/WebChromeClient;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gc;->isShowOverrideFailTips:Z

    invoke-virtual {p0, p1}, Lg/gc;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lg/gc;->isShowOverrideFailTips:Z

    invoke-virtual {p0, p1}, Lg/gc;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lg/gc;->isShowOverrideFailTips:Z

    invoke-virtual {p0, p1}, Lg/gc;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lg/gc;->isShowOverrideFailTips:Z

    invoke-virtual {p0, p1}, Lg/gc;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lg/gc;)Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Lg/gc;->webViewClient:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method public static bridge synthetic b(Lg/gc;I)V
    .locals 0

    invoke-direct {p0, p1}, Lg/gc;->setProgress(I)V

    return-void
.end method

.method public static bridge synthetic c(Lg/gc;)Landroid/webkit/DownloadListener;
    .locals 0

    iget-object p0, p0, Lg/gc;->downloadListener:Landroid/webkit/DownloadListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lg/gc;)Z
    .locals 0

    iget-boolean p0, p0, Lg/gc;->isShowOverrideFailTips:Z

    return p0
.end method

.method public static bridge synthetic e(Lg/gc;)Landroid/webkit/WebChromeClient;
    .locals 0

    iget-object p0, p0, Lg/gc;->webChromeClient:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method private setProgress(I)V
    .locals 1

    iget-object v0, p0, Lg/gc;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private setUserAgent(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->p()Lg/fxe;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/fxe;->net:Lg/fxe$d;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/fxe$d;->ua:Ljava/lang/String;

    iget-object v0, v0, Lg/fxe$d;->webUASuffix:Ljava/lang/String;

    iget-object v2, p0, Lg/gc;->uaAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1200be

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/gc;->uaAppName:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0, v2}, Lg/acw;->al(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {p1}, Lg/acw;->an(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const-string p1, ""

    if-nez v1, :cond_3

    move-object v1, p1

    :cond_3
    if-nez v0, :cond_4

    move-object v0, p1

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public bindProgressBar(Landroid/widget/ProgressBar;)Lg/gc;
    .locals 0

    iput-object p1, p0, Lg/gc;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-direct {p0, p1}, Lg/gc;->setUserAgent(Landroid/content/Context;)V

    new-instance v0, Lg/fjy;

    invoke-direct {v0, p0, v1}, Lg/fjy;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lg/cxe;

    invoke-direct {v0, p0, p1}, Lg/cxe;-><init>(Lg/gc;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lg/rn;

    invoke-direct {v0, p0, p1}, Lg/rn;-><init>(Lg/gc;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public getUAAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gc;->uaAppName:Ljava/lang/String;

    return-object v0
.end method

.method public hideLoadingProgress()V
    .locals 2

    iget-object v0, p0, Lg/gc;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isShowOverrideFailTips()Z
    .locals 1

    iget-boolean v0, p0, Lg/gc;->isShowOverrideFailTips:Z

    return v0
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0

    iput-object p1, p0, Lg/gc;->downloadListener:Landroid/webkit/DownloadListener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    instance-of v0, p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v0, :cond_5

    const/16 v0, 0x13

    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/ReflectiveOperationException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "No WebView installed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetManager has been closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    throw p1

    :cond_5
    :goto_0
    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setShowOverrideFailTips(Z)Lg/gc;
    .locals 0

    iput-boolean p1, p0, Lg/gc;->isShowOverrideFailTips:Z

    return-object p0
.end method

.method public setUAAppName(Ljava/lang/String;)Lg/gc;
    .locals 0

    iput-object p1, p0, Lg/gc;->uaAppName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/gc;->setUserAgent(Landroid/content/Context;)V

    return-object p0
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lg/gc;->webChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    iput-object p1, p0, Lg/gc;->webViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public showLoadingProgress()V
    .locals 2

    iget-object v0, p0, Lg/gc;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unBindProgressBar()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gc;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
