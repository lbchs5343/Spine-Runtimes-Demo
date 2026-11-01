.class public abstract Lcom/google/android/gms/internal/ads/zzyg;
.super Lcom/google/android/gms/internal/ads/zzyj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract l(Lcom/google/android/gms/internal/ads/zzyf;[[[I[I)Landroid/util/Pair;
.end method

.method public final zzo([Lcom/google/android/gms/internal/ads/zzlq;Lcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzbv;)Lcom/google/android/gms/internal/ads/zzyk;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x3

    new-array v2, v1, [I

    new-array v3, v1, [[Lcom/google/android/gms/internal/ads/zzbw;

    new-array v8, v1, [[[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzbw;

    aput-object v6, v3, v4

    new-array v5, v5, [[I

    aput-object v5, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v7, v1, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzlq;->zze()I

    move-result v5

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-ge v4, v5, :cond_9

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzbw;->zzc:I

    const/4 v9, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_3
    if-ge v9, v1, :cond_6

    aget-object v15, p1, v9

    const/16 p3, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v11, v1, :cond_2

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/android/gms/internal/ads/zzlq;->zzY(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_2
    aget v1, v2, v9

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    if-gt v10, v13, :cond_4

    if-ne v10, v13, :cond_5

    const/4 v11, 0x5

    if-ne v6, v11, :cond_5

    if-nez v14, :cond_5

    if-eqz v1, :cond_5

    move v12, v9

    move v13, v10

    const/4 v14, 0x1

    goto :goto_6

    :cond_4
    move v14, v1

    move v12, v9

    move v13, v10

    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    const/16 p3, 0x1

    if-ne v12, v1, :cond_7

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v1, v1, [I

    goto :goto_8

    :cond_7
    aget-object v1, p1, v12

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v6, v6, [I

    const/4 v9, 0x0

    :goto_7
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v9, v10, :cond_8

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v10

    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/zzlq;->zzY(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v10

    aput v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    move-object v1, v6

    :goto_8
    aget v6, v2, v12

    aget-object v9, v3, v12

    aput-object v5, v9, v6

    aget-object v5, v8, v12

    aput-object v1, v5, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v12

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    const/16 p3, 0x1

    new-array v6, v1, [Lcom/google/android/gms/internal/ads/zzwr;

    new-array v0, v1, [Ljava/lang/String;

    new-array v5, v1, [I

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_a

    aget v1, v2, v4

    new-instance v9, Lcom/google/android/gms/internal/ads/zzwr;

    aget-object v10, v3, v4

    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzO([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/gms/internal/ads/zzbw;

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/zzwr;-><init>([Lcom/google/android/gms/internal/ads/zzbw;)V

    aput-object v9, v6, v4

    aget-object v9, v8, v4

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzO([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v8, v4

    aget-object v1, p1, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlq;->zzU()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aget-object v1, p1, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlq;->zzb()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    goto :goto_9

    :cond_a
    const/16 v16, 0x2

    aget v0, v2, v16

    new-instance v9, Lcom/google/android/gms/internal/ads/zzwr;

    aget-object v1, v3, v16

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzO([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbw;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/ads/zzwr;-><init>([Lcom/google/android/gms/internal/ads/zzbw;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzyf;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzyf;-><init>([I[Lcom/google/android/gms/internal/ads/zzwr;[I[[[ILcom/google/android/gms/internal/ads/zzwr;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v7}, Lcom/google/android/gms/internal/ads/zzyg;->l(Lcom/google/android/gms/internal/ads/zzyf;[[[I[I)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/gms/internal/ads/zzyh;

    array-length v3, v2

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    :goto_a
    array-length v6, v2

    if-ge v5, v6, :cond_c

    aget-object v6, v2, v5

    if-eqz v6, :cond_b

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v6

    goto :goto_b

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v6

    :goto_b
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    const/4 v5, 0x0

    :goto_c
    const/4 v6, 0x2

    if-ge v5, v6, :cond_12

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzyf;->zzd(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v7

    aget-object v8, v3, v5

    const/4 v9, 0x0

    :goto_d
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-ge v9, v10, :cond_11

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v9, v11}, Lcom/google/android/gms/internal/ads/zzyf;->zza(IIZ)I

    move-result v12

    if-eqz v12, :cond_d

    const/4 v11, 0x1

    goto :goto_e

    :cond_d
    const/4 v11, 0x0

    :goto_e
    iget v12, v10, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v13, v12, [I

    new-array v12, v12, [Z

    const/4 v14, 0x0

    :goto_f
    iget v15, v10, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v14, v15, :cond_10

    invoke-virtual {v4, v5, v9, v14}, Lcom/google/android/gms/internal/ads/zzyf;->zzb(III)I

    move-result v15

    and-int/lit8 v15, v15, 0x7

    aput v15, v13, v14

    const/4 v15, 0x0

    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_f

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzyh;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzyh;->zze()Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6, v14}, Lcom/google/android/gms/internal/ads/zzyh;->zzb(I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_e

    const/4 v0, 0x1

    goto :goto_11

    :cond_e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_11
    aput-boolean v0, v12, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x2

    goto :goto_f

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcc;

    invoke-direct {v0, v10, v11, v13, v12}, Lcom/google/android/gms/internal/ads/zzcc;-><init>(Lcom/google/android/gms/internal/ads/zzbw;Z[I[Z)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x2

    goto :goto_d

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzyf;->zze()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    const/4 v11, 0x0

    :goto_12
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    if-ge v11, v3, :cond_13

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v3

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v7, v7, [Z

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcc;

    invoke-direct {v8, v3, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzcc;-><init>(Lcom/google/android/gms/internal/ads/zzbw;Z[I[Z)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzlr;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzyd;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzyk;-><init>([Lcom/google/android/gms/internal/ads/zzlr;[Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final zzp(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyf;

    return-void
.end method
