.class public final Lcom/google/android/gms/internal/ads/zzbkz;
.super Lcom/google/android/gms/internal/ads/zzbkm;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I


# instance fields
.field public a:Landroid/webkit/WebViewClient;

.field public final b:Lg/fnq;

.field public final c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkm;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    const-string v1, "JavaScript must be enabled on the WebView."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkz;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbky;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzbky;-><init>(Landroid/webkit/WebView;)V

    new-instance p2, Lg/fnq;

    invoke-direct {p2, p1, v0}, Lg/fnq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbky;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkz;->b:Lg/fnq;

    return-void
.end method


# virtual methods
.method public final getDelegate()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->a:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->b:Lg/fnq;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbkx;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkm;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkz;->b:Lg/fnq;

    iget-object v1, v1, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbkx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbkx;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkm;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->b:Lg/fnq;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbkx;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkm;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->b:Lg/fnq;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkx;->zza()V

    return-void
.end method

.method public final zzb(Landroid/webkit/WebViewClient;)V
    .locals 2

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Delegate cannot be itself."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkz;->a:Landroid/webkit/WebViewClient;

    return-void
.end method
