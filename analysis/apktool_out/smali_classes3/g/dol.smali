.class public final Lg/dol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzup;
.implements Lcom/google/android/gms/internal/ads/zzuo;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzub;

.field public b:[Lcom/google/android/gms/internal/ads/zzup;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;

.field public e:Lcom/google/android/gms/internal/ads/zzuo;

.field public final f:[Lcom/google/android/gms/internal/ads/zzup;

.field public final g:Ljava/util/IdentityHashMap;

.field public h:Lcom/google/android/gms/internal/ads/zzwr;


# direct methods
.method public varargs constructor <init>([J[Lcom/google/android/gms/internal/ads/zzup;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dol;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dol;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzub;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzub;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lg/dol;->a:Lcom/google/android/gms/internal/ads/zzub;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lg/dol;->g:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzup;

    iput-object v1, p0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v3, p0, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    new-instance v4, Lg/gva;

    aget-object v5, p2, v0

    invoke-direct {v4, v5, v1, v2}, Lg/gva;-><init>(Lcom/google/android/gms/internal/ads/zzup;J)V

    aput-object v4, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/ads/zzls;)J
    .locals 3

    iget-object v0, p0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    aget-object v0, v0, v2

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzup;->zza(JLcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lg/dol;->a:Lcom/google/android/gms/internal/ads/zzub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-object v0, p0, Lg/dol;->a:Lcom/google/android/gms/internal/ads/zzub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v2, v1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_8

    aget-object v9, v1, v6

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzup;->zzd()J

    move-result-wide v10

    const-string v12, "Unexpected child seekToUs result."

    cmp-long v13, v10, v4

    if-eqz v13, :cond_5

    cmp-long v13, v7, v4

    if-nez v13, :cond_3

    iget-object v7, v0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v8, v7

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_2

    aget-object v14, v7, v13

    if-ne v14, v9, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v14, v10, v11}, Lcom/google/android/gms/internal/ads/zzup;->zze(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-nez v16, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_2
    move-wide v7, v10

    goto :goto_3

    :cond_3
    cmp-long v9, v10, v7

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Conflicting discontinuities."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    cmp-long v10, v7, v4

    if-eqz v10, :cond_7

    invoke-interface {v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzup;->zze(J)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-wide v7
.end method

.method public final zze(J)J
    .locals 4

    iget-object v0, p0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzup;->zze(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzup;->zze(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method

.method public final zzf([Lcom/google/android/gms/internal/ads/zzyd;[Z[Lcom/google/android/gms/internal/ads/zzwg;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v4, v3, [I

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    iget-object v8, v0, Lg/dol;->g:Ljava/util/IdentityHashMap;

    if-ge v6, v7, :cond_3

    aget-object v7, v2, v6

    if-nez v7, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/Integer;

    :goto_1
    const/4 v7, -0x1

    if-nez v9, :cond_1

    const/4 v8, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    aput v8, v4, v6

    aget-object v8, v1, v6

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzyh;->zze()Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzbw;->zzb:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v6

    goto :goto_3

    :cond_2
    aput v7, v3, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/IdentityHashMap;->clear()V

    new-array v6, v7, [Lcom/google/android/gms/internal/ads/zzwg;

    new-array v13, v7, [Lcom/google/android/gms/internal/ads/zzwg;

    new-array v11, v7, [Lcom/google/android/gms/internal/ads/zzyd;

    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, v0, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v14, v12

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v15, p5

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_4
    array-length v9, v12

    if-ge v14, v9, :cond_e

    const/4 v9, 0x0

    :goto_5
    array-length v5, v1

    if-ge v9, v5, :cond_6

    aget v5, v4, v9

    if-ne v5, v14, :cond_4

    aget-object v5, v2, v9

    goto :goto_6

    :cond_4
    move-object/from16 v5, v17

    :goto_6
    aput-object v5, v13, v9

    aget v5, v3, v9

    if-ne v5, v14, :cond_5

    aget-object v5, v1, v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v3

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyh;->zze()Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v3

    move-object/from16 v19, v4

    iget-object v4, v0, Lg/dol;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbw;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg/bqg;

    invoke-direct {v4, v5, v3}, Lg/bqg;-><init>(Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzbw;)V

    aput-object v4, v11, v9

    goto :goto_7

    :cond_5
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    aput-object v17, v11, v9

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_5

    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object v3, v10

    aget-object v10, v12, v14

    move-object v4, v12

    move v5, v14

    move-object/from16 v12, p2

    move-object/from16 v14, p4

    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzup;->zzf([Lcom/google/android/gms/internal/ads/zzyd;[Z[Lcom/google/android/gms/internal/ads/zzwg;[ZJ)J

    move-result-wide v9

    if-nez v5, :cond_7

    move-wide v15, v9

    goto :goto_8

    :cond_7
    cmp-long v12, v9, v15

    if-nez v12, :cond_d

    :goto_8
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_9
    array-length v12, v1

    if-ge v9, v12, :cond_b

    aget v12, v18, v9

    const/4 v14, 0x1

    if-ne v12, v5, :cond_8

    aget-object v10, v13, v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v10, v6, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_b

    :cond_8
    aget v12, v19, v9

    if-ne v12, v5, :cond_a

    aget-object v12, v13, v9

    if-nez v12, :cond_9

    goto :goto_a

    :cond_9
    const/4 v14, 0x0

    :goto_a
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    :cond_a
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_b
    if-eqz v10, :cond_c

    aget-object v9, v4, v5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v14, v5, 0x1

    move-object v10, v3

    move-object v12, v4

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object v3, v10

    const/4 v1, 0x0

    invoke-static {v6, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzup;

    iput-object v1, v0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzvc;-><init>()V

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzgae;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfwh;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzub;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzub;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v2, v0, Lg/dol;->a:Lcom/google/android/gms/internal/ads/zzub;

    return-wide v15
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzup;

    iget-object p1, p0, Lg/dol;->e:Lcom/google/android/gms/internal/ads/zzuo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwh;->zzg(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzwr;
    .locals 1

    iget-object v0, p0, Lg/dol;->h:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzup;)V
    .locals 14

    iget-object v0, p0, Lg/dol;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzup;->zzh()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v1, [Lcom/google/android/gms/internal/ads/zzbw;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_5

    aget-object v4, v2, v1

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzup;->zzh()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzwr;->zzb:I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v7

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzad;

    const/4 v9, 0x0

    :goto_3
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    const-string v11, ":"

    if-ge v9, v10, :cond_3

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v12

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzad;->zza:Ljava/lang/String;

    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbw;

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzbw;->zzb:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzbw;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzad;)V

    iget-object v8, p0, Lg/dol;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    aput-object v9, v0, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwr;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzwr;-><init>([Lcom/google/android/gms/internal/ads/zzbw;)V

    iput-object p1, p0, Lg/dol;->h:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object p1, p0, Lg/dol;->e:Lcom/google/android/gms/internal/ads/zzuo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuo;->zzi(Lcom/google/android/gms/internal/ads/zzup;)V

    return-void
.end method

.method public final zzj(JZ)V
    .locals 4

    iget-object p3, p0, Lg/dol;->b:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    invoke-interface {v3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzup;->zzj(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzup;->zzk()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzuo;J)V
    .locals 2

    iput-object p1, p0, Lg/dol;->e:Lcom/google/android/gms/internal/ads/zzuo;

    iget-object p1, p0, Lg/dol;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    invoke-interface {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzup;->zzl(Lcom/google/android/gms/internal/ads/zzuo;J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzm(J)V
    .locals 1

    iget-object v0, p0, Lg/dol;->a:Lcom/google/android/gms/internal/ads/zzub;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzm(J)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzko;)Z
    .locals 5

    iget-object v0, p0, Lg/dol;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzup;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzup;->zzo(Lcom/google/android/gms/internal/ads/zzko;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lg/dol;->a:Lcom/google/android/gms/internal/ads/zzub;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwi;->zzo(Lcom/google/android/gms/internal/ads/zzko;)Z

    move-result p1

    return p1
.end method

.method public final zzp()Z
    .locals 1

    iget-object v0, p0, Lg/dol;->a:Lcom/google/android/gms/internal/ads/zzub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzp()Z

    move-result v0

    return v0
.end method
