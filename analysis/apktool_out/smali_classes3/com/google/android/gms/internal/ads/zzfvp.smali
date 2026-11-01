.class public final synthetic Lcom/google/android/gms/internal/ads/zzfvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fwu;


# direct methods
.method public synthetic constructor <init>(Lg/fwu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zza:Lg/fwu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvp;->zza:Lg/fwu;

    iget-object v1, v0, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/fwu;->i:Lcom/google/android/gms/internal/ads/zzfvv;

    const-string v2, "Unbind from service."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfvv;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lg/fwu;->g:Landroid/content/Context;

    iget-object v2, v0, Lg/fwu;->f:Lg/crk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, v0, Lg/fwu;->e:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    iput-object v1, v0, Lg/fwu;->f:Lg/crk;

    iget-object v1, v0, Lg/fwu;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lg/fwu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
