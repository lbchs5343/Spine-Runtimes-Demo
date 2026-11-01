.class public final Lg/fpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzazl;

.field public final d:Lcom/google/android/gms/internal/ads/zzazi;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzazb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazl;Lcom/google/android/gms/internal/ads/zzazb;Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/fpf;->e:Lcom/google/android/gms/internal/ads/zzazb;

    iput-object p3, p0, Lg/fpf;->a:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lg/fpf;->b:Z

    iput-object p1, p0, Lg/fpf;->c:Lcom/google/android/gms/internal/ads/zzazl;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzazi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzazi;-><init>(Lg/fpf;)V

    iput-object p1, p0, Lg/fpf;->d:Lcom/google/android/gms/internal/ads/zzazi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg/fpf;->d:Lcom/google/android/gms/internal/ads/zzazi;

    iget-object v1, p0, Lg/fpf;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "(function() { return  {text:document.body.innerText}})();"

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
