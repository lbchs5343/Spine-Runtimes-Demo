.class public final Lg/ckj;
.super Lcom/google/android/gms/internal/ads/zzcn;
.source "SourceFile"


# instance fields
.field public i:I

.field public j:I

.field public k:J

.field public l:[B

.field public m:I

.field public n:I

.field public o:Z


# virtual methods
.method public final zzb()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcn;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/ckj;->m:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcn;->h(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lg/ckj;->l:[B

    iget v2, p0, Lg/ckj;->m:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v3, p0, Lg/ckj;->m:I

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcn;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lg/ckj;->j:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lg/ckj;->k:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcn;->c:Lcom/google/android/gms/internal/ads/zzck;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzck;->zze:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lg/ckj;->k:J

    iget v4, p0, Lg/ckj;->j:I

    sub-int/2addr v4, v3

    iput v4, p0, Lg/ckj;->j:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lg/ckj;->j:I

    if-gtz v0, :cond_1

    sub-int/2addr v2, v3

    iget v0, p0, Lg/ckj;->m:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lg/ckj;->l:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcn;->h(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lg/ckj;->m:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lg/ckj;->l:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Lg/ckj;->m:I

    sub-int/2addr v0, v4

    iput v0, p0, Lg/ckj;->m:I

    iget-object v1, p0, Lg/ckj;->l:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lg/ckj;->l:[B

    iget v1, p0, Lg/ckj;->m:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lg/ckj;->m:I

    add-int/2addr p1, v2

    iput p1, p0, Lg/ckj;->m:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzh()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcn;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/ckj;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;
    .locals 2

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzck;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ckj;->o:Z

    iget v0, p0, Lg/ckj;->i:I

    if-nez v0, :cond_1

    iget v0, p0, Lg/ckj;->n:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzck;

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    const-string v1, "Unhandled input format:"

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzck;)V

    throw v0
.end method

.method public final zzk()V
    .locals 3

    iget-boolean v0, p0, Lg/ckj;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lg/ckj;->o:Z

    iget v0, p0, Lg/ckj;->n:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcn;->c:Lcom/google/android/gms/internal/ads/zzck;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzck;->zze:I

    mul-int v0, v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lg/ckj;->l:[B

    iget v0, p0, Lg/ckj;->i:I

    mul-int v0, v0, v2

    iput v0, p0, Lg/ckj;->j:I

    :cond_0
    iput v1, p0, Lg/ckj;->m:I

    return-void
.end method

.method public final zzl()V
    .locals 5

    iget-boolean v0, p0, Lg/ckj;->o:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lg/ckj;->m:I

    if-lez v0, :cond_0

    iget-wide v1, p0, Lg/ckj;->k:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcn;->c:Lcom/google/android/gms/internal/ads/zzck;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzck;->zze:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lg/ckj;->k:J

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lg/ckj;->m:I

    :cond_1
    return-void
.end method

.method public final zzm()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    iput-object v0, p0, Lg/ckj;->l:[B

    return-void
.end method
