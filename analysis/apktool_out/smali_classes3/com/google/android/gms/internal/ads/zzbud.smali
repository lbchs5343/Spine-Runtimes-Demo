.class public final Lcom/google/android/gms/internal/ads/zzbud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/google/android/gms/internal/ads/zzbzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuc;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuc;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbud;->a:Landroid/view/View;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbuc;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbtx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbud;->b:Lcom/google/android/gms/internal/ads/zzbzh;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbue;

    new-instance v3, Lg/bpp;

    invoke-direct {v3, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lg/bpp;

    invoke-direct {v0, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzbue;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzh;->zzg(Lcom/google/android/gms/internal/ads/zzbue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to call remote method."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbud;->b:Lcom/google/android/gms/internal/ads/zzbzh;

    if-nez v0, :cond_1

    const-string v1, "Failed to get internal reporting info generator in recordClick."

    invoke-static {v1}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbud;->a:Landroid/view/View;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lg/cue;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p1}, Lg/cue;-><init>(ILjava/util/List;)V

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzh(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "RemoteException recording click: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "No click urls were passed to recordClick"

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbud;->b:Lcom/google/android/gms/internal/ads/zzbzh;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbud;->a:Landroid/view/View;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lg/cue;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lg/cue;-><init>(ILjava/util/List;)V

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzi(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "RemoteException recording impression urls: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Failed to get internal reporting info generator from recordImpression."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "No impression urls were passed to recordImpression"

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbud;->b:Lcom/google/android/gms/internal/ads/zzbzh;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lg/bpp;

    invoke-direct {v1, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzk(Lg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to call remote method."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Failed to get internal reporting info generator."

    invoke-static {p1}, Lg/agd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd(Landroid/net/Uri;Lg/ggt;)V
    .locals 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbud;->b:Lcom/google/android/gms/internal/ads/zzbzh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbud;->a:Landroid/view/View;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lg/ecj;

    invoke-direct {p1, v1}, Lg/ecj;-><init>(I)V

    invoke-interface {p2, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzl(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Internal error: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze(Ljava/util/List;Lg/ead;)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbud;->b:Lcom/google/android/gms/internal/ads/zzbzh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbud;->a:Landroid/view/View;

    new-instance v1, Lg/bpp;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lg/ecj;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lg/ecj;-><init>(I)V

    invoke-interface {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbzh;->zzm(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Internal error: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method
