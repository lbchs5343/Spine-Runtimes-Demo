.class public final synthetic Lcom/google/android/gms/internal/ads/zzxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxv;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzxp;

.field public final synthetic zzb:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxp;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:[I

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbw;[I)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzyb;->a:Lcom/google/android/gms/internal/ads/zzgaz;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:[I

    aget v1, v1, p1

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzcb;->zzi:I

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzcb;->zzj:I

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzcb;->zzk:Z

    const v11, 0x7fffffff

    if-eq v1, v11, :cond_8

    if-ne v2, v11, :cond_0

    const v8, 0x7fffffff

    const/16 v16, -0x1

    goto/16 :goto_6

    :cond_0
    const/4 v6, 0x0

    const v7, 0x7fffffff

    :goto_0
    iget v12, v3, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v6, v12, :cond_7

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v12

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    if-lez v13, :cond_5

    iget v14, v12, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    if-lez v14, :cond_5

    if-eqz v4, :cond_3

    if-gt v13, v14, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    const/4 v15, 0x1

    :goto_1
    if-gt v1, v2, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    if-eq v15, v9, :cond_3

    move v9, v1

    move v15, v2

    goto :goto_3

    :cond_3
    move v15, v1

    move v9, v2

    :goto_3
    mul-int v10, v13, v9

    const/16 v16, -0x1

    mul-int v8, v14, v15

    if-lt v10, v8, :cond_4

    new-instance v9, Landroid/graphics/Point;

    sget v10, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    add-int/2addr v8, v13

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v8, v13

    invoke-direct {v9, v15, v8}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_4
    new-instance v8, Landroid/graphics/Point;

    sget v13, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    add-int/2addr v10, v14

    add-int/lit8 v10, v10, -0x1

    div-int/2addr v10, v14

    invoke-direct {v8, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    move-object v9, v8

    :goto_4
    iget v8, v12, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    iget v10, v12, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    mul-int v12, v8, v10

    iget v13, v9, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float v13, v13, v14

    float-to-int v13, v13

    if-lt v8, v13, :cond_6

    iget v8, v9, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float v8, v8, v14

    float-to-int v8, v8

    if-lt v10, v8, :cond_6

    if-ge v12, v7, :cond_6

    move v7, v12

    goto :goto_5

    :cond_5
    const/16 v16, -0x1

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    const/16 v16, -0x1

    move v8, v7

    goto :goto_6

    :cond_8
    const/16 v16, -0x1

    const v8, 0x7fffffff

    :goto_6
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    const/4 v4, 0x0

    :goto_7
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v4, v1, :cond_b

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzad;->zza()I

    move-result v1

    if-eq v8, v11, :cond_a

    const/4 v10, -0x1

    if-eq v1, v10, :cond_9

    if-gt v1, v8, :cond_9

    :goto_8
    const/4 v7, 0x1

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    :cond_a
    const/4 v10, -0x1

    goto :goto_8

    :goto_9
    new-instance v1, Lg/ccx;

    aget v6, p3, v4

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lg/ccx;-><init>(ILcom/google/android/gms/internal/ads/zzbw;ILcom/google/android/gms/internal/ads/zzxp;IZ)V

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p2

    const/16 v16, -0x1

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    return-object v1
.end method
