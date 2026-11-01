.class public final Lcom/google/android/gms/internal/ads/zzdwh;
.super Lcom/google/android/gms/internal/ads/zzayd;
.source "SourceFile"

# interfaces
.implements Lg/bhk;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lcom/google/android/gms/internal/ads/zzdvv;

.field public final c:Lcom/google/android/gms/internal/ads/zzges;

.field public final d:Ljava/util/HashMap;

.field public final e:Landroid/content/Context;

.field public f:Lcom/google/android/gms/internal/ads/zzdvk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lcom/google/android/gms/internal/ads/zzdvv;Lcom/google/android/gms/internal/ads/zzges;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IOutOfContextTester"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwh;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwh;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwh;->b:Lcom/google/android/gms/internal/ads/zzdvv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwh;->c:Lcom/google/android/gms/internal/ads/zzges;

    return-void
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lg/bfi;

    if-eqz v0, :cond_0

    check-cast p0, Lg/bfi;

    iget-object p0, p0, Lg/bfi;->a:Lg/bof;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lg/ls;

    if-eqz v0, :cond_1

    check-cast p0, Lg/ls;

    invoke-virtual {p0}, Lg/ls;->getResponseInfo()Lg/bof;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lg/eti;

    if-eqz v0, :cond_2

    check-cast p0, Lg/eti;

    invoke-virtual {p0}, Lg/eti;->getResponseInfo()Lg/bof;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lg/dth;

    if-eqz v0, :cond_3

    check-cast p0, Lg/dth;

    invoke-virtual {p0}, Lg/dth;->getResponseInfo()Lg/bof;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lg/eks;

    if-eqz v0, :cond_4

    check-cast p0, Lg/eks;

    invoke-virtual {p0}, Lg/eks;->getResponseInfo()Lg/bof;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lg/aia;

    if-eqz v0, :cond_5

    check-cast p0, Lg/aia;

    invoke-virtual {p0}, Lg/cgp;->getResponseInfo()Lg/bof;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lg/bof;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lg/bof;->a:Lg/gcq;

    if-eqz p0, :cond_7

    :try_start_0
    invoke-interface {p0}, Lg/gcq;->zzh()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_7
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static h()Lg/awn;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request_origin"

    const-string v2, "inspector_ooct"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lg/dcq;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg/dcq;-><init>(I)V

    invoke-virtual {v1, v0}, Lg/dcq;->h(Landroid/os/Bundle;)V

    new-instance v0, Lg/awn;

    invoke-direct {v0, v1}, Lg/awn;-><init>(Lg/dcq;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdwh;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwh;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->f:Lcom/google/android/gms/internal/ads/zzdvk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvk;->zzb(Ljava/lang/String;)Lg/dcy;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lg/akj;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p2, v2}, Lg/akj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwh;->c:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsOutOfContext"

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwh;->b:Lcom/google/android/gms/internal/ads/zzdvv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdvv;->zzk(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->e:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method public final l(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, v1, v2}, Lg/bhk;->zze(Ljava/lang/String;Lg/bjq;Lg/bjq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->f:Lcom/google/android/gms/internal/ads/zzdvk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvk;->zzb(Ljava/lang/String;)Lg/dcy;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lg/gtb;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p2, v2}, Lg/gtb;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwh;->c:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsShown"

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwh;->b:Lcom/google/android/gms/internal/ads/zzdvv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdvv;->zzk(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zze(Ljava/lang/String;Lg/bjq;Lg/bjq;)V
    .locals 2

    invoke-static {p2}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p3}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of p1, v1, Lg/aia;

    if-eqz p1, :cond_2

    check-cast v1, Lg/aia;

    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdwi;->zza(Landroid/content/Context;Landroid/view/ViewGroup;Lg/aia;)V

    return-void

    :cond_2
    instance-of p1, v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz p1, :cond_3

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdwi;->zzb(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzdvk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwh;->f:Lcom/google/android/gms/internal/ads/zzdvk;

    return-void
.end method

.method public final declared-synchronized zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "BANNER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :sswitch_1
    const-string v0, "REWARDED_INTERSTITIAL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "REWARDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "APP_OPEN_AD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "INTERSTITIAL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "NATIVE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v6, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    if-eq p2, v4, :cond_2

    if-eq p2, v5, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->k()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->h()Lg/awn;

    move-result-object v0

    new-instance v1, Lg/wz;

    invoke-direct {v1, p0, p1, p3}, Lg/wz;-><init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1, v0, v1}, Lg/eks;->load(Landroid/content/Context;Ljava/lang/String;Lg/awn;Lg/gsq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->k()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->h()Lg/awn;

    move-result-object v0

    new-instance v1, Lg/etf;

    invoke-direct {v1, p0, p1, p3}, Lg/etf;-><init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1, v0, v1}, Lg/dth;->load(Landroid/content/Context;Ljava/lang/String;Lg/awn;Lg/byk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->k()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context cannot be null"

    invoke-static {p2, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->e:Lg/ph;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/ed;

    invoke-direct {v2, v0, p2, p1, v1}, Lg/ed;-><init>(Lg/ph;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V

    invoke-virtual {v2, p2, v3}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hav;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzbsv;-><init>(Lg/qu;)V

    invoke-interface {v0, p1}, Lg/hav;->zzk(Lcom/google/android/gms/internal/ads/zzbhm;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_5
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_2
    new-instance p1, Lg/cca;

    invoke-direct {p1, p0, p3}, Lg/cca;-><init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance p3, Lg/fnu;

    invoke-direct {p3, p1}, Lg/fnu;-><init>(Lg/nl;)V

    invoke-interface {v0, p3}, Lg/hav;->zzl(Lg/ejp;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_7
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    new-instance p1, Lg/bya;

    invoke-interface {v0}, Lg/hav;->zze()Lg/cpu;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lg/bya;-><init>(Landroid/content/Context;Lg/cpu;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_9
    const-string p3, "Failed to build AdLoader."

    invoke-static {p3, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lg/gkf;

    invoke-direct {p1}, Lg/zh;-><init>()V

    new-instance p3, Lg/bya;

    new-instance v0, Lg/afs;

    invoke-direct {v0, p1}, Lg/afs;-><init>(Lg/gkf;)V

    invoke-direct {p3, p2, v0}, Lg/bya;-><init>(Landroid/content/Context;Lg/cpu;)V

    move-object p1, p3

    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->h()Lg/awn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/bya;->c(Lg/awn;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->k()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->h()Lg/awn;

    move-result-object v0

    new-instance v1, Lg/eju;

    invoke-direct {v1, p0, p1, p3}, Lg/eju;-><init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1, v0, v1}, Lg/eti;->load(Landroid/content/Context;Ljava/lang/String;Lg/awn;Lg/gsg;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_b
    new-instance p2, Lg/aia;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->k()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lg/aia;-><init>(Landroid/content/Context;)V

    sget-object v0, Lg/gin;->a:Lg/gin;

    invoke-virtual {p2, v0}, Lg/cgp;->setAdSize(Lg/gin;)V

    invoke-virtual {p2, p1}, Lg/cgp;->setAdUnitId(Ljava/lang/String;)V

    new-instance v0, Lg/aaj;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/aaj;-><init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Lg/aia;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lg/cgp;->setAdListener(Lg/nl;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->h()Lg/awn;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/cgp;->b(Lg/awn;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->k()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwh;->h()Lg/awn;

    move-result-object v0

    new-instance v1, Lg/awb;

    invoke-direct {v1, p0, p1, p3}, Lg/awb;-><init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1, v0, v6, v1}, Lg/ls;->load(Landroid/content/Context;Ljava/lang/String;Lg/awn;ILg/fle;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_5
        -0x51d5b0d4 -> :sswitch_4
        -0x1987ba06 -> :sswitch_3
        0x205e3c0e -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method

.method public final declared-synchronized zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->b:Lcom/google/android/gms/internal/ads/zzdvv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvv;->zzg()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwh;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zziY:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v1, Lg/ls;

    if-nez v4, :cond_1

    instance-of v4, v1, Lg/eti;

    if-nez v4, :cond_1

    instance-of v4, v1, Lg/dth;

    if-nez v4, :cond_1

    instance-of v4, v1, Lg/eks;

    if-eqz v4, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdwh;->d:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwh;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/google/android/gms/internal/ads/zzdwh;->m(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p2, v1, Lg/ls;

    if-eqz p2, :cond_3

    check-cast v1, Lg/ls;

    invoke-virtual {v1, v0}, Lg/ls;->show(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    instance-of p2, v1, Lg/eti;

    if-eqz p2, :cond_4

    check-cast v1, Lg/eti;

    invoke-virtual {v1, v0}, Lg/eti;->show(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    instance-of p2, v1, Lg/dth;

    if-eqz p2, :cond_5

    check-cast v1, Lg/dth;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdvx;-><init>()V

    invoke-virtual {v1, v0, p1}, Lg/dth;->show(Landroid/app/Activity;Lg/fqz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    instance-of p2, v1, Lg/eks;

    if-eqz p2, :cond_6

    check-cast v1, Lg/eks;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdvy;-><init>()V

    invoke-virtual {v1, v0, p1}, Lg/eks;->show(Landroid/app/Activity;Lg/fqz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_4
    iget-object p2, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    instance-of p2, v1, Lg/aia;

    if-nez p2, :cond_7

    instance-of p2, v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz p2, :cond_8

    :cond_7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.OutOfContextTestingActivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adUnit"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->z:Lg/esy;

    invoke-static {v0, p2}, Lg/esy;->ad(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method
