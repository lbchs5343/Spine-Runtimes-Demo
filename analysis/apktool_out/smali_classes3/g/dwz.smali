.class public final synthetic Lg/dwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ju;


# direct methods
.method public synthetic constructor <init>(Lg/ju;I)V
    .locals 0

    iput p2, p0, Lg/dwz;->a:I

    iput-object p1, p0, Lg/dwz;->b:Lg/ju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/dwz;->a:I

    iget-object v1, p0, Lg/dwz;->b:Lg/ju;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/dwz;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/dwz;-><init>(Lg/ju;I)V

    iget-object v1, v1, Lg/ju;->d:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lg/ju;->b:Landroid/webkit/WebView;

    :try_start_0
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->z:Lg/esy;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-static {v0}, Lg/cch;->i(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "GET_WEB_VIEW_CLIENT"

    invoke-static {v2}, Lg/bff;->u(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    :try_start_1
    sget v2, Lg/bdj;->a:I

    sget-object v2, Lg/gvy;->d:Lg/fpc;

    invoke-virtual {v2}, Lg/fpc;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lg/ze;->a(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lg/fnk;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lg/bdj;->c(Landroid/webkit/WebView;)Lg/evf;

    move-result-object v2

    iget-object v2, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {v2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iput-object v2, v1, Lg/ju;->a:Landroid/webkit/WebViewClient;

    :cond_3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1}, Lg/ju;->e()V

    goto :goto_1

    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v2, "AdUtil.getWebViewClient"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWebViewClient not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
