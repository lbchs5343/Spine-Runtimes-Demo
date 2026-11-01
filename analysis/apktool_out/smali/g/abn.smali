.class public abstract Lg/abn;
.super Lg/fyx;
.source "SourceFile"


# static fields
.field public static final EXTRA_AUTO_SET_SUB_TITLE:Ljava/lang/String; = "autoSetSubTitle"

.field public static final EXTRA_AUTO_SET_TITLE:Ljava/lang/String; = "autoSetTitle"

.field public static final EXTRA_IS_SHOW_OVERRIDE_FAIL_TIPS:Ljava/lang/String; = "isShowOverrideFailTips"

.field public static final EXTRA_IS_SUBTITLE_SHOW_FULL_URL:Ljava/lang/String; = "isSubtitleShowFullUrl"

.field public static final EXTRA_SHARE_ATTACHMENT_TEXT:Ljava/lang/String; = "shareAttachmentText"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final EXTRA_SUB_TITLE:Ljava/lang/String; = "subTitle"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UA_APP_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002e

    return v0
.end method

.method public initWebViewArgs()V
    .locals 4

    invoke-super {p0}, Lg/fyx;->initWebViewArgs()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/gbt;->setInitUrl(Ljava/lang/String;)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/gbt;->setInitTitle(Ljava/lang/String;)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "subTitle"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/gbt;->setInitSubTitle(Ljava/lang/String;)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "autoSetTitle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lg/gbt;->setAutoSetTitle(Z)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "autoSetSubTitle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lg/gbt;->setAutoSetSubTitle(Z)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "shareAttachmentText"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/gbt;->setShareAttachmentText(Ljava/lang/String;)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/gbt;->setUAAppName(Ljava/lang/String;)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "isShowOverrideFailTips"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lg/gbt;->setShowOverrideFailTips(Z)Lg/gbt;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v3, "isSubtitleShowFullUrl"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lg/gbt;->setSubtitleShowFullUrl(Z)V

    :cond_0
    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v1}, Lg/gbt;->setShareable(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v1}, Lg/gbt;->setShortcutable(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v1}, Lg/gbt;->setCopyLinkable(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v1}, Lg/gbt;->setZoomable(Z)Lg/gbt;

    return-void
.end method

.method public loadData()V
    .locals 2

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const v1, 0x7f12056e

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void
.end method

.method public showData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
