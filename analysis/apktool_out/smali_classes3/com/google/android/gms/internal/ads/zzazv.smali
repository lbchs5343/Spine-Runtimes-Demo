.class public final Lcom/google/android/gms/internal/ads/zzazv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/String;I)J
    .locals 9

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazr;->zza(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    add-long/2addr v0, v2

    const-wide/32 v4, 0x4000ffff

    rem-long/2addr v0, v4

    const/4 v6, 0x1

    :goto_0
    if-ge v6, p1, :cond_0

    const-wide/32 v7, 0x1001fff

    mul-long v0, v0, v7

    rem-long/2addr v0, v4

    aget-object v7, p0, v6

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzazr;->zza(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v2

    rem-long/2addr v7, v4

    add-long/2addr v7, v0

    rem-long v0, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static b(IJ)J
    .locals 6

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-wide p1

    :cond_0
    mul-long v1, p1, p1

    shr-int/lit8 v3, p0, 0x1

    and-int/2addr p0, v0

    const-wide/32 v4, 0x4000ffff

    rem-long/2addr v1, v4

    if-nez p0, :cond_1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzazv;->b(IJ)J

    move-result-wide p0

    rem-long/2addr p0, v4

    return-wide p0

    :cond_1
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzazv;->b(IJ)J

    move-result-wide v0

    rem-long/2addr v0, v4

    mul-long v0, v0, p1

    rem-long/2addr v0, v4

    return-wide v0
.end method

.method public static c(II[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    array-length v0, p2

    add-int/2addr p1, p0

    if-ge v0, p1, :cond_0

    const-string p0, "Unable to construct shingle"

    invoke-static {p0}, Lg/agd;->d(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge p0, v1, :cond_1

    aget-object v1, p2, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    aget-object p0, p2, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazu;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzazu;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p3

    if-ne p3, p0, :cond_0

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzazu;

    iget p3, p3, Lcom/google/android/gms/internal/ads/zzazu;->c:I

    if-gt p3, p4, :cond_2

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzazu;

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzazu;->a:J

    cmp-long v1, p3, p1

    if-gtz v1, :cond_2

    :cond_0
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    if-le p1, p0, :cond_2

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static zzc([Ljava/lang/String;IILjava/util/PriorityQueue;)V
    .locals 18

    move-object/from16 v0, p0

    array-length v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ge v4, v2, :cond_0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzazv;->a([Ljava/lang/String;I)J

    move-result-wide v2

    move-wide v5, v2

    invoke-static {v1, v4, v0}, Lcom/google/android/gms/internal/ads/zzazv;->c(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    move-wide v1, v5

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzazv;->d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    return-void

    :cond_0
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzazv;->a([Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzazv;->c(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    move/from16 v7, p1

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzazv;->d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    const/4 v1, 0x1

    :goto_0
    array-length v11, v0

    add-int/lit8 v3, v11, -0x5

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzazr;->zza(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x5

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzazr;->zza(Ljava/lang/String;)I

    move-result v4

    int-to-long v5, v3

    const-wide/32 v12, 0x4000ffff

    add-long/2addr v8, v12

    int-to-long v3, v4

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzazv;->c(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-wide/32 v14, 0x7fffffff

    add-long/2addr v3, v14

    add-long/2addr v5, v14

    const/4 v7, 0x5

    const-wide/32 v14, 0x1001fff

    invoke-static {v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzazv;->b(IJ)J

    move-result-wide v16

    rem-long/2addr v5, v12

    mul-long v5, v5, v16

    rem-long/2addr v5, v12

    sub-long/2addr v8, v5

    rem-long/2addr v8, v12

    mul-long v8, v8, v14

    rem-long/2addr v8, v12

    rem-long/2addr v3, v12

    add-long/2addr v3, v8

    rem-long v8, v3, v12

    move/from16 v7, p1

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzazv;->d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
