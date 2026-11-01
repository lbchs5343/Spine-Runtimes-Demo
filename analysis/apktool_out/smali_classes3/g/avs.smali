.class public final Lg/avs;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/AdActivity;

.field public final synthetic b:Lg/ph;


# direct methods
.method public constructor <init>(Lg/ph;Lcom/google/android/gms/ads/AdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/avs;->a:Lcom/google/android/gms/ads/AdActivity;

    iput-object p1, p0, Lg/avs;->b:Lg/ph;

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/avs;->a:Lcom/google/android/gms/ads/AdActivity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/avs;->a:Lcom/google/android/gms/ads/AdActivity;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lg/drf;->zzn(Lg/bjq;)Lcom/google/android/gms/internal/ads/zzbtg;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/avs;->a:Lcom/google/android/gms/ads/AdActivity;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkp:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lg/avs;->b:Lg/ph;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbti;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbtj;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzbtj;->zze(Lg/bjq;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbtf;->zzI(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbtg;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v3, Lg/eof;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lg/eof; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v0

    iput-object v0, v2, Lg/ph;->d:Ljava/lang/Object;

    const-string v2, "ClientApiBroker.createAdOverlay"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, v2, Lg/ph;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbtd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbtd;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbtg;

    move-result-object v0

    return-object v0
.end method
