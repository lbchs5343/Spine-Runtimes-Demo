.class public final Lg/cxe;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lg/gc;


# direct methods
.method public constructor <init>(Lg/gc;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lg/cxe;->b:Lg/gc;

    iput-object p2, p0, Lg/cxe;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lg/cxe;->b:Lg/gc;

    invoke-virtual {v0}, Lg/gc;->hideLoadingProgress()V

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lg/cxe;->b:Lg/gc;

    invoke-virtual {v0}, Lg/gc;->showLoadingProgress()V

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/cxe;->a:Landroid/content/Context;

    invoke-static {v0}, Lg/acw;->bj(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f120567

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lg/cxe;->b:Lg/gc;

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    iget-object v0, p0, Lg/cxe;->a:Landroid/content/Context;

    invoke-static {v0}, Lg/acw;->bj(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f120567

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lg/cxe;->b:Lg/gc;

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lg/fdj;->f(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_1
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object v0, p0, Lg/cxe;->b:Lg/gc;

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    iget-object v0, p0, Lg/cxe;->b:Lg/gc;

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lg/cxe;->a:Landroid/content/Context;

    iget-object v1, p0, Lg/cxe;->b:Lg/gc;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    invoke-static {v1}, Lg/gc;->d(Lg/gc;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f12056c

    invoke-static {v0, v3}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    invoke-static {v1}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lg/gc;->a(Lg/gc;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_2
    return v2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
