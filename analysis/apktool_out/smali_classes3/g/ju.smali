.class public final Lg/ju;
.super Lcom/google/android/gms/internal/ads/zzbkm;
.source "SourceFile"


# instance fields
.field public a:Landroid/webkit/WebViewClient;

.field public final b:Landroid/webkit/WebView;

.field public final c:Lg/bsn;

.field public final d:Lcom/google/android/gms/internal/ads/zzges;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lg/bsn;Lcom/google/android/gms/internal/ads/zzges;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkm;-><init>()V

    iput-object p1, p0, Lg/ju;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lg/ju;->c:Lg/bsn;

    iput-object p3, p0, Lg/ju;->d:Lcom/google/android/gms/internal/ads/zzges;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzjr:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/ju;->c:Lg/bsn;

    invoke-virtual {v2}, Lg/bsn;->g()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/ju;->b:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final getDelegate()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lg/ju;->a:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lg/ju;->e()V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbkm;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lg/ju;->e()V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbkm;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
