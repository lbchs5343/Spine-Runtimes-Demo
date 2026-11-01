.class public final synthetic Lcom/google/android/gms/internal/ads/zzckj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzckp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckj;->zza:Lcom/google/android/gms/internal/ads/zzckp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckj;->zza:Lcom/google/android/gms/internal/ads/zzckp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v2, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v2

    check-cast v2, Lg/cmo;

    invoke-virtual {v2}, Lg/cmo;->am()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v2

    check-cast v2, Lg/cmo;

    invoke-virtual {v2}, Lg/cmo;->aj()V

    iget-object v3, v2, Lg/cmo;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lg/cmo;->a:Ljava/lang/String;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzckp;->k:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzckp;->n:Lg/akx;

    iget-object v4, v1, Lg/ti;->g:Lg/bkm;

    iget-object v0, v0, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v4, v3, v2, v0}, Lg/bkm;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v0

    const/4 v2, 0x0

    check-cast v0, Lg/cmo;

    invoke-virtual {v0, v2}, Lg/cmo;->al(Z)V

    iget-object v0, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v0

    const-string v1, ""

    check-cast v0, Lg/cmo;

    invoke-virtual {v0, v1}, Lg/cmo;->bc(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
