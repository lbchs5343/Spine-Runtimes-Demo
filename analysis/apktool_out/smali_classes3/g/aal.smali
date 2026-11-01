.class public final Lg/aal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bjb;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbbh;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbax;

.field public final synthetic c:Lg/cok;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbax;Lg/cok;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/aal;->b:Lcom/google/android/gms/internal/ads/zzbax;

    iput-object p3, p0, Lg/aal;->c:Lg/cok;

    iput-object p1, p0, Lg/aal;->a:Lcom/google/android/gms/internal/ads/zzbbh;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lg/aal;->a:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbh;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/aal;->a:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbbh;->b:Z

    if-eqz v1, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbbh;->b:Z

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbh;->a:Lcom/google/android/gms/internal/ads/zzbaw;

    if-nez v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbbc;-><init>(Lg/aal;Lcom/google/android/gms/internal/ads/zzbaw;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzges;->zza(Ljava/lang/Runnable;)Lg/dcy;

    move-result-object v0

    iget-object v1, p0, Lg/aal;->c:Lg/cok;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbbd;-><init>(Lg/aal;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcao;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
