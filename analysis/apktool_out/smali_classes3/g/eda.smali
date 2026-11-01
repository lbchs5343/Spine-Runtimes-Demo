.class public final Lg/eda;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/fcw;

.field public b:J

.field public final c:Lcom/google/android/gms/internal/ads/zzed;

.field public final d:Lcom/google/android/gms/internal/ads/zzys;

.field public e:Lg/fcw;

.field public f:Lg/fcw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzys;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eda;->d:Lcom/google/android/gms/internal/ads/zzys;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lg/eda;->c:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lg/fcw;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lg/fcw;-><init>(J)V

    iput-object p1, p0, Lg/eda;->e:Lg/fcw;

    iput-object p1, p0, Lg/eda;->f:Lg/fcw;

    iput-object p1, p0, Lg/eda;->a:Lg/fcw;

    return-void
.end method

.method public static g(Lg/fcw;J[BI)Lg/fcw;
    .locals 6

    :goto_0
    iget-wide v0, p0, Lg/fcw;->e:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object p0, p0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast p0, Lg/fcw;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    iget-wide v1, p0, Lg/fcw;->e:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyl;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzyl;->zza:[B

    iget-wide v4, p0, Lg/fcw;->d:J

    sub-long v4, p1, v4

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzyl;->zzb:I

    long-to-int v2, v4

    sub-int v4, p4, v0

    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lg/fcw;->e:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    iget-object p0, p0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast p0, Lg/fcw;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static h(Lg/fcw;Lcom/google/android/gms/internal/ads/zzhm;Lg/fks;Lcom/google/android/gms/internal/ads/zzed;)Lg/fcw;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhm;->zzl()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-wide v3, v1, Lg/fks;->b:J

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    move-object/from16 v7, p0

    invoke-static {v7, v3, v4, v6, v5}, Lg/eda;->g(Lg/fcw;J[BI)Lg/fcw;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    and-int/lit16 v9, v7, 0x80

    and-int/lit8 v7, v7, 0x7f

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzb:Lcom/google/android/gms/internal/ads/zzhj;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzhj;->zza:[B

    if-nez v11, :cond_0

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzhj;->zza:[B

    goto :goto_0

    :cond_0
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzhj;->zza:[B

    invoke-static {v6, v3, v4, v11, v7}, Lg/eda;->g(Lg/fcw;J[BI)Lg/fcw;

    move-result-object v6

    int-to-long v11, v7

    add-long/2addr v3, v11

    if-eqz v9, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-static {v6, v3, v4, v7, v5}, Lg/eda;->g(Lg/fcw;J[BI)Lg/fcw;

    move-result-object v6

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v5

    move v11, v5

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    :goto_2
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzhj;->zzd:[I

    if-eqz v5, :cond_4

    array-length v7, v5

    if-ge v7, v11, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v12, v5

    goto :goto_5

    :cond_4
    :goto_4
    new-array v5, v11, [I

    goto :goto_3

    :goto_5
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzhj;->zze:[I

    if-eqz v5, :cond_6

    array-length v7, v5

    if-ge v7, v11, :cond_5

    goto :goto_7

    :cond_5
    :goto_6
    move-object v13, v5

    goto :goto_8

    :cond_6
    :goto_7
    new-array v5, v11, [I

    goto :goto_6

    :goto_8
    if-eqz v9, :cond_7

    mul-int/lit8 v5, v11, 0x6

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-static {v6, v3, v4, v7, v5}, Lg/eda;->g(Lg/fcw;J[BI)Lg/fcw;

    move-result-object v6

    int-to-long v14, v5

    add-long/2addr v3, v14

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_9
    if-ge v8, v11, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v5

    aput v5, v12, v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v5

    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_7
    aput v8, v12, v8

    iget v5, v1, Lg/fks;->a:I

    iget-wide v14, v1, Lg/fks;->b:J

    sub-long v14, v3, v14

    long-to-int v7, v14

    sub-int/2addr v5, v7

    aput v5, v13, v8

    :cond_8
    iget-object v5, v1, Lg/fks;->c:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzadw;

    sget v7, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzadw;->zzb:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzhj;->zza:[B

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzadw;->zza:I

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzadw;->zzd:I

    move/from16 v18, v5

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzhj;->zzc(I[I[I[B[BIII)V

    iget-wide v7, v1, Lg/fks;->b:J

    sub-long/2addr v3, v7

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lg/fks;->b:J

    iget v3, v1, Lg/fks;->a:I

    sub-int/2addr v3, v4

    iput v3, v1, Lg/fks;->a:I

    goto :goto_a

    :cond_9
    move-object/from16 v7, p0

    move-object v6, v7

    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhg;->zze()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    iget-wide v4, v1, Lg/fks;->b:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-static {v6, v4, v5, v7, v3}, Lg/eda;->g(Lg/fcw;J[BI)Lg/fcw;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v2

    iget-wide v4, v1, Lg/fks;->b:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v1, Lg/fks;->b:J

    iget v4, v1, Lg/fks;->a:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v1, Lg/fks;->a:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zzj(I)V

    iget-wide v4, v1, Lg/fks;->b:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {v3, v4, v5, v6, v2}, Lg/eda;->i(Lg/fcw;JLjava/nio/ByteBuffer;I)Lg/fcw;

    move-result-object v3

    iget-wide v4, v1, Lg/fks;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lg/fks;->b:J

    iget v4, v1, Lg/fks;->a:I

    sub-int/2addr v4, v2

    iput v4, v1, Lg/fks;->a:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v4, :cond_a

    goto :goto_b

    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_c

    :cond_b
    :goto_b
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzf:Ljava/nio/ByteBuffer;

    :goto_c
    iget-wide v4, v1, Lg/fks;->b:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzf:Ljava/nio/ByteBuffer;

    iget v1, v1, Lg/fks;->a:I

    invoke-static {v3, v4, v5, v0, v1}, Lg/eda;->i(Lg/fcw;JLjava/nio/ByteBuffer;I)Lg/fcw;

    move-result-object v0

    return-object v0

    :cond_c
    iget v2, v1, Lg/fks;->a:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zzj(I)V

    iget-wide v2, v1, Lg/fks;->b:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    iget v1, v1, Lg/fks;->a:I

    invoke-static {v6, v2, v3, v0, v1}, Lg/eda;->i(Lg/fcw;JLjava/nio/ByteBuffer;I)Lg/fcw;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lg/fcw;JLjava/nio/ByteBuffer;I)Lg/fcw;
    .locals 5

    :goto_0
    iget-wide v0, p0, Lg/fcw;->e:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object p0, p0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast p0, Lg/fcw;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    iget-wide v0, p0, Lg/fcw;->e:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyl;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyl;->zza:[B

    iget-wide v3, p0, Lg/fcw;->d:J

    sub-long v3, p1, v3

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzyl;->zzb:I

    long-to-int v1, v3

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lg/fcw;->e:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-object p0, p0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast p0, Lg/fcw;

    goto :goto_1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final j(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    :goto_0
    iget-object v0, p0, Lg/eda;->e:Lg/fcw;

    iget-wide v1, v0, Lg/fcw;->e:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v0, v0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyl;

    iget-object v1, p0, Lg/eda;->d:Lcom/google/android/gms/internal/ads/zzys;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzys;->zzc(Lcom/google/android/gms/internal/ads/zzyl;)V

    iget-object v0, p0, Lg/eda;->e:Lg/fcw;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/fcw;->a:Ljava/lang/Object;

    iget-object v2, v0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v2, Lg/fcw;

    iput-object v1, v0, Lg/fcw;->b:Ljava/lang/Object;

    iput-object v2, p0, Lg/eda;->e:Lg/fcw;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/eda;->f:Lg/fcw;

    iget-wide p1, p1, Lg/fcw;->d:J

    iget-wide v1, v0, Lg/fcw;->d:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    iput-object v0, p0, Lg/eda;->f:Lg/fcw;

    :cond_1
    return-void
.end method

.method public final k(I)I
    .locals 5

    iget-object v0, p0, Lg/eda;->a:Lg/fcw;

    iget-object v1, v0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyl;

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/eda;->d:Lcom/google/android/gms/internal/ads/zzys;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzys;->zzb()Lcom/google/android/gms/internal/ads/zzyl;

    move-result-object v1

    new-instance v2, Lg/fcw;

    iget-object v3, p0, Lg/eda;->a:Lg/fcw;

    iget-wide v3, v3, Lg/fcw;->e:J

    invoke-direct {v2, v3, v4}, Lg/fcw;-><init>(J)V

    iput-object v1, v0, Lg/fcw;->a:Ljava/lang/Object;

    iput-object v2, v0, Lg/fcw;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/eda;->a:Lg/fcw;

    iget-wide v0, v0, Lg/fcw;->e:J

    iget-wide v2, p0, Lg/eda;->b:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
