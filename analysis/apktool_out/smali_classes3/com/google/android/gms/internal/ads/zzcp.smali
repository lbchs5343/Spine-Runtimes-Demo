.class public final Lcom/google/android/gms/internal/ads/zzcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcm;


# instance fields
.field public a:Z

.field public b:Ljava/nio/ShortBuffer;

.field public c:Z

.field public d:J

.field public e:Lcom/google/android/gms/internal/ads/zzck;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Lcom/google/android/gms/internal/ads/zzck;

.field public h:I

.field public i:Lcom/google/android/gms/internal/ads/zzck;

.field public j:J

.field public k:Lg/abd;

.field public l:F

.field public m:Ljava/nio/ByteBuffer;

.field public n:F

.field public o:Lcom/google/android/gms/internal/ads/zzck;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->l:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->n:F

    sget-object v0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->e:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->g:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->i:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->o:Lcom/google/android/gms/internal/ads/zzck;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->f:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->h:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcl;
        }
    .end annotation

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzck;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->e:Lcom/google/android/gms/internal/ads/zzck;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzck;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzck;->zzc:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzck;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->g:Lcom/google/android/gms/internal/ads/zzck;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->a:Z

    return-object v2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    const-string v1, "Unhandled input format:"

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzck;)V

    throw v0
.end method

.method public final zzb()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    if-eqz v0, :cond_1

    iget v1, v0, Lg/abd;->p:I

    iget v2, v0, Lg/abd;->n:I

    mul-int v2, v2, v1

    add-int/2addr v2, v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    div-int/2addr v4, v1

    iget v5, v0, Lg/abd;->n:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v4, v1

    iget-object v6, v0, Lg/abd;->f:[S

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v3, v0, Lg/abd;->n:I

    sub-int/2addr v3, v4

    iput v3, v0, Lg/abd;->n:I

    iget-object v0, v0, Lg/abd;->f:[S

    mul-int v3, v3, v1

    invoke-static {v0, v5, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->m:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->f:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->f:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcm;->zza:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->f:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzc()V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcp;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->e:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->i:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->g:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->o:Lcom/google/android/gms/internal/ads/zzck;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->a:Z

    if-eqz v3, :cond_0

    new-instance v4, Lg/abd;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzck;->zzc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcp;->l:F

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzcp;->n:F

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    invoke-direct/range {v4 .. v9}, Lg/abd;-><init>(IIFFI)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    if-eqz v0, :cond_1

    iput v1, v0, Lg/abd;->b:I

    iput v1, v0, Lg/abd;->n:I

    iput v1, v0, Lg/abd;->c:I

    iput v1, v0, Lg/abd;->m:I

    iput v1, v0, Lg/abd;->r:I

    iput v1, v0, Lg/abd;->v:I

    iput v1, v0, Lg/abd;->l:I

    iput v1, v0, Lg/abd;->s:I

    iput v1, v0, Lg/abd;->i:I

    iput v1, v0, Lg/abd;->j:I

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->f:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->j:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->c:Z

    return-void
.end method

.method public final zzd()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    if-eqz v0, :cond_2

    iget v1, v0, Lg/abd;->b:I

    int-to-float v2, v1

    iget v3, v0, Lg/abd;->n:I

    iget v4, v0, Lg/abd;->c:I

    int-to-float v4, v4

    iget v5, v0, Lg/abd;->t:F

    iget v6, v0, Lg/abd;->g:F

    iget v7, v0, Lg/abd;->e:F

    div-float/2addr v5, v7

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    mul-float v6, v6, v7

    div-float/2addr v2, v6

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v3, v2

    iget v2, v0, Lg/abd;->a:I

    add-int/2addr v2, v2

    add-int v4, v2, v1

    iget-object v5, v0, Lg/abd;->q:[S

    invoke-virtual {v0, v5, v1, v4}, Lg/abd;->z([SII)[S

    move-result-object v4

    iput-object v4, v0, Lg/abd;->q:[S

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Lg/abd;->p:I

    mul-int v7, v2, v6

    if-ge v5, v7, :cond_0

    iget-object v7, v0, Lg/abd;->q:[S

    mul-int v6, v6, v1

    add-int/2addr v6, v5

    aput-short v4, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lg/abd;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lg/abd;->b:I

    invoke-virtual {v0}, Lg/abd;->x()V

    iget v1, v0, Lg/abd;->n:I

    if-le v1, v3, :cond_1

    iput v3, v0, Lg/abd;->n:I

    :cond_1
    iput v4, v0, Lg/abd;->b:I

    iput v4, v0, Lg/abd;->v:I

    iput v4, v0, Lg/abd;->c:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->c:Z

    return-void
.end method

.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->j:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->j:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, v0, Lg/abd;->p:I

    div-int/2addr v3, v4

    mul-int v5, v3, v4

    iget-object v6, v0, Lg/abd;->q:[S

    iget v7, v0, Lg/abd;->b:I

    invoke-virtual {v0, v6, v7, v3}, Lg/abd;->z([SII)[S

    move-result-object v6

    iput-object v6, v0, Lg/abd;->q:[S

    iget v7, v0, Lg/abd;->b:I

    mul-int v7, v7, v4

    add-int/2addr v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v6, v7, v5}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v1, v0, Lg/abd;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lg/abd;->b:I

    invoke-virtual {v0}, Lg/abd;->x()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final zzf()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->l:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->n:F

    sget-object v0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->e:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->g:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->i:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->o:Lcom/google/android/gms/internal/ads/zzck;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->f:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->j:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->c:Z

    return-void
.end method

.method public final zzg()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->g:Lcom/google/android/gms/internal/ads/zzck;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->l:F

    const/high16 v1, -0x40800000    # -1.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x38d1b717    # 1.0E-4f

    const/4 v4, 0x1

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->n:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->g:Lcom/google/android/gms/internal/ads/zzck;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->e:Lcom/google/android/gms/internal/ads/zzck;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    return v4

    :cond_1
    return v2
.end method

.method public final zzh()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    if-eqz v0, :cond_0

    iget v1, v0, Lg/abd;->n:I

    iget v0, v0, Lg/abd;->p:I

    mul-int v1, v1, v0

    add-int/2addr v1, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(J)J
    .locals 10

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:J

    const-wide/16 v0, 0x400

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->j:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->k:Lg/abd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lg/abd;->b:I

    iget v2, v2, Lg/abd;->p:I

    mul-int v3, v3, v2

    add-int/2addr v3, v3

    int-to-long v2, v3

    sub-long v2, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->o:Lcom/google/android/gms/internal/ads/zzck;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->i:Lcom/google/android/gms/internal/ads/zzck;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    if-ne v0, v1, :cond_0

    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    move-wide v8, p1

    move p1, v0

    move p2, v1

    move-wide v0, v8

    int-to-long v6, p1

    mul-long v2, v2, v6

    int-to-long p1, p2

    mul-long v4, v4, p1

    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    move-wide v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->l:F

    float-to-double p1, p1

    long-to-double v0, v0

    mul-double p1, p1, v0

    double-to-long p1, p1

    return-wide p1
.end method

.method public final zzj(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->n:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->a:Z

    :cond_0
    return-void
.end method

.method public final zzk(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->l:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->a:Z

    :cond_0
    return-void
.end method
