.class public final Lcom/google/android/gms/internal/ads/zzid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkl;


# instance fields
.field public a:J

.field public final b:J

.field public final c:J

.field public final d:Lcom/google/android/gms/internal/ads/zzys;

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzys;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzys;-><init>(ZI)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzid;->i(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v5, v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzid;->i(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    invoke-static {v7, v1, v8, v3}, Lcom/google/android/gms/internal/ads/zzid;->i(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v5, v8, v6}, Lcom/google/android/gms/internal/ads/zzid;->i(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {v7, v7, v1, v8}, Lcom/google/android/gms/internal/ads/zzid;->i(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {v2, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzid;->i(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->d:Lcom/google/android/gms/internal/ads/zzys;

    const-wide/32 v0, 0xc350

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->f:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->g:J

    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->b:J

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->c:J

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->e:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->h:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->a:J

    return-void
.end method

.method public static i(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, " cannot be less than "

    invoke-static {p2, v0, p3}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzdb;->zze(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final j()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fua;

    iget v2, v2, Lg/fua;->b:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzoj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->e:J

    return-wide v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzoj;)V
    .locals 9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->a:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :cond_1
    :goto_0
    const-string v2, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzg(ZLjava/lang/Object;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->a:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lg/fua;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fua;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0xc80000

    iput v0, p1, Lg/fua;->b:I

    iput-boolean v6, p1, Lg/fua;->a:Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzoj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->d:Lcom/google/android/gms/internal/ads/zzys;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzys;->zze()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzid;->j()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzys;->zzf(I)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->a:J

    :cond_2
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzoj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->d:Lcom/google/android/gms/internal/ads/zzys;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzys;->zze()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzid;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzys;->zzf(I)V

    :cond_1
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;[Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzwr;[Lcom/google/android/gms/internal/ads/zzyd;)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzid;->h:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fua;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    const/4 p5, 0x0

    :goto_0
    array-length v0, p4

    const/4 v0, 0x2

    const/high16 v1, 0xc80000

    if-ge p3, v0, :cond_2

    aget-object v0, p6, p3

    if-eqz v0, :cond_1

    aget-object v0, p4, p3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzb()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/high16 v1, 0x7d00000

    :cond_0
    add-int/2addr p5, v1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p1, Lg/fua;->b:I

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzid;->d:Lcom/google/android/gms/internal/ads/zzys;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzys;->zze()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzid;->j()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzys;->zzf(I)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzoj;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzkk;)Z
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->h:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkk;->zza:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fua;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->d:Lcom/google/android/gms/internal/ads/zzys;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzys;->zza()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzid;->j()I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzkk;->zzc:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzid;->g:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzid;->f:J

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzq(JF)J

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_0
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzkk;->zzb:J

    const-wide/32 v9, 0x7a120

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const/4 p1, 0x0

    cmp-long v11, v3, v7

    if-gez v11, :cond_2

    if-ge v1, v2, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, v0, Lg/fua;->a:Z

    if-nez p1, :cond_4

    cmp-long p1, v3, v9

    if-gez p1, :cond_4

    const-string p1, "DefaultLoadControl"

    const-string v1, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    if-lt v1, v2, :cond_4

    :cond_3
    iput-boolean p1, v0, Lg/fua;->a:Z

    :cond_4
    :goto_0
    iget-boolean p1, v0, Lg/fua;->a:Z

    return p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzkk;)Z
    .locals 9

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzkk;->zzd:Z

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzkk;->zzb:J

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzkk;->zzc:F

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzr(JF)J

    move-result-wide v1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzid;->c:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzid;->b:J

    :goto_0
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzkk;->zze:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzid;->d:Lcom/google/android/gms/internal/ads/zzys;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzys;->zza()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzid;->j()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzys;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->d:Lcom/google/android/gms/internal/ads/zzys;

    return-object v0
.end method
