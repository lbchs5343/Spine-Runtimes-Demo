.class public final Lcom/google/android/gms/internal/ads/zzbno;
.super Lcom/google/android/gms/internal/ads/zzcav;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbnt;

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnt;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcav;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbno;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbno;->a:Lcom/google/android/gms/internal/ads/zzbnt;

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 4

    const-string v0, "release: Trying to acquire lock"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbno;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "release: Lock acquired"

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbno;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "release: Lock already released"

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbno;->b:Z

    new-instance v1, Lg/cuf;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lg/cuf;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcar;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcar;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcav;->zzj(Lcom/google/android/gms/internal/ads/zzcas;Lcom/google/android/gms/internal/ads/zzcaq;)V

    new-instance v1, Lg/fc;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lg/evf;

    const/16 v3, 0x19

    invoke-direct {v2, v3, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcav;->zzj(Lcom/google/android/gms/internal/ads/zzcas;Lcom/google/android/gms/internal/ads/zzcaq;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "release: Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
