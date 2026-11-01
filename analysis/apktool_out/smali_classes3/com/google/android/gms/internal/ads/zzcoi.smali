.class public final Lcom/google/android/gms/internal/ads/zzcoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaym;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzcnx;

.field public final b:Lcom/google/android/gms/internal/ads/zzcnu;

.field public final c:Lg/cvb;

.field public d:Z

.field public e:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final f:Ljava/util/concurrent/Executor;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcnu;Lg/cvb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->g:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcnx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->a:Lcom/google/android/gms/internal/ads/zzcnx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->f:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoi;->b:Lcom/google/android/gms/internal/ads/zzcnu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoi;->c:Lg/cvb;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->b:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->a:Lcom/google/android/gms/internal/ads/zzcnx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Lcom/google/android/gms/internal/ads/zzcnx;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->e:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzcoi;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->d:Z

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->d:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcoi;->h()V

    return-void
.end method

.method public final zzdp(Lcom/google/android/gms/internal/ads/zzayl;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzayl;->zzj:Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->a:Lcom/google/android/gms/internal/ads/zzcnx;

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcnx;->zza:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoi;->c:Lg/cvb;

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcnx;->zzd:J

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzcnx;->zzf:Lcom/google/android/gms/internal/ads/zzayl;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->d:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcoi;->h()V

    :cond_1
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->g:Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoi;->e:Lcom/google/android/gms/internal/ads/zzcfk;

    return-void
.end method
