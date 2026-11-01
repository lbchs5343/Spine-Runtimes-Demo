.class public final Lg/fjy;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Lg/fjy;->a:I

    iput-object p1, p0, Lg/fjy;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget v0, p0, Lg/fjy;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fjy;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Lg/gc;

    invoke-static {v0, p2}, Lg/gc;->b(Lg/gc;I)V

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Lg/gc;->hideLoadingProgress()V

    :cond_0
    invoke-static {v0}, Lg/gc;->e(Lg/gc;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lg/gc;->e(Lg/gc;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lg/fjy;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lg/fjy;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Lg/gc;

    invoke-static {v0}, Lg/gc;->e(Lg/gc;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/gc;->e(Lg/gc;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lg/fjy;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Lg/fyx;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/fyx;->ag(Ljava/lang/String;)V

    iget-object p1, v0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p1}, Lg/gbt;->isAutoSetTitle()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0, p2}, Lg/fyx;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, v0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p1}, Lg/gbt;->isAutoSetSubTitle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/fyx;->setSubTitle(Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
