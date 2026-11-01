.class public final Lg/doe;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/doe;->a:I

    iput-object p2, p0, Lg/doe;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lg/doe;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lg/doe;->b:Ljava/lang/Object;

    check-cast p1, Lg/gfh;

    iget-object p2, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p2, Lg/bid;

    iget-object p2, p2, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p2}, Lg/gbt;->isWrapable()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p2, Lg/bid;

    iget-object p2, p2, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p2}, Lg/gbt;->isWrapChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p2, Lg/bid;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lg/bid;->wrap(Z)V

    :cond_0
    iget-object p2, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p2, Lg/bid;

    iget-object p2, p2, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p2}, Lg/gbt;->isLineNumberable()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p2, Lg/bid;

    iget-object p2, p2, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p2}, Lg/gbt;->isLineNumberChecked()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p2, Lg/bid;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lg/bid;->lineNumber(Z)V

    :cond_1
    iget-object p2, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p2, Lg/bid;

    iget-object p2, p2, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p2}, Lg/gbt;->isZoomable()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast p1, Lg/bid;

    iget-object p2, p1, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p2}, Lg/gbt;->isZoomChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lg/bid;->zoom(Z)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/doe;->b:Ljava/lang/Object;

    check-cast v0, Lg/fyx;

    iget-object v1, v0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isAutoSetTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/fyx;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, v0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p1}, Lg/gbt;->isAutoSetSubTitle()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p2}, Lg/fyx;->setSubTitle(Ljava/lang/String;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    iget v0, p0, Lg/doe;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/doe;->b:Ljava/lang/Object;

    check-cast p1, Lg/gbf;

    iget-object p2, p1, Lg/gbf;->b:Lg/ejp;

    const-string p3, "#007 Could not call remote method."

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v0

    invoke-interface {p2, v0}, Lg/ejp;->zzf(Lg/abz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p3, p2}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget-object p1, p1, Lg/gbf;->b:Lg/ejp;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :try_start_1
    invoke-interface {p1, p2}, Lg/ejp;->zze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p3, p1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    iget v0, p0, Lg/doe;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p2, p0, Lg/doe;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfol;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfoh;->zza()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpj;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzfoh;->c:Lcom/google/android/gms/internal/ads/zzfpj;

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    iget v0, p0, Lg/doe;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string v0, "file:///android_asset/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lg/doe;->b:Ljava/lang/Object;

    check-cast v1, Lg/gfh;

    iget-object v1, v1, Lg/gfh;->a:Ljava/lang/Object;

    check-cast v1, Lg/bid;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, "text/javascript"

    const-string v1, "utf-8"

    invoke-direct {p1, p2, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    iget v0, p0, Lg/doe;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lg/doe;->b:Ljava/lang/Object;

    check-cast p1, Lg/gbf;

    iget-object v0, p1, Lg/gbf;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lg/gbf;->zzq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v1, "gmsg://noAdLoaded"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "#007 Could not call remote method."

    if-eqz v1, :cond_3

    iget-object p2, p1, Lg/gbf;->b:Lg/ejp;

    const/4 v0, 0x3

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v1

    invoke-interface {p2, v1}, Lg/ejp;->zzf(Lg/abz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {v5, p2}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    iget-object p2, p1, Lg/gbf;->b:Lg/ejp;

    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2, v0}, Lg/ejp;->zze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-static {v5, p2}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Lg/gbf;->j(I)V

    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_3
    const-string v1, "gmsg://scriptLoadFailed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p2, p1, Lg/gbf;->b:Lg/ejp;

    if-eqz p2, :cond_4

    :try_start_2
    invoke-static {v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v0

    invoke-interface {p2, v0}, Lg/ejp;->zzf(Lg/abz;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    invoke-static {v5, p2}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    :goto_3
    iget-object p2, p1, Lg/gbf;->b:Lg/ejp;

    if-eqz p2, :cond_5

    :try_start_3
    invoke-interface {p2, v2}, Lg/ejp;->zze(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-static {v5, p2}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    :goto_4
    invoke-virtual {p1, v2}, Lg/gbf;->j(I)V

    goto :goto_2

    :cond_6
    const-string v1, "gmsg://adResized"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lg/gbf;->b:Lg/ejp;

    if-eqz v1, :cond_7

    :try_start_4
    invoke-interface {v1}, Lg/ejp;->zzi()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    invoke-static {v5, v1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    :try_start_5
    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->d:Lg/mx;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, p2}, Lg/mx;->k(Landroid/content/Context;I)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :goto_6
    invoke-virtual {p1, v2}, Lg/gbf;->j(I)V

    goto :goto_2

    :cond_9
    const-string v1, "gmsg://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v1, p1, Lg/gbf;->b:Lg/ejp;

    if-eqz v1, :cond_b

    :try_start_6
    invoke-interface {v1}, Lg/ejp;->zzc()V

    iget-object v1, p1, Lg/gbf;->b:Lg/ejp;

    invoke-interface {v1}, Lg/ejp;->zzh()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-static {v5, v1}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b
    :goto_7
    iget-object v1, p1, Lg/gbf;->a:Lcom/google/android/gms/internal/ads/zzavc;

    if-eqz v1, :cond_c

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :try_start_7
    iget-object p1, p1, Lg/gbf;->a:Lcom/google/android/gms/internal/ads/zzavc;

    invoke-virtual {p1, p2, v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzavd; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_c
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :goto_9
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
