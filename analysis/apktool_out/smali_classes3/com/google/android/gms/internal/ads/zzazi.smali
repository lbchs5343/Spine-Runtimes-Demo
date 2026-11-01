.class public final synthetic Lcom/google/android/gms/internal/ads/zzazi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic zza:Lg/fpf;


# direct methods
.method public synthetic constructor <init>(Lg/fpf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zza:Lg/fpf;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zza:Lg/fpf;

    iget-object v1, v0, Lg/fpf;->c:Lcom/google/android/gms/internal/ads/zzazl;

    iget-object v2, v0, Lg/fpf;->e:Lcom/google/android/gms/internal/ads/zzazb;

    iget-object v3, v0, Lg/fpf;->a:Landroid/webkit/WebView;

    check-cast p1, Ljava/lang/String;

    iget-boolean v4, v0, Lg/fpf;->b:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazb;->zze()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "text"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzazl;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzazb;->zzi(Ljava/lang/String;ZFFFF)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzazb;->zzi(Ljava/lang/String;ZFFFF)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazb;->zzl()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzazl;->h:Lcom/google/android/gms/internal/ads/zzazc;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzazc;->zzb(Lcom/google/android/gms/internal/ads/zzazb;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "ContentFetchTask.processWebViewContent"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    const-string p1, "Json string may be malformed."

    invoke-static {p1}, Lg/agd;->c(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
