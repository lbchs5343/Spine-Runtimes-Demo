.class public final Lcom/google/android/gms/internal/ads/zzia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public final f:J

.field public g:J

.field public h:F

.field public final i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->f:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->i:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->k:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->c:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->g:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->l:J

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzia;->h:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->j:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->e:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->b:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->d:J

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->c:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->e:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->e:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzia;->b:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzia;->d:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzia;->j:J

    return-void
.end method

.method public final zza(JJ)F
    .locals 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->k:J

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_8

    sub-long p3, p1, p3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->b:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->b:J

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->d:J

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    long-to-float v1, p3

    const v5, 0x3f7fbe77    # 0.999f

    mul-float v0, v0, v5

    const v6, 0x3a831200    # 9.999871E-4f

    mul-float v1, v1, v6

    add-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->b:J

    sub-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->d:J

    long-to-float v0, v0

    long-to-float p3, p3

    mul-float v0, v0, v5

    mul-float p3, p3, v6

    add-float/2addr p3, v0

    float-to-long p3, p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->d:J

    :goto_0
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->j:J

    const-wide/16 v0, 0x3e8

    cmp-long v5, p3, v3

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzia;->j:J

    sub-long/2addr p3, v5

    cmp-long v5, p3, v0

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzia;->h:F

    return p1

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->j:J

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->b:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzia;->d:J

    const-wide/16 v7, 0x3

    mul-long v5, v5, v7

    add-long/2addr v5, p3

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    const v7, 0x33d6bf95    # 1.0E-7f

    const/high16 v8, -0x40800000    # -1.0f

    cmp-long v9, p3, v5

    if-lez v9, :cond_5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide p3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzia;->h:F

    add-float/2addr v0, v8

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzia;->e:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    long-to-float p3, p3

    const p4, 0x3cf5c280    # 0.029999971f

    mul-float p4, p4, p3

    mul-float v0, v0, p3

    float-to-long v0, v0

    float-to-long p3, p4

    add-long/2addr v0, p3

    sub-long/2addr v8, v0

    const/4 p3, 0x3

    new-array p4, p3, [J

    const/4 v0, 0x0

    aput-wide v5, p4, v0

    const/4 v1, 0x1

    aput-wide v3, p4, v1

    const/4 v3, 0x2

    aput-wide v8, p4, v3

    aget-wide v3, p4, v0

    :goto_2
    if-ge v1, p3, :cond_4

    aget-wide v5, p4, v1

    cmp-long v0, v5, v3

    if-gtz v0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v3, v5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    goto :goto_4

    :cond_5
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzia;->h:F

    add-float/2addr p3, v8

    const/4 p4, 0x0

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    div-float/2addr p3, v7

    float-to-long p3, p3

    sub-long p3, p1, p3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->l:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_6

    cmp-long v3, p3, v0

    if-lez v3, :cond_6

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    move-wide v3, v0

    goto :goto_4

    :cond_6
    move-wide v3, p3

    :goto_4
    sub-long/2addr p1, v3

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzia;->f:J

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v3, v0, p3

    if-gez v3, :cond_7

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzia;->h:F

    return v2

    :cond_7
    long-to-float p1, p1

    mul-float p1, p1, v7

    add-float/2addr p1, v2

    const p2, 0x3f83d70a    # 1.03f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const p2, 0x3f7851ec    # 0.97f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzia;->h:F

    return p1

    :cond_8
    return v2
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    return-wide v0
.end method

.method public final zzc()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzia;->a:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzia;->j:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaq;)V
    .locals 4

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaq;->zza:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzia;->k:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzia;->g:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzia;->l:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzia;->m()V

    return-void
.end method

.method public final zze(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzia;->c:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzia;->m()V

    return-void
.end method
