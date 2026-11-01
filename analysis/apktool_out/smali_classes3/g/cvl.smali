.class public final Lg/cvl;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lg/ph;

.field public final synthetic c:Lg/dii;

.field public final synthetic d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lg/ph;Lg/dii;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cvl;->c:Lg/dii;

    iput-object p3, p0, Lg/cvl;->d:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lg/cvl;->a:Landroid/content/Context;

    iput-object p1, p0, Lg/cvl;->b:Lg/ph;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/cvl;->a:Landroid/content/Context;

    const-string v1, "native_ad_view_delegate"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lg/fsm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>()V

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/cvl;->c:Lg/dii;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lg/bpp;

    iget-object v2, p0, Lg/cvl;->d:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Lg/drf;->b(Lg/bjq;Lg/bjq;)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/cvl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkp:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lg/cvl;->d:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lg/cvl;->c:Lg/dii;

    iget-object v4, p0, Lg/cvl;->b:Lg/ph;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lg/bpp;

    invoke-direct {v5, v3}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lg/bpp;

    invoke-direct {v3, v2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v6

    invoke-virtual {v6, v2}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbge;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbgf;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const v6, 0xe8813d8

    :try_start_2
    invoke-interface {v2, v1, v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzbgf;->zze(Lg/bjq;Lg/bjq;Lg/bjq;I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbgb;->zzdA(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbgc;

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

    new-instance v2, Lg/eof;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lg/eof; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v0

    iput-object v0, v4, Lg/ph;->d:Ljava/lang/Object;

    const-string v2, "ClientApiBroker.createNativeAdViewDelegate"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, v4, Lg/ph;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbhx;

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbhx;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object v0

    return-object v0
.end method
