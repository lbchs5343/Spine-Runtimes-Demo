.class public final Lg/aqc;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;Lg/cwg;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/aqc;->c:I

    iput-object p1, p0, Lg/aqc;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/aqc;->d:Ljava/util/Timer;

    iput-object p3, p0, Lg/aqc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnh;Lcom/google/android/gms/internal/ads/zzcfz;Ljava/util/Timer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/aqc;->c:I

    iput-object p2, p0, Lg/aqc;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/aqc;->d:Ljava/util/Timer;

    iput-object p1, p0, Lg/aqc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/aqc;->c:I

    iget-object v1, p0, Lg/aqc;->d:Ljava/util/Timer;

    iget-object v2, p0, Lg/aqc;->b:Ljava/lang/Object;

    iget-object v3, p0, Lg/aqc;->a:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfnh;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfnh;->c:Landroid/webkit/WebView;

    sget v3, Lg/bdj;->a:I

    sget-object v3, Lg/gvy;->a:Lg/fpc;

    invoke-virtual {v3}, Lg/fnk;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lg/bdj;->c(Landroid/webkit/WebView;)Lg/evf;

    move-result-object v0

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    const-string v3, "omidJsSessionService"

    invoke-interface {v0, v3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfz;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfz;->zza(Z)V

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    check-cast v2, Lg/cwg;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/cwg;->zzb()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
