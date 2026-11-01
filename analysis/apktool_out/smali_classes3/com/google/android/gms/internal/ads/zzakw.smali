.class public final Lcom/google/android/gms/internal/ads/zzakw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaki;


# instance fields
.field public a:Ljava/util/zip/Inflater;

.field public final b:Lcom/google/android/gms/internal/ads/zzed;

.field public final c:Lcom/google/android/gms/internal/ads/zzed;

.field public final d:Lg/ggr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->b:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->c:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lg/ggr;

    invoke-direct {v0}, Lg/ggr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->d:Lg/ggr;

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int v2, v1, p3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzakw;->b:Lcom/google/android/gms/internal/ads/zzed;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzf()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakw;->a:Ljava/util/zip/Inflater;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzakw;->a:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakw;->a:Ljava/util/zip/Inflater;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzakw;->c:Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzH(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzed;Ljava/util/zip/Inflater;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakw;->d:Lg/ggr;

    const/4 v2, 0x0

    iput v2, v1, Lg/ggr;->b:I

    iget-object v4, v1, Lg/ggr;->g:[I

    iget-object v5, v1, Lg/ggr;->d:Lcom/google/android/gms/internal/ads/zzed;

    iput v2, v1, Lg/ggr;->c:I

    iput v2, v1, Lg/ggr;->e:I

    iput v2, v1, Lg/ggr;->i:I

    iput v2, v1, Lg/ggr;->a:I

    iput v2, v1, Lg/ggr;->f:I

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    iput-boolean v2, v1, Lg/ggr;->h:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    const/4 v8, 0x3

    if-lt v6, v8, :cond_12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v11

    add-int/2addr v11, v10

    if-le v11, v6, :cond_2

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    move-object v2, v3

    move-object v9, v4

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_2
    const/16 v6, 0x80

    if-eq v9, v6, :cond_9

    packed-switch v9, :pswitch_data_0

    :cond_3
    :goto_1
    move-object v2, v3

    move-object v9, v4

    :goto_2
    const/4 v4, 0x0

    const/4 v12, 0x0

    goto/16 :goto_a

    :pswitch_0
    const/16 v6, 0x13

    if-ge v10, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v6

    iput v6, v1, Lg/ggr;->b:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v6

    iput v6, v1, Lg/ggr;->c:I

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v6

    iput v6, v1, Lg/ggr;->e:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v6

    iput v6, v1, Lg/ggr;->i:I

    goto :goto_1

    :pswitch_1
    const/4 v9, 0x4

    if-ge v10, v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v8

    and-int/2addr v6, v8

    add-int/lit8 v8, v10, -0x4

    if-eqz v6, :cond_6

    const/4 v6, 0x7

    if-lt v8, v6, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v6

    if-lt v6, v9, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v8

    iput v8, v1, Lg/ggr;->a:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v8

    iput v8, v1, Lg/ggr;->f:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    add-int/lit8 v8, v10, -0xb

    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v9

    if-ge v6, v9, :cond_3

    if-lez v8, :cond_3

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v9

    invoke-virtual {v3, v9, v6, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_1

    :pswitch_2
    rem-int/lit8 v6, v10, 0x5

    const/4 v8, 0x2

    if-eq v6, v8, :cond_7

    move-object/from16 p3, v3

    move-object v9, v4

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v10, v10, 0x5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v10, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v15

    move/from16 p2, v13

    int-to-double v12, v9

    add-int/lit8 v9, p2, -0x80

    add-int/lit8 v14, v14, -0x80

    shl-int/lit8 v15, v15, 0x18

    move-object/from16 p3, v3

    int-to-double v2, v9

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v16, v16, v2

    move-wide/from16 v18, v2

    add-double v2, v16, v12

    double-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    move-object v9, v4

    int-to-double v3, v14

    const-wide v16, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v16, v16, v3

    sub-double v16, v12, v16

    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v18, v18, v20

    move v14, v2

    move-wide/from16 v20, v3

    sub-double v2, v16, v18

    double-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    const-wide v16, 0x3ffc5a1cac083127L    # 1.772

    mul-double v16, v16, v20

    add-double v12, v16, v12

    double-to-int v12, v12

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    or-int v4, v15, v14

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    aput v2, v9, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p3

    move-object v4, v9

    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 p3, v3

    move-object v9, v4

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/ggr;->h:Z

    :goto_4
    move-object/from16 v2, p3

    goto/16 :goto_2

    :cond_9
    move-object/from16 p3, v3

    move-object v9, v4

    iget v2, v1, Lg/ggr;->b:I

    if-eqz v2, :cond_10

    iget v2, v1, Lg/ggr;->c:I

    if-eqz v2, :cond_10

    iget v2, v1, Lg/ggr;->a:I

    if-eqz v2, :cond_10

    iget v2, v1, Lg/ggr;->f:I

    if-eqz v2, :cond_10

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    if-ne v2, v3, :cond_10

    iget-boolean v2, v1, Lg/ggr;->h:Z

    if-nez v2, :cond_a

    goto/16 :goto_8

    :cond_a
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget v2, v1, Lg/ggr;->a:I

    iget v3, v1, Lg/ggr;->f:I

    mul-int v2, v2, v3

    new-array v3, v2, [I

    const/4 v4, 0x0

    :cond_b
    :goto_5
    if-ge v4, v2, :cond_f

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v6

    if-eqz v6, :cond_c

    add-int/lit8 v8, v4, 0x1

    aget v6, v9, v6

    aput v6, v3, v4

    move v4, v8

    goto :goto_5

    :cond_c
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v6

    if-eqz v6, :cond_b

    and-int/lit8 v8, v6, 0x3f

    and-int/lit8 v10, v6, 0x40

    if-eqz v10, :cond_d

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v10

    or-int/2addr v8, v10

    :cond_d
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_e

    const/4 v6, 0x0

    aget v10, v9, v6

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v6

    aget v10, v9, v6

    :goto_6
    add-int v6, v4, v8

    invoke-static {v3, v4, v6, v10}, Ljava/util/Arrays;->fill([IIII)V

    move v4, v6

    goto :goto_5

    :cond_f
    iget v2, v1, Lg/ggr;->a:I

    iget v4, v1, Lg/ggr;->f:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcr;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcr;

    iget v2, v1, Lg/ggr;->e:I

    int-to-float v2, v2

    iget v4, v1, Lg/ggr;->b:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzh(F)Lcom/google/android/gms/internal/ads/zzcr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzi(I)Lcom/google/android/gms/internal/ads/zzcr;

    iget v2, v1, Lg/ggr;->i:I

    int-to-float v2, v2

    iget v6, v1, Lg/ggr;->c:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zze(FI)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzf(I)Lcom/google/android/gms/internal/ads/zzcr;

    iget v2, v1, Lg/ggr;->a:I

    int-to-float v2, v2

    iget v4, v1, Lg/ggr;->b:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(F)Lcom/google/android/gms/internal/ads/zzcr;

    iget v2, v1, Lg/ggr;->f:I

    int-to-float v2, v2

    iget v4, v1, Lg/ggr;->c:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzd(F)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v12

    :goto_7
    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v12, 0x0

    goto :goto_7

    :goto_9
    iput v4, v1, Lg/ggr;->b:I

    iput v4, v1, Lg/ggr;->c:I

    iput v4, v1, Lg/ggr;->e:I

    iput v4, v1, Lg/ggr;->i:I

    iput v4, v1, Lg/ggr;->a:I

    iput v4, v1, Lg/ggr;->f:I

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    iput-boolean v4, v1, Lg/ggr;->h:Z

    move-object/from16 v2, p3

    :goto_a
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_b
    if-eqz v12, :cond_11

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object v3, v2

    move-object v4, v9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaka;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, v8

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v1, p5

    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
