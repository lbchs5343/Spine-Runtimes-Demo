.class public final Lg/bbf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/eum;


# direct methods
.method public synthetic constructor <init>(Lg/eum;I)V
    .locals 0

    iput p2, p0, Lg/bbf;->a:I

    iput-object p1, p0, Lg/bbf;->b:Lg/eum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lg/bbf;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    iput v1, v0, Lg/eum;->h:I

    const/4 v2, -0x1

    iput v2, v0, Lg/eum;->f:I

    iput-boolean v1, v0, Lg/eum;->s:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->y()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->ac()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    iget-object v1, v0, Lg/eum;->l:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lg/eum;->ad()V

    :cond_0
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    iget-object v0, v0, Lg/eum;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->af()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_b

    :cond_2
    iget-object v2, v0, Lg/eum;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_b

    :cond_3
    iget v2, v0, Lg/eum;->t:I

    const/4 v3, 0x1

    if-gtz v2, :cond_4

    goto :goto_0

    :cond_4
    iget v4, v0, Lg/eum;->h:I

    sub-int/2addr v2, v3

    if-ge v4, v2, :cond_5

    goto :goto_0

    :cond_5
    if-ne v4, v2, :cond_16

    iget v2, v0, Lg/eum;->f:I

    iget-object v4, v0, Lg/eum;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_16

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    iget v2, v0, Lg/eum;->f:I

    add-int/2addr v2, v3

    iput v2, v0, Lg/eum;->f:I

    iget-object v6, v0, Lg/eum;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_6

    iput v1, v0, Lg/eum;->f:I

    iget v2, v0, Lg/eum;->h:I

    add-int/2addr v2, v3

    iput v2, v0, Lg/eum;->h:I

    :cond_6
    iget v2, v0, Lg/eum;->f:I

    iget-object v6, v0, Lg/eum;->u:Ljava/util/ArrayList;

    if-ltz v2, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/biz;

    :goto_1
    move-object v6, v2

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_3
    const-wide/16 v12, 0x0

    if-nez v6, :cond_9

    move-wide v0, v12

    goto/16 :goto_9

    :cond_9
    iget-object v2, v0, Lg/eum;->e:Landroid/graphics/Rect;

    if-nez v2, :cond_a

    goto/16 :goto_8

    :cond_a
    :try_start_0
    iget-object v2, v0, Lg/eum;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v7, v0, Lg/eum;->p:I

    div-int/2addr v2, v7

    iget-object v7, v0, Lg/eum;->e:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, v0, Lg/eum;->p:I

    div-int/2addr v7, v8

    invoke-virtual {v0, v2, v7}, Lg/eum;->ae(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v7, v0, Lg/eum;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Canvas;

    if-nez v7, :cond_b

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v8, v0, Lg/eum;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v8, v2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_b
    :goto_4
    instance-of v8, v6, Lg/gyn;

    if-eqz v8, :cond_11

    iget-object v8, v0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v8, v0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget v8, v0, Lg/eum;->f:I

    const/4 v9, 0x2

    if-nez v8, :cond_c

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    iget-object v8, v0, Lg/eum;->k:Lg/eqt;

    iget-object v8, v8, Lg/eqt;->b:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v8, v0, Lg/eum;->k:Lg/eqt;

    iget-byte v10, v8, Lg/eqt;->a:B

    if-eq v10, v3, :cond_e

    if-eq v10, v9, :cond_d

    goto :goto_5

    :cond_d
    iget-object v3, v8, Lg/eqt;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v0, Lg/eum;->k:Lg/eqt;

    iget-object v3, v3, Lg/eqt;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_5

    :cond_e
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_5
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    :goto_6
    move-object v3, v6

    check-cast v3, Lg/gyn;

    iget-byte v3, v3, Lg/gyn;->q:B

    if-ne v3, v9, :cond_f

    iget-object v3, v0, Lg/eum;->k:Lg/eqt;

    iget-byte v8, v3, Lg/eqt;->a:B

    if-eq v8, v9, :cond_f

    iget-object v3, v3, Lg/eqt;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v0, Lg/eum;->k:Lg/eqt;

    iget-object v3, v3, Lg/eqt;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    :cond_f
    iget-object v3, v0, Lg/eum;->k:Lg/eqt;

    move-object v8, v6

    check-cast v8, Lg/gyn;

    iget-byte v8, v8, Lg/gyn;->q:B

    iput-byte v8, v3, Lg/eqt;->a:B

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-object v3, v6

    check-cast v3, Lg/gyn;

    iget-byte v3, v3, Lg/gyn;->p:B

    if-nez v3, :cond_10

    iget v3, v6, Lg/biz;->c:I

    iget v8, v0, Lg/eum;->p:I

    div-int v9, v3, v8

    iget v10, v6, Lg/biz;->d:I

    div-int v11, v10, v8

    iget v14, v6, Lg/biz;->g:I

    add-int/2addr v3, v14

    div-int/2addr v3, v8

    iget v14, v6, Lg/biz;->h:I

    add-int/2addr v10, v14

    div-int/2addr v10, v8

    invoke-virtual {v7, v9, v11, v3, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_10
    iget-object v1, v0, Lg/eum;->k:Lg/eqt;

    iget-object v1, v1, Lg/eqt;->b:Landroid/graphics/Rect;

    iget v3, v6, Lg/biz;->c:I

    iget v8, v0, Lg/eum;->p:I

    div-int v9, v3, v8

    iget v10, v6, Lg/biz;->d:I

    div-int v11, v10, v8

    iget v14, v6, Lg/biz;->g:I

    add-int/2addr v3, v14

    div-int/2addr v3, v8

    iget v14, v6, Lg/biz;->h:I

    add-int/2addr v10, v14

    div-int/2addr v10, v8

    invoke-virtual {v1, v9, v11, v3, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    iget v1, v6, Lg/biz;->g:I

    iget v3, v6, Lg/biz;->h:I

    invoke-virtual {v0, v1, v3}, Lg/eum;->ae(II)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v8, v0, Lg/eum;->j:Landroid/graphics/Paint;

    iget v9, v0, Lg/eum;->p:I

    invoke-virtual {v0}, Lg/eum;->ag()Lg/dcq;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lg/biz;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lg/dcq;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/eum;->z(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v10}, Lg/eum;->z(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0, v2}, Lg/eum;->z(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    iget v0, v6, Lg/biz;->f:I

    int-to-long v0, v0

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    iget-object v4, p0, Lg/bbf;->b:Lg/eum;

    iget-object v4, v4, Lg/eum;->q:Landroid/os/Handler;

    sub-long/2addr v0, v2

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v4, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    iget-object v0, v0, Lg/eum;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aex;

    iget-object v2, p0, Lg/bbf;->b:Lg/eum;

    iget-object v2, v2, Lg/eum;->o:Ljava/nio/ByteBuffer;

    check-cast v1, Lg/cpx;

    iget-object v3, v1, Lg/cpx;->i:Lg/eum;

    invoke-virtual {v3}, Lg/eum;->af()Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_a

    :cond_12
    iget-object v4, v1, Lg/cpx;->j:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    invoke-virtual {v3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v3, Lg/eum;->p:I

    div-int/2addr v4, v5

    invoke-virtual {v3}, Lg/eum;->x()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v3, v3, Lg/eum;->p:I

    div-int/2addr v5, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lg/cpx;->j:Landroid/graphics/Bitmap;

    :cond_14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget-object v4, v1, Lg/cpx;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    if-ge v3, v4, :cond_15

    const-string v1, "o00OOOoO0O"

    const-string v2, "onRender:Buffer not large enough for pixels"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_15
    iget-object v3, v1, Lg/cpx;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v2, v1, Lg/cpx;->b:Lg/eqi;

    iget-object v1, v1, Lg/cpx;->a:Lg/dyn;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_16
    iput-boolean v3, v0, Lg/eum;->s:Z

    :goto_b
    iget-object v0, p0, Lg/bbf;->b:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->ad()V

    :cond_17
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
