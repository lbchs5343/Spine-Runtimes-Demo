.class public final Lcom/google/android/gms/internal/ads/zzaku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaki;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B


# instance fields
.field public final d:Lg/dir;

.field public final e:Lg/arj;

.field public final f:Landroid/graphics/Paint;

.field public final g:Lg/gxo;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Canvas;

.field public j:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaku;->a:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaku;->b:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaku;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->h:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->i:Landroid/graphics/Canvas;

    new-instance v3, Lg/dir;

    const/4 v8, 0x0

    const/16 v9, 0x23f

    const/16 v4, 0x2cf

    const/16 v5, 0x23f

    const/4 v6, 0x0

    move v7, v4

    invoke-direct/range {v3 .. v9}, Lg/dir;-><init>(IIIIII)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaku;->d:Lg/dir;

    new-instance v2, Lg/arj;

    const/high16 v3, -0x1000000

    const v4, -0x808081

    const/4 v5, -0x1

    filled-new-array {v1, v5, v3, v4}, [I

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaku;->n()[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaku;->q()[I

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lg/arj;-><init>(I[I[I[I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->e:Lg/arj;

    new-instance v1, Lg/gxo;

    invoke-direct {v1, p1, v0}, Lg/gxo;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->g:Lg/gxo;

    return-void
.end method

.method public static k([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v7, p5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzec;

    array-length v2, v0

    invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    move/from16 v2, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v3

    if-eqz v3, :cond_21

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_20

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v16, 0x0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x10

    invoke-static {v3, v13, v8}, Lcom/google/android/gms/internal/ads/zzaku;->l(IILcom/google/android/gms/internal/ads/zzec;)[B

    move-result-object v11

    goto :goto_0

    :pswitch_1
    invoke-static {v15, v13, v8}, Lcom/google/android/gms/internal/ads/zzaku;->l(IILcom/google/android/gms/internal/ads/zzec;)[B

    move-result-object v10

    goto :goto_0

    :pswitch_2
    invoke-static {v15, v15, v8}, Lcom/google/android/gms/internal/ads/zzaku;->l(IILcom/google/android/gms/internal/ads/zzec;)[B

    move-result-object v12

    goto :goto_0

    :pswitch_3
    move v14, v2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_0

    move v15, v2

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    const/4 v5, 0x7

    if-nez v3, :cond_2

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v15, v2

    move/from16 v17, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    move v15, v2

    move/from16 v17, v3

    move v3, v5

    :goto_2
    if-eqz v17, :cond_3

    if-eqz v7, :cond_3

    add-int/lit8 v2, v9, 0x1

    const/4 v5, 0x1

    int-to-float v4, v9

    aget v3, p1, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v14

    add-int v6, v14, v17

    int-to-float v6, v6

    int-to-float v2, v2

    move v5, v6

    const/4 v0, 0x1

    move v6, v2

    move-object/from16 v2, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    add-int v14, v14, v17

    if-nez v15, :cond_4

    move v2, v15

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v2, v14

    goto/16 :goto_0

    :pswitch_4
    const/4 v0, 0x1

    if-ne v1, v14, :cond_6

    if-nez v11, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/ads/zzaku;->c:[B

    move-object/from16 v17, v3

    goto :goto_4

    :cond_5
    move-object/from16 v17, v11

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    :goto_4
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v19, v4

    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v3, 0x2

    move/from16 v18, v3

    move/from16 v19, v4

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    add-int/2addr v3, v15

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    :goto_7
    move/from16 v18, v3

    move/from16 v19, v4

    move v3, v6

    goto :goto_8

    :cond_a
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_e

    if-eq v3, v0, :cond_d

    if-eq v3, v5, :cond_c

    if-eq v3, v14, :cond_b

    move/from16 v19, v4

    const/4 v3, 0x0

    const/16 v18, 0x0

    goto :goto_8

    :cond_b
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    goto :goto_7

    :cond_c
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    goto :goto_7

    :cond_d
    move/from16 v19, v4

    const/4 v3, 0x0

    const/16 v18, 0x2

    goto :goto_8

    :cond_e
    move/from16 v19, v4

    const/4 v3, 0x0

    goto :goto_6

    :goto_8
    if-eqz v18, :cond_10

    if-eqz v7, :cond_10

    add-int/lit8 v4, v9, 0x1

    int-to-float v6, v9

    if-eqz v17, :cond_f

    aget-byte v3, v17, v3

    :cond_f
    int-to-float v4, v4

    aget v3, p1, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v2

    add-int v5, v2, v18

    int-to-float v5, v5

    move v15, v6

    move v6, v4

    move v4, v15

    move/from16 v20, v2

    const/4 v15, 0x2

    move-object/from16 v2, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_10
    move/from16 v20, v2

    const/4 v15, 0x2

    :goto_9
    add-int v2, v20, v18

    if-eqz v19, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zzf()V

    goto/16 :goto_0

    :cond_11
    move/from16 v4, v19

    const/4 v5, 0x2

    const/4 v15, 0x4

    goto/16 :goto_5

    :pswitch_5
    const/4 v0, 0x1

    const/4 v15, 0x2

    if-ne v1, v14, :cond_13

    if-nez v10, :cond_12

    sget-object v3, Lcom/google/android/gms/internal/ads/zzaku;->b:[B

    :goto_a
    move-object/from16 v17, v3

    goto :goto_b

    :cond_12
    move-object/from16 v17, v10

    goto :goto_b

    :cond_13
    if-ne v1, v15, :cond_15

    if-nez v12, :cond_14

    sget-object v3, Lcom/google/android/gms/internal/ads/zzaku;->a:[B

    goto :goto_a

    :cond_14
    move-object/from16 v17, v12

    goto :goto_b

    :cond_15
    const/16 v17, 0x0

    :goto_b
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_16

    move v5, v3

    move/from16 v19, v4

    const/4 v3, 0x4

    :goto_d
    const/16 v18, 0x1

    goto :goto_f

    :cond_16
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    :goto_e
    move/from16 v18, v3

    move/from16 v19, v4

    const/4 v3, 0x4

    goto :goto_f

    :cond_17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    if-eqz v3, :cond_18

    move/from16 v19, v4

    const/4 v3, 0x4

    const/4 v5, 0x0

    goto :goto_d

    :cond_18
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_1c

    if-eq v3, v0, :cond_1b

    if-eq v3, v15, :cond_1a

    if-eq v3, v14, :cond_19

    move/from16 v19, v4

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/16 v18, 0x0

    goto :goto_f

    :cond_19
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    goto :goto_e

    :cond_1a
    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    move/from16 v19, v4

    move/from16 v18, v5

    move v5, v6

    goto :goto_f

    :cond_1b
    const/4 v3, 0x4

    move/from16 v19, v4

    const/4 v5, 0x0

    const/16 v18, 0x2

    goto :goto_f

    :cond_1c
    const/4 v3, 0x4

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    :goto_f
    if-eqz v18, :cond_1e

    if-eqz v7, :cond_1e

    add-int/lit8 v4, v9, 0x1

    int-to-float v6, v9

    if-eqz v17, :cond_1d

    aget-byte v5, v17, v5

    :cond_1d
    int-to-float v4, v4

    aget v5, p1, v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x4

    int-to-float v3, v2

    add-int v0, v2, v18

    int-to-float v0, v0

    move v5, v6

    move v6, v4

    move v4, v5

    move v5, v0

    move v0, v2

    const/16 v21, 0x4

    move-object/from16 v2, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_1e
    move v0, v2

    const/16 v21, 0x4

    :goto_10
    add-int v2, v0, v18

    if-eqz v19, :cond_1f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzec;->zzf()V

    :goto_11
    move-object/from16 v7, p5

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v7, p5

    move/from16 v4, v19

    const/4 v0, 0x1

    goto/16 :goto_c

    :cond_20
    add-int/lit8 v9, v9, 0x2

    move/from16 v2, p3

    goto :goto_11

    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(IILcom/google/android/gms/internal/ads/zzec;)[B
    .locals 3

    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static m(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static n()[I
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_7

    and-int/lit8 v5, v4, 0x4

    and-int/lit8 v6, v4, 0x2

    and-int/lit8 v7, v4, 0x1

    const/16 v8, 0x8

    const/16 v9, 0xff

    if-ge v4, v8, :cond_3

    if-eq v3, v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    const/16 v7, 0xff

    :goto_1
    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_2

    const/16 v5, 0xff

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    invoke-static {v9, v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v5

    aput v5, v1, v4

    goto :goto_7

    :cond_3
    const/16 v8, 0x7f

    if-eq v3, v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    const/16 v7, 0x7f

    :goto_4
    if-eqz v6, :cond_5

    const/16 v6, 0x7f

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    invoke-static {v9, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v5

    aput v5, v1, v4

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public static o(Lcom/google/android/gms/internal/ads/zzec;I)Lg/arj;
    .locals 22

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/high16 v3, -0x1000000

    const v4, -0x808081

    const/4 v5, 0x0

    const/4 v6, -0x1

    filled-new-array {v5, v6, v3, v4}, [I

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaku;->n()[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaku;->q()[I

    move-result-object v6

    add-int/lit8 v7, p1, -0x2

    :goto_0
    if-lez v7, :cond_6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_0

    move-object v10, v3

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_1

    move-object v10, v4

    goto :goto_1

    :cond_1
    move-object v10, v6

    :goto_1
    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v12

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v13

    add-int/lit8 v7, v7, -0x6

    goto :goto_2

    :cond_2
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    const/4 v12, 0x2

    shl-int/2addr v11, v12

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v14

    shl-int/2addr v14, v13

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    shl-int/lit8 v13, v15, 0x4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v12

    shl-int/lit8 v9, v12, 0x6

    add-int/lit8 v7, v7, -0x4

    move v12, v13

    move v13, v9

    move v9, v11

    move v11, v14

    :goto_2
    const/16 v14, 0xff

    if-nez v9, :cond_3

    const/16 v13, 0xff

    :cond_3
    if-nez v9, :cond_4

    const/4 v12, 0x0

    :cond_4
    if-nez v9, :cond_5

    const/4 v11, 0x0

    :cond_5
    and-int/2addr v13, v14

    rsub-int v13, v13, 0xff

    add-int/lit8 v12, v12, -0x80

    move/from16 v16, v2

    int-to-double v1, v9

    add-int/lit8 v11, v11, -0x80

    move-object/from16 v17, v6

    int-to-double v5, v11

    const-wide v18, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v18, v18, v5

    move-object/from16 p1, v10

    add-double v9, v18, v1

    double-to-int v9, v9

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-byte v10, v13

    const/4 v11, 0x0

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-double v12, v12

    const-wide v18, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v18, v18, v12

    sub-double v18, v1, v18

    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v5, v5, v20

    sub-double v5, v18, v5

    double-to-int v5, v5

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-wide v18, 0x3ffc5a1cac083127L    # 1.772

    mul-double v12, v12, v18

    add-double/2addr v12, v1

    double-to-int v1, v12

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v9, v5, v1}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v1

    aput v1, p1, v8

    move/from16 v2, v16

    move-object/from16 v6, v17

    const/16 v1, 0x8

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v6

    new-instance v0, Lg/arj;

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v3, v4, v2}, Lg/arj;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static p(Lcom/google/android/gms/internal/ads/zzec;)Lg/cgk;
    .locals 6

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v0

    const/4 v4, 0x0

    if-lez v2, :cond_1

    new-array v5, v2, [B

    invoke-virtual {p0, v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzi([BII)V

    :cond_1
    if-lez v0, :cond_2

    new-array v2, v0, [B

    invoke-virtual {p0, v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzi([BII)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    :goto_1
    new-instance p0, Lg/cgk;

    invoke-direct {p0, v1, v3, v5, v2}, Lg/cgk;-><init>(IZ[B[B)V

    return-object p0
.end method

.method public static q()[I
    .locals 15

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    and-int/lit8 v7, v3, 0x2

    and-int/lit8 v8, v3, 0x4

    if-eq v6, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v4, 0xff

    :goto_1
    if-eqz v7, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    const/16 v7, 0x3f

    invoke-static {v7, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v7, v3, 0x88

    const/16 v8, 0xaa

    const/16 v9, 0x55

    if-eqz v7, :cond_19

    const/16 v10, 0x7f

    if-eq v7, v4, :cond_12

    const/16 v4, 0x80

    const/16 v8, 0x2b

    if-eq v7, v4, :cond_b

    const/16 v4, 0x88

    if-eq v7, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v7, v3, 0x1

    and-int/lit8 v10, v3, 0x20

    and-int/lit8 v11, v3, 0x2

    and-int/lit8 v12, v3, 0x40

    and-int/lit8 v13, v3, 0x4

    if-eq v6, v7, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/16 v6, 0x2b

    :goto_4
    if-eqz v4, :cond_6

    const/16 v4, 0x55

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-eqz v11, :cond_7

    const/16 v7, 0x2b

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    if-eqz v10, :cond_8

    const/16 v10, 0x55

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    :goto_7
    if-eqz v13, :cond_9

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    :goto_8
    if-eqz v12, :cond_a

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    add-int/2addr v6, v4

    add-int/2addr v7, v10

    add-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v7, v3, 0x1

    and-int/lit8 v11, v3, 0x20

    and-int/lit8 v12, v3, 0x2

    and-int/lit8 v13, v3, 0x40

    and-int/lit8 v14, v3, 0x4

    if-eq v6, v7, :cond_c

    const/4 v6, 0x0

    goto :goto_a

    :cond_c
    const/16 v6, 0x2b

    :goto_a
    add-int/2addr v6, v10

    if-eqz v4, :cond_d

    const/16 v4, 0x55

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    if-eqz v12, :cond_e

    const/16 v7, 0x2b

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    :goto_c
    add-int/2addr v7, v10

    if-eqz v11, :cond_f

    const/16 v11, 0x55

    goto :goto_d

    :cond_f
    const/4 v11, 0x0

    :goto_d
    if-eqz v14, :cond_10

    goto :goto_e

    :cond_10
    const/4 v8, 0x0

    :goto_e
    add-int/2addr v8, v10

    if-eqz v13, :cond_11

    goto :goto_f

    :cond_11
    const/4 v9, 0x0

    :goto_f
    add-int/2addr v6, v4

    add-int/2addr v7, v11

    add-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v5, v3, 0x1

    and-int/lit8 v7, v3, 0x20

    and-int/lit8 v11, v3, 0x2

    and-int/lit8 v12, v3, 0x40

    and-int/lit8 v13, v3, 0x4

    if-eq v6, v5, :cond_13

    const/4 v5, 0x0

    goto :goto_10

    :cond_13
    const/16 v5, 0x55

    :goto_10
    if-eqz v4, :cond_14

    const/16 v4, 0xaa

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    if-eqz v11, :cond_15

    const/16 v6, 0x55

    goto :goto_12

    :cond_15
    const/4 v6, 0x0

    :goto_12
    if-eqz v7, :cond_16

    const/16 v7, 0xaa

    goto :goto_13

    :cond_16
    const/4 v7, 0x0

    :goto_13
    if-eqz v13, :cond_17

    goto :goto_14

    :cond_17
    const/4 v9, 0x0

    :goto_14
    if-eqz v12, :cond_18

    goto :goto_15

    :cond_18
    const/4 v8, 0x0

    :goto_15
    add-int/2addr v9, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v4

    invoke-static {v10, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x10

    and-int/lit8 v7, v3, 0x1

    and-int/lit8 v10, v3, 0x20

    and-int/lit8 v11, v3, 0x2

    and-int/lit8 v12, v3, 0x40

    and-int/lit8 v13, v3, 0x4

    if-eq v6, v7, :cond_1a

    const/4 v6, 0x0

    goto :goto_16

    :cond_1a
    const/16 v6, 0x55

    :goto_16
    if-eqz v4, :cond_1b

    const/16 v4, 0xaa

    goto :goto_17

    :cond_1b
    const/4 v4, 0x0

    :goto_17
    if-eqz v11, :cond_1c

    const/16 v7, 0x55

    goto :goto_18

    :cond_1c
    const/4 v7, 0x0

    :goto_18
    if-eqz v10, :cond_1d

    const/16 v10, 0xaa

    goto :goto_19

    :cond_1d
    const/4 v10, 0x0

    :goto_19
    if-eqz v13, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v9, 0x0

    :goto_1a
    if-eqz v12, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v8, 0x0

    :goto_1b
    add-int/2addr v9, v8

    add-int/2addr v7, v10

    add-int/2addr v6, v4

    invoke-static {v5, v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzaku;->m(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int v2, v1, p3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzec;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v1

    const/16 v2, 0x30

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaku;->g:Lg/gxo;

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-lt v1, v2, :cond_b

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    const/16 v9, 0xf

    if-ne v2, v9, :cond_b

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    const/16 v9, 0x10

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v10

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zzb()I

    move-result v12

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v14

    if-le v13, v14, :cond_0

    const-string v1, "DvbParser"

    const-string v2, "Data field length exceeds limit"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget v1, v5, Lg/gxo;->d:I

    if-ne v10, v1, :cond_a

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v14

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    if-eqz v1, :cond_1

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v2

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v4

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v16, v8

    goto :goto_1

    :cond_1
    move/from16 v17, v14

    move/from16 v19, v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_1
    new-instance v13, Lg/dir;

    invoke-direct/range {v13 .. v19}, Lg/dir;-><init>(IIIIII)V

    iput-object v13, v5, Lg/gxo;->a:Lg/dir;

    goto/16 :goto_7

    :pswitch_1
    iget v1, v5, Lg/gxo;->d:I

    if-ne v10, v1, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaku;->p(Lcom/google/android/gms/internal/ads/zzec;)Lg/cgk;

    move-result-object v1

    iget-object v2, v5, Lg/gxo;->c:Landroid/util/SparseArray;

    iget v4, v1, Lg/cgk;->b:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    iget v1, v5, Lg/gxo;->g:I

    if-ne v10, v1, :cond_a

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaku;->p(Lcom/google/android/gms/internal/ads/zzec;)Lg/cgk;

    move-result-object v1

    iget-object v2, v5, Lg/gxo;->i:Landroid/util/SparseArray;

    iget v4, v1, Lg/cgk;->b:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget v1, v5, Lg/gxo;->d:I

    if-ne v10, v1, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzaku;->o(Lcom/google/android/gms/internal/ads/zzec;I)Lg/arj;

    move-result-object v1

    iget-object v2, v5, Lg/gxo;->b:Landroid/util/SparseArray;

    iget v4, v1, Lg/arj;->b:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget v1, v5, Lg/gxo;->g:I

    if-ne v10, v1, :cond_a

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzaku;->o(Lcom/google/android/gms/internal/ads/zzec;I)Lg/arj;

    move-result-object v1

    iget-object v2, v5, Lg/gxo;->e:Landroid/util/SparseArray;

    iget v4, v1, Lg/arj;->b:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    iget-object v2, v5, Lg/gxo;->f:Lg/gvg;

    iget-object v14, v5, Lg/gxo;->h:Landroid/util/SparseArray;

    iget v5, v5, Lg/gxo;->d:I

    if-ne v10, v5, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v16

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v17

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v18

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v19

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v20

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v21

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v22

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v23

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v24

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    add-int/lit8 v11, v11, -0xa

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_2
    if-lez v11, :cond_6

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v5

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v10

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    const/16 v15, 0xc

    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    add-int/lit8 v25, v11, -0x6

    if-eq v10, v6, :cond_5

    if-ne v10, v7, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v11, v25

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    add-int/lit8 v11, v11, -0x8

    :goto_4
    new-instance v10, Lg/buh;

    invoke-direct {v10, v8, v15}, Lg/buh;-><init>(II)V

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v15, Lg/aji;

    move-object/from16 v25, v4

    invoke-direct/range {v15 .. v25}, Lg/aji;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    move/from16 v1, v16

    iget v2, v2, Lg/gvg;->b:I

    if-nez v2, :cond_7

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aji;

    if-eqz v1, :cond_7

    const/4 v8, 0x0

    :goto_5
    iget-object v2, v1, Lg/aji;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v8, v4, :cond_7

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/buh;

    iget-object v5, v15, Lg/aji;->h:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    iget v1, v15, Lg/aji;->d:I

    invoke-virtual {v14, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    iget v2, v5, Lg/gxo;->d:I

    if-ne v10, v2, :cond_a

    iget-object v2, v5, Lg/gxo;->f:Lg/gvg;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v4

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    add-int/lit8 v11, v11, -0x2

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :goto_6
    if-lez v11, :cond_8

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v10

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v13

    new-instance v14, Lg/ca;

    invoke-direct {v14, v10, v13}, Lg/ca;-><init>(II)V

    invoke-virtual {v7, v8, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x6

    goto :goto_6

    :cond_8
    new-instance v1, Lg/gvg;

    invoke-direct {v1, v4, v6, v7}, Lg/gvg;-><init>(IILandroid/util/SparseArray;)V

    if-eqz v6, :cond_9

    iput-object v1, v5, Lg/gxo;->f:Lg/gvg;

    iget-object v1, v5, Lg/gxo;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v5, Lg/gxo;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v5, Lg/gxo;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_7

    :cond_9
    if-eqz v2, :cond_a

    iget v2, v2, Lg/gvg;->e:I

    if-eq v2, v4, :cond_a

    iput-object v1, v5, Lg/gxo;->f:Lg/gvg;

    :cond_a
    :goto_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zzb()I

    move-result v1

    sub-int/2addr v12, v1

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzo(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, v5, Lg/gxo;->f:Lg/gvg;

    if-nez v1, :cond_c

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaka;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v9

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v12, v10

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Ljava/util/List;JJ)V

    :goto_8
    move-object/from16 v1, p5

    goto/16 :goto_12

    :cond_c
    iget-object v2, v5, Lg/gxo;->a:Lg/dir;

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaku;->d:Lg/dir;

    :cond_d
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaku;->j:Landroid/graphics/Bitmap;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaku;->i:Landroid/graphics/Canvas;

    if-eqz v3, :cond_e

    iget v8, v2, Lg/dir;->c:I

    add-int/2addr v8, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v8, v3, :cond_e

    iget v3, v2, Lg/dir;->e:I

    add-int/2addr v3, v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaku;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v3, v8, :cond_f

    :cond_e
    iget v3, v2, Lg/dir;->c:I

    add-int/2addr v3, v6

    iget v8, v2, Lg/dir;->e:I

    add-int/2addr v8, v6

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaku;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    const/4 v15, 0x0

    :goto_9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v15, v8, :cond_1a

    invoke-virtual {v14}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/ca;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    iget-object v10, v5, Lg/gxo;->h:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/aji;

    iget v10, v8, Lg/ca;->a:I

    iget v11, v2, Lg/dir;->f:I

    iget v12, v2, Lg/dir;->e:I

    iget v13, v2, Lg/dir;->c:I

    add-int/2addr v10, v11

    iget v8, v8, Lg/ca;->b:I

    iget v11, v2, Lg/dir;->b:I

    add-int/2addr v8, v11

    iget v11, v9, Lg/aji;->i:I

    const/16 p2, 0x1

    iget v6, v9, Lg/aji;->e:I

    iget v7, v9, Lg/aji;->b:I

    add-int v4, v10, v11

    move-object/from16 v16, v1

    iget v1, v2, Lg/dir;->a:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v4, v8, v7

    move/from16 v17, v11

    iget v11, v2, Lg/dir;->d:I

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v14, v10, v8, v1, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, v5, Lg/gxo;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/arj;

    if-nez v1, :cond_10

    iget-object v1, v5, Lg/gxo;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/arj;

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaku;->e:Lg/arj;

    :cond_10
    iget-object v6, v9, Lg/aji;->h:Landroid/util/SparseArray;

    move-object/from16 v18, v2

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_16

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, Lg/buh;

    move/from16 v19, v8

    iget-object v8, v5, Lg/gxo;->c:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cgk;

    if-nez v8, :cond_11

    iget-object v8, v5, Lg/gxo;->i:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lg/cgk;

    :cond_11
    move-object v2, v8

    if-eqz v2, :cond_15

    iget-boolean v8, v2, Lg/cgk;->c:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    :goto_b
    move/from16 v21, v10

    goto :goto_c

    :cond_12
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaku;->f:Landroid/graphics/Paint;

    goto :goto_b

    :goto_c
    iget v10, v9, Lg/aji;->c:I

    move-object/from16 v22, v5

    iget v5, v6, Lg/buh;->a:I

    add-int v5, v21, v5

    iget v6, v6, Lg/buh;->b:I

    add-int v6, v19, v6

    move/from16 v23, v5

    const/4 v5, 0x3

    if-ne v10, v5, :cond_13

    iget-object v5, v1, Lg/arj;->a:[I

    :goto_d
    move/from16 v24, v13

    move-object v13, v8

    goto :goto_e

    :cond_13
    const/4 v5, 0x2

    if-ne v10, v5, :cond_14

    iget-object v5, v1, Lg/arj;->d:[I

    goto :goto_d

    :cond_14
    iget-object v5, v1, Lg/arj;->c:[I

    goto :goto_d

    :goto_e
    iget-object v8, v2, Lg/cgk;->d:[B

    move/from16 v26, v19

    move-object/from16 v19, v3

    move/from16 v3, v21

    move/from16 v21, v12

    move v12, v6

    move/from16 v6, v26

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v26

    move/from16 v26, v23

    move/from16 v23, v11

    move/from16 v11, v26

    move/from16 v26, v17

    move/from16 v17, v15

    move/from16 v15, v26

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzaku;->k([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v8, v2, Lg/cgk;->a:[B

    add-int/lit8 v12, v12, 0x1

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzaku;->k([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_f

    :cond_15
    move/from16 v6, v17

    move/from16 v17, v15

    move v15, v6

    move-object/from16 v22, v5

    move-object v5, v9

    move/from16 v23, v11

    move/from16 v21, v12

    move/from16 v24, v13

    move/from16 v6, v19

    move-object/from16 v19, v3

    move v3, v10

    :goto_f
    add-int/lit8 v11, v23, 0x1

    move/from16 v8, v17

    move/from16 v17, v15

    move v15, v8

    move v10, v3

    move-object v9, v5

    move v8, v6

    move-object/from16 v3, v19

    move-object/from16 v6, v20

    move/from16 v12, v21

    move-object/from16 v5, v22

    move/from16 v13, v24

    goto/16 :goto_a

    :cond_16
    move/from16 v6, v17

    move/from16 v17, v15

    move v15, v6

    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move v6, v8

    move-object v5, v9

    move v3, v10

    move/from16 v21, v12

    move/from16 v24, v13

    int-to-float v10, v6

    int-to-float v9, v3

    iget-boolean v2, v5, Lg/aji;->g:Z

    if-eqz v2, :cond_19

    iget v2, v5, Lg/aji;->c:I

    const/4 v8, 0x3

    if-ne v2, v8, :cond_17

    iget-object v1, v1, Lg/arj;->a:[I

    iget v2, v5, Lg/aji;->j:I

    aget v1, v1, v2

    const/4 v11, 0x2

    goto :goto_10

    :cond_17
    const/4 v11, 0x2

    if-ne v2, v11, :cond_18

    iget-object v1, v1, Lg/arj;->d:[I

    iget v2, v5, Lg/aji;->a:I

    aget v1, v1, v2

    goto :goto_10

    :cond_18
    iget-object v1, v1, Lg/arj;->c:[I

    iget v2, v5, Lg/aji;->f:I

    aget v1, v1, v2

    :goto_10
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaku;->h:Landroid/graphics/Paint;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int v1, v3, v15

    int-to-float v1, v1

    int-to-float v12, v4

    move v11, v1

    move-object v8, v14

    const/4 v1, 0x2

    const/4 v5, 0x3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_19
    const/4 v1, 0x2

    const/4 v5, 0x3

    :goto_11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcr;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaku;->j:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v6, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcr;

    move/from16 v3, v24

    int-to-float v3, v3

    div-float/2addr v9, v3

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzcr;->zzh(F)Lcom/google/android/gms/internal/ads/zzcr;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzi(I)Lcom/google/android/gms/internal/ads/zzcr;

    move/from16 v6, v21

    int-to-float v6, v6

    div-float/2addr v10, v6

    invoke-virtual {v2, v10, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zze(FI)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzf(I)Lcom/google/android/gms/internal/ads/zzcr;

    int-to-float v8, v15

    div-float/2addr v8, v3

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzcr;->zzk(F)Lcom/google/android/gms/internal/ads/zzcr;

    int-to-float v3, v7

    div-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzd(F)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v2

    move-object/from16 v9, v19

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v14, v4, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v15, v17, 0x1

    move-object v3, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v5, v22

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto/16 :goto_9

    :cond_1a
    move-object v9, v3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaka;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v12, v10

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Ljava/util/List;JJ)V

    goto/16 :goto_8

    :goto_12
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
