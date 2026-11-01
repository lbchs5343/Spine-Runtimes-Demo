.class public final Lg/ha;
.super Lcom/google/android/gms/internal/ads/zzbls;
.source "SourceFile"


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfka;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzcao;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/google/android/gms/internal/ads/zzdup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdup;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcao;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfka;)V
    .locals 0

    iput-object p2, p0, Lg/ha;->d:Ljava/lang/Object;

    iput-object p4, p0, Lg/ha;->e:Ljava/lang/String;

    iput-wide p5, p0, Lg/ha;->a:J

    iput-object p7, p0, Lg/ha;->b:Lcom/google/android/gms/internal/ads/zzfka;

    iput-object p3, p0, Lg/ha;->c:Lcom/google/android/gms/internal/ads/zzcao;

    iput-object p1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbls;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lg/ha;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v2, p0, Lg/ha;->e:Ljava/lang/String;

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->v:Lg/czz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lg/ha;->a:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, p1, v3}, Lcom/google/android/gms/internal/ads/zzdup;->s(Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdup;->f:Lcom/google/android/gms/internal/ads/zzdsw;

    iget-object v2, p0, Lg/ha;->e:Ljava/lang/String;

    const-string v4, "error"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdsw;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdup;->c:Lcom/google/android/gms/internal/ads/zzddk;

    iget-object v2, p0, Lg/ha;->e:Ljava/lang/String;

    const-string v4, "error"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzddk;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdup;->j:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v2, p0, Lg/ha;->b:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    iget-object p1, p0, Lg/ha;->c:Lcom/google/android/gms/internal/ads/zzcao;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf()V
    .locals 8

    iget-object v0, p0, Lg/ha;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v2, p0, Lg/ha;->e:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->v:Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lg/ha;->a:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzdup;->s(Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdup;->f:Lcom/google/android/gms/internal/ads/zzdsw;

    iget-object v2, p0, Lg/ha;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzd(Ljava/lang/String;)V

    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdup;->c:Lcom/google/android/gms/internal/ads/zzddk;

    iget-object v2, p0, Lg/ha;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzddk;->zzd(Ljava/lang/String;)V

    iget-object v1, p0, Lg/ha;->f:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdup;->j:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v2, p0, Lg/ha;->b:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    iget-object v1, p0, Lg/ha;->c:Lcom/google/android/gms/internal/ads/zzcao;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
