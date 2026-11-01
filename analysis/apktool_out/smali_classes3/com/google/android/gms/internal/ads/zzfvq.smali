.class public final synthetic Lcom/google/android/gms/internal/ads/zzfvq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/crk;

.field public final synthetic zzb:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lg/crk;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvq;->zza:Lg/crk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfvq;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvq;->zzb:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftt;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvq;->zza:Lg/crk;

    iget-object v2, v1, Lg/crk;->a:Lg/fwu;

    iput-object v0, v2, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    iget-object v0, v2, Lg/fwu;->i:Lcom/google/android/gms/internal/ads/zzfvv;

    const-string v2, "linkToDeath"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzfvv;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v0, v1, Lg/crk;->a:Lg/fwu;

    iget-object v0, v0, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, v1, Lg/crk;->a:Lg/fwu;

    iget-object v2, v2, Lg/fwu;->a:Lcom/google/android/gms/internal/ads/zzfvm;

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v1, Lg/crk;->a:Lg/fwu;

    iget-object v2, v2, Lg/fwu;->i:Lcom/google/android/gms/internal/ads/zzfvv;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "linkToDeath failed"

    invoke-virtual {v2, v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzfvv;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    iget-object v0, v1, Lg/crk;->a:Lg/fwu;

    iput-boolean v3, v0, Lg/fwu;->e:Z

    iget-object v0, v0, Lg/fwu;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v2, v1, Lg/crk;->a:Lg/fwu;

    iget-object v2, v2, Lg/fwu;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    iget-object v1, v1, Lg/crk;->a:Lg/fwu;

    iget-object v1, v1, Lg/fwu;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
