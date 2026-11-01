.class public Lg/chy;
.super Lg/grq;


# instance fields
.field public final f:Lg/hcl;

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/Rect;

.field public final i:Lg/gee;


# direct methods
.method public constructor <init>(Lg/fts;Lg/cbc;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lg/grq;-><init>(Lg/fts;Lg/cbc;)V

    new-instance v0, Lg/gee;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/gee;-><init>(II)V

    iput-object v0, p0, Lg/chy;->i:Lg/gee;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/chy;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/chy;->g:Landroid/graphics/Rect;

    iget-object p2, p2, Lg/cbc;->w:Ljava/lang/String;

    iget-object p1, p1, Lg/fts;->x:Lg/cgf;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/cgf;->e:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hcl;

    :goto_0
    iput-object p1, p0, Lg/chy;->f:Lg/hcl;

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v3, v1, Lg/chy;->h:Landroid/graphics/Rect;

    iget-object v4, v1, Lg/chy;->i:Lg/gee;

    iget-object v5, v1, Lg/chy;->g:Landroid/graphics/Rect;

    iget-object v6, v1, Lg/chy;->f:Lg/hcl;

    invoke-virtual {v1, v2}, Lg/grq;->bj(I)V

    iget-object v0, v1, Lg/grq;->au:Lg/cbc;

    iget-object v7, v0, Lg/cbc;->w:Ljava/lang/String;

    iget-object v8, v1, Lg/grq;->af:Lg/fts;

    invoke-virtual {v8}, Lg/fts;->aw()Lg/dpa;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    iget-object v11, v0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/hcl;

    if-nez v12, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v13, v12, Lg/hcl;->b:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v13, v0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v13, Lg/fsj;

    if-eqz v13, :cond_2

    invoke-interface {v13, v12}, Lg/fsj;->dq(Lg/hcl;)Landroid/graphics/Bitmap;

    move-result-object v13

    goto/16 :goto_3

    :cond_2
    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v13, v12, Lg/hcl;->c:Ljava/lang/String;

    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v16, 0x1

    const/16 v15, 0xa0

    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v15, "data:"

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "base64,"

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_4

    const/16 v0, 0x2c

    :try_start_0
    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v7, v0

    invoke-static {v0, v9, v7, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v7, Lg/dpa;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    monitor-exit v7

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-string v7, "data URL did not have correct base64 format."

    invoke-static {v7, v0}, Lg/hbp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {v0, v10, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Decoded image `"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "` is null."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/hbp;->b(Ljava/lang/String;)V

    :cond_5
    :goto_0
    move-object v13, v10

    goto :goto_3

    :cond_6
    iget v7, v12, Lg/hcl;->e:I

    iget v11, v12, Lg/hcl;->h:I

    sget-object v12, Lg/ebx;->c:Lg/cqw;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v12, v7, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-ne v12, v11, :cond_7

    move-object v13, v0

    goto :goto_1

    :cond_7
    const/4 v12, 0x1

    invoke-static {v0, v7, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v13, v7

    :goto_1
    invoke-static {v13}, Lg/dpa;->i(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to decode image `"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "`."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lg/hbp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v7, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    const-string v7, "Unable to open asset."

    invoke-static {v7, v0}, Lg/hbp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_3
    if-eqz v13, :cond_9

    move-object v10, v13

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    iget-object v10, v6, Lg/hcl;->b:Landroid/graphics/Bitmap;

    :cond_a
    :goto_4
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {}, Lg/ebx;->h()F

    move-result v0

    invoke-virtual {v4, v2}, Lg/gee;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v2, v8, Lg/fts;->aj:Z

    if-eqz v2, :cond_c

    iget v2, v6, Lg/hcl;->e:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iget v6, v6, Lg/hcl;->h:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v0, v6

    invoke-virtual {v5, v9, v9, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    move-object/from16 v2, p1

    goto :goto_6

    :cond_c
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v0, v6

    invoke-virtual {v5, v9, v9, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :goto_6
    invoke-virtual {v2, v10, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    :goto_7
    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lg/chy;->f:Lg/hcl;

    if-eqz p2, :cond_0

    invoke-static {}, Lg/ebx;->h()F

    move-result p3

    iget v0, p2, Lg/hcl;->e:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    iget p2, p2, Lg/hcl;->h:I

    int-to-float p2, p2

    mul-float p2, p2, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lg/grq;->ah:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method
