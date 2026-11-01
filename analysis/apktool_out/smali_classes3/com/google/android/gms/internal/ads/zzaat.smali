.class public final Lcom/google/android/gms/internal/ads/zzaat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:J

.field public c:J

.field public d:J

.field public e:Z

.field public f:J

.field public g:Landroid/view/Surface;

.field public final h:Lg/bvi;

.field public i:F

.field public j:J

.field public k:J

.field public l:F

.field public final m:Lg/ccl;

.field public n:I

.field public o:J

.field public final p:Lg/ny;

.field public q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/bvi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/dht;

    invoke-direct {v1}, Lg/dht;-><init>()V

    iput-object v1, v0, Lg/bvi;->a:Ljava/lang/Object;

    new-instance v1, Lg/dht;

    invoke-direct {v1}, Lg/dht;-><init>()V

    iput-object v1, v0, Lg/bvi;->b:Ljava/lang/Object;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lg/bvi;->d:J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->h:Lg/bvi;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, "display"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_0

    new-instance v3, Lg/ccl;

    invoke-direct {v3, p0, p1}, Lg/ccl;-><init>(Lcom/google/android/gms/internal/ads/zzaat;Landroid/hardware/display/DisplayManager;)V

    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaat;->m:Lg/ccl;

    if-eqz v3, :cond_2

    sget-object v0, Lg/ny;->a:Lg/ny;

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->p:Lg/ny;

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->f:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->i:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->l:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->n:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/google/android/gms/internal/ads/zzaat;Landroid/view/Display;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->f:J

    return-void

    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->f:J

    return-void
.end method


# virtual methods
.method public final s(Z)V
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->g:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->n:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->q:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->l:F

    mul-float v2, v2, v1

    :cond_1
    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_3

    :cond_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:F

    invoke-static {v0, v2}, Lg/ebn;->a(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->g:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->n:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->a:F

    invoke-static {v0, v2}, Lg/ebn;->a(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 9

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->g:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->h:Lg/bvi;

    iget-object v2, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v2, Lg/dht;

    invoke-virtual {v2}, Lg/dht;->k()Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_3

    iget-object v2, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v2, Lg/dht;

    invoke-virtual {v2}, Lg/dht;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v2, Lg/dht;

    iget-wide v4, v2, Lg/dht;->c:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v6, v2, Lg/dht;->e:J

    div-long/2addr v6, v4

    :goto_0
    long-to-double v4, v6

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v4

    double-to-float v2, v6

    goto :goto_1

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->i:F

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaat;->q:F

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_8

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_6

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_6

    iget-object v1, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1}, Lg/dht;->k()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    iget-object v1, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1}, Lg/dht;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v0, Lg/dht;

    iget-wide v0, v0, Lg/dht;->e:J

    goto :goto_2

    :cond_4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-wide v4, 0x12a05f200L

    cmp-long v6, v0, v4

    if-ltz v6, :cond_5

    const v3, 0x3ca3d70a    # 0.02f

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->q:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_8

    goto :goto_3

    :cond_6
    if-nez v5, :cond_7

    iget v0, v0, Lg/bvi;->e:I

    if-lt v0, v1, :cond_8

    :cond_7
    :goto_3
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->q:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaat;->s(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final zza(J)J
    .locals 14

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->h:Lg/bvi;

    iget-object v0, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v0, Lg/dht;

    invoke-virtual {v0}, Lg/dht;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->h:Lg/bvi;

    iget-object v1, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1}, Lg/dht;->k()Z

    move-result v1

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v0, Lg/dht;

    iget-wide v8, v0, Lg/dht;->c:J

    cmp-long v1, v8, v6

    if-nez v1, :cond_0

    move-wide v0, v6

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lg/dht;->e:J

    div-long/2addr v0, v8

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaat;->o:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzaat;->j:J

    sub-long/2addr v10, v12

    mul-long v10, v10, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->l:F

    long-to-float v1, v10

    div-float/2addr v1, v0

    float-to-long v0, v1

    add-long/2addr v8, v0

    sub-long v0, p1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v10, 0x1312d00

    cmp-long v12, v0, v10

    if-lez v12, :cond_3

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaat;->j:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:J

    :cond_2
    move-wide v8, p1

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:J

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->p:Lg/ny;

    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-wide v0, v0, Lg/ny;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->b:J

    sub-long v4, v8, v0

    div-long/2addr v4, v2

    mul-long v4, v4, v2

    add-long/2addr v4, v0

    cmp-long v0, v8, v4

    if-gtz v0, :cond_5

    sub-long v0, v4, v2

    goto :goto_1

    :cond_5
    add-long/2addr v2, v4

    move-wide v0, v4

    move-wide v4, v2

    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaat;->f:J

    sub-long v6, v4, v8

    sub-long/2addr v8, v0

    cmp-long v10, v6, v8

    if-gez v10, :cond_6

    goto :goto_2

    :cond_6
    move-wide v4, v0

    :goto_2
    sub-long/2addr v4, v2

    return-wide v4

    :cond_7
    :goto_3
    return-wide v8
