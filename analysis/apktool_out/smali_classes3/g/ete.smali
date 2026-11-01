.class public final Lg/ete;
.super Lcom/google/android/gms/internal/ads/zzbhb;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbic;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbic;)V
    .locals 0

    iput-object p1, p0, Lg/ete;->a:Lcom/google/android/gms/internal/ads/zzbic;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbgs;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/ete;->a:Lcom/google/android/gms/internal/ads/zzbic;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbic;->b:Lg/ehx;

    if-nez v1, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbic;->c:Lcom/google/android/gms/internal/ads/zzbgt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbgt;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbgt;-><init>(Lcom/google/android/gms/internal/ads/zzbgs;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbic;->c:Lcom/google/android/gms/internal/ads/zzbgt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    check-cast v1, Lg/cca;

    iget-object p1, v1, Lg/cca;->f:Ljava/lang/Object;

    check-cast p1, Lg/ccj;

    iget-object v0, v1, Lg/cca;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {p1, v0, v2, p2}, Lg/ccj;->zze(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/internal/ads/zzbgt;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
