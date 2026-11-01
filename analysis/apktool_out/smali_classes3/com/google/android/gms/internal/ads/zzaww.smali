.class public final Lcom/google/android/gms/internal/ads/zzaww;
.super Lcom/google/android/gms/internal/ads/zzaxt;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasf;JII)V
    .locals 7

    const-string v3, "SO84xWj1xZpVST0NHeOw+QMypPAPo6e/MVLMJbQH2M4="

    const/16 v6, 0x19

    const-string v2, "TJ62ujRRBjJb9/NqrT2Pn0c6KFZY0SF6EjGcQMXtIVccZGktu9G9qu0AxWBd9HPE"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxt;-><init>(Lcom/google/android/gms/internal/ads/zzawf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasf;II)V

    iput-wide p5, v0, Lcom/google/android/gms/internal/ads/zzaww;->a:J

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxt;->i:Lcom/google/android/gms/internal/ads/zzasf;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxt;->i:Lcom/google/android/gms/internal/ads/zzasf;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzasf;->zzt(J)Lcom/google/android/gms/internal/ads/zzasf;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaww;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaxt;->i:Lcom/google/android/gms/internal/ads/zzasf;

    sub-long/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzasf;->zzT(J)Lcom/google/android/gms/internal/ads/zzasf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->i:Lcom/google/android/gms/internal/ads/zzasf;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaww;->a:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzasf;->zzU(J)Lcom/google/android/gms/internal/ads/zzasf;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