.end method

.method public final zzc(F)V
    .locals 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->i:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->h:Lg/bvi;

    iget-object v0, p1, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v0, Lg/dht;

    invoke-virtual {v0}, Lg/dht;->j()V

    iget-object v0, p1, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v0, Lg/dht;

    invoke-virtual {v0}, Lg/dht;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/bvi;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p1, Lg/bvi;->d:J

    iput v0, p1, Lg/bvi;->e:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaat;->u()V

    return-void
.end method

.method public final zzd(J)V
    .locals 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->j:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->o:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->h:Lg/bvi;

    iget-object v1, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1, p1, p2}, Lg/dht;->i(J)V

    iget-object v1, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1}, Lg/dht;->k()Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iput-boolean v5, v0, Lg/bvi;->c:Z

    goto :goto_1

    :cond_1
    iget-wide v6, v0, Lg/bvi;->d:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lg/bvi;->c:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    iget-wide v6, v1, Lg/dht;->b:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lg/dht;->h:[Z

    add-long/2addr v6, v2

    const-wide/16 v2, 0xf

    rem-long/2addr v6, v2

    long-to-int v2, v6

    aget-boolean v1, v1, v2

    :goto_0
    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, v0, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1}, Lg/dht;->j()V

    iget-object v1, v0, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    iget-wide v2, v0, Lg/bvi;->d:J

    invoke-virtual {v1, v2, v3}, Lg/dht;->i(J)V

    :cond_4
    iput-boolean v4, v0, Lg/bvi;->c:Z

    iget-object v1, v0, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1, p1, p2}, Lg/dht;->i(J)V

    :cond_5
    :goto_1
    iget-boolean v1, v0, Lg/bvi;->c:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    invoke-virtual {v1}, Lg/dht;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v1, Lg/dht;

    iget-object v2, v0, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v2, Lg/dht;

    iput-object v2, v0, Lg/bvi;->a:Ljava/lang/Object;

    iput-object v1, v0, Lg/bvi;->b:Ljava/lang/Object;

    iput-boolean v5, v0, Lg/bvi;->c:Z

    :cond_6
    iput-wide p1, v0, Lg/bvi;->d:J

    iget-object p1, v0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast p1, Lg/dht;

    invoke-virtual {p1}, Lg/dht;->k()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget p1, v0, Lg/bvi;->e:I

    add-int/lit8 v5, p1, 0x1

    :goto_2
    iput v5, v0, Lg/bvi;->e:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaat;->u()V

    return-void
.end method

.method public final zze(F)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->l:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->j:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->s(Z)V

    return-void
.end method

.method public final zzf()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->j:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:J

    return-void
.end method

.method public final zzg()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->k:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->j:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->d:J

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaat;->m:Lg/ccl;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lg/ccl;->a:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaat;->p:Lg/ny;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lg/ny;->e:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v1, v1, Lg/ccl;->b:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaat;->r(Lcom/google/android/gms/internal/ads/zzaat;Landroid/view/Display;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaat;->s(Z)V

    return-void
.end method

.method public final zzh()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->e:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->m:Lg/ccl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/ccl;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->p:Lg/ny;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/ny;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaat;->t()V

    return-void
.end method

.method public final zzi(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->g:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaat;->t()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->g:Landroid/view/Surface;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->s(Z)V

    return-void
.end method

.method public final zzj(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaat;->n:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaat;->n:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->s(Z)V

    return-void
.end method
