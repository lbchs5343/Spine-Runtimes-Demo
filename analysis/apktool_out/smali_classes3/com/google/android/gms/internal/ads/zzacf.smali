.class public Lcom/google/android/gms/internal/ads/zzacf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacf;->c:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzacf;->e:J

    const/4 p7, -0x1

    if-ne p6, p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzacf;->f:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzacf;->b:I

    const-wide/16 p6, -0x1

    cmp-long v0, p1, p6

    if-nez v0, :cond_1

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzacf;->a:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacf;->d:J

    return-void

    :cond_1
    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacf;->a:J

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 p3, 0x7a1200

    mul-long p1, p1, p3

    int-to-long p3, p5

    div-long/2addr p1, p3

    goto :goto_0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacf;->d:J

    return-wide v0
.end method

.method public final zzb(J)J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacf;->e:J

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7a1200

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacf;->b:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public zze(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzacf;->zzb(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 14

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacf;->e:J

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzacf;->a:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzacf;->b:I

    int-to-long v9, v9

    mul-long v9, v9, p1

    const-wide/32 v11, 0x7a1200

    div-long/2addr v9, v11

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzacf;->f:I

    int-to-long v12, v11

    div-long/2addr v9, v12

    mul-long v9, v9, v12

    if-eqz v8, :cond_0

    sub-long v12, v4, v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_0
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzb(J)J

    move-result-wide v2

    new-instance v8, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v8, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    cmp-long v9, v4, v6

    if-eqz v9, :cond_2

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    int-to-long v2, v11

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacf;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzb(J)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v0, v8, v4}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v0, v8, v8}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v0

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzado;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    invoke-direct {v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v4
.end method

.method public final zzh()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacf;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
