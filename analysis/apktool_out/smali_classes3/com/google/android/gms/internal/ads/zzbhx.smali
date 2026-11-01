.class public final Lcom/google/android/gms/internal/ads/zzbhx;
.super Lg/cgo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lg/cgo;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbgf;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgf;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbgc;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lg/bpp;

    invoke-direct {v2, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lg/bpp;

    invoke-direct {p2, p3}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lg/cgo;->ai(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgf;

    const p3, 0xe8813d8

    invoke-interface {p1, v1, v2, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgf;->zze(Lg/bjq;Lg/bjq;Lg/bjq;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzbgc;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbgc;

    return-object p2

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbga;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lg/grc; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-object v0
.end method
