.class public final Lg/eum;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/graphics/Rect;


# instance fields
.field public final b:Lg/bbf;

.field public final c:Ljava/lang/Object;

.field public d:Lg/dcq;

.field public volatile e:Landroid/graphics/Rect;

.field public f:I

.field public final g:Ljava/util/WeakHashMap;

.field public h:I

.field public final i:Lg/fc;

.field public final j:Landroid/graphics/Paint;

.field public final k:Lg/eqt;

.field public final l:Ljava/util/HashSet;

.field public m:Lg/dcq;

.field public n:Lg/dbj;

.field public o:Ljava/nio/ByteBuffer;

.field public p:I

.field public final q:Landroid/os/Handler;

.field public final r:Ljava/util/HashSet;

.field public s:Z

.field public t:I

.field public final u:Ljava/util/ArrayList;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile w:Lg/agj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lg/eum;->a:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lg/fc;Lg/cpx;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/eum;->u:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lg/eum;->f:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/eum;->l:Ljava/util/HashSet;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lg/eum;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lg/bbf;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lg/bbf;-><init>(Lg/eum;I)V

    iput-object v1, p0, Lg/eum;->b:Lg/bbf;

    iput v2, p0, Lg/eum;->p:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lg/eum;->r:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lg/eum;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lg/eum;->g:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Lg/eum;->ag()Lg/dcq;

    move-result-object v1

    iput-object v1, p0, Lg/eum;->d:Lg/dcq;

    const/4 v1, 0x0

    iput-object v1, p0, Lg/eum;->n:Lg/dbj;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/eum;->s:Z

    sget-object v1, Lg/agj;->dq:Lg/agj;

    iput-object v1, p0, Lg/eum;->w:Lg/agj;

    iput-object p1, p0, Lg/eum;->i:Lg/fc;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/d/dq;->d()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lg/eum;->q:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lg/eum;->j:Landroid/graphics/Paint;

    new-instance p2, Lg/eqt;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p2, Lg/eqt;->b:Landroid/graphics/Rect;

    iput-object p2, p0, Lg/eum;->k:Lg/eqt;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final aa(Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lg/eum;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int p1, p1, v0

    iget v0, p0, Lg/eum;->p:I

    mul-int v0, v0, v0

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lg/eum;->d:Lg/dcq;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/eum;->ag()Lg/dcq;

    move-result-object p1

    iput-object p1, p0, Lg/eum;->d:Lg/dcq;

    :cond_0
    return-void
.end method

.method public final ab(Lg/dbj;)Landroid/graphics/Rect;
    .locals 12

    const-string v0, "\u0089PNG"

    invoke-virtual {p1, v0}, Lg/dbj;->c(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cxf;

    if-eqz v0, :cond_11

    const-string v0, "\r\n\u001a\n"

    invoke-virtual {p1, v0}, Lg/dbj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Lg/cxf;->c()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, v1, Lg/cxf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result v3

    invoke-virtual {p1}, Lg/dbj;->g()I

    move-result v4

    sget v5, Lg/dpn;->a:I

    if-ne v4, v5, :cond_0

    new-instance v4, Lg/dpn;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_0
    sget v5, Lg/bxt;->a:I

    if-ne v4, v5, :cond_1

    new-instance v4, Lg/bxt;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_1
    sget v5, Lg/aey;->a:I

    if-ne v4, v5, :cond_2

    new-instance v4, Lg/aey;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_2
    sget v5, Lg/dqv;->a:I

    if-ne v4, v5, :cond_3

    new-instance v4, Lg/dqv;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_3
    sget v5, Lg/bje;->a:I

    if-ne v4, v5, :cond_4

    new-instance v4, Lg/bje;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_4
    sget v5, Lg/ene;->a:I

    if-ne v4, v5, :cond_5

    new-instance v4, Lg/ene;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x5

    new-array v5, v5, [B

    iput-object v5, v4, Lg/ene;->g:[B

    goto :goto_1

    :cond_5
    new-instance v4, Lg/ape;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :goto_1
    iput v2, v4, Lg/ape;->d:I

    iput v3, v4, Lg/ape;->c:I

    invoke-virtual {v1}, Lg/cxf;->c()I

    move-result v2

    invoke-virtual {v4, p1}, Lg/ape;->b(Lg/dbj;)V

    invoke-virtual {v1}, Lg/cxf;->c()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v4, Lg/ape;->c:I

    if-gt v2, v3, :cond_7

    if-ge v2, v3, :cond_6

    sub-int/2addr v3, v2

    int-to-long v2, v3

    invoke-virtual {p1, v2, v3}, Lg/bgf;->aa(J)J

    :cond_6
    invoke-virtual {p1}, Lg/dbj;->b()I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Out of chunk area"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/ape;

    instance-of v10, v8, Lg/dpn;

    if-eqz v10, :cond_a

    check-cast v8, Lg/dpn;

    iget v5, v8, Lg/dpn;->f:I

    iput v5, p0, Lg/eum;->t:I

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    instance-of v10, v8, Lg/bxt;

    iget-object v11, p0, Lg/eum;->u:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    new-instance v4, Lg/gyn;

    check-cast v8, Lg/bxt;

    invoke-direct {v4, p1, v8}, Lg/gyn;-><init>(Lg/dbj;Lg/bxt;)V

    iput-object v1, v4, Lg/gyn;->o:Ljava/util/ArrayList;

    iput-object v3, v4, Lg/gyn;->m:[B

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    instance-of v10, v8, Lg/aey;

    if-eqz v10, :cond_c

    if-eqz v4, :cond_9

    iget-object v9, v4, Lg/gyn;->n:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    instance-of v10, v8, Lg/dqv;

    if-eqz v10, :cond_e

    if-nez v5, :cond_d

    new-instance v0, Lg/agw;

    invoke-direct {v0, p1}, Lg/biz;-><init>(Lg/dbj;)V

    iput v6, v0, Lg/biz;->g:I

    iput v7, v0, Lg/biz;->h:I

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v9, p0, Lg/eum;->t:I

    goto :goto_3

    :cond_d
    if-eqz v4, :cond_9

    iget-object v9, v4, Lg/gyn;->n:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    instance-of v9, v8, Lg/ene;

    if-eqz v9, :cond_f

    check-cast v8, Lg/ene;

    iget v6, v8, Lg/ene;->h:I

    iget v7, v8, Lg/ene;->f:I

    iget-object v3, v8, Lg/ene;->g:[B

    goto :goto_2

    :cond_f
    instance-of v9, v8, Lg/bje;

    if-nez v9, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    :goto_3
    mul-int p1, v6, v7

    iget v0, p0, Lg/eum;->p:I

    mul-int v0, v0, v0

    div-int v0, p1, v0

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    iget v0, p0, Lg/eum;->p:I

    mul-int v0, v0, v0

    div-int/2addr p1, v0

    add-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lg/eum;->k:Lg/eqt;

    iput-object p1, v0, Lg/eqt;->c:Ljava/nio/ByteBuffer;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_11
    new-instance p1, Lg/gng;

    const-string v0, "APNG Format error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ac()V
    .locals 5

    iget-object v0, p0, Lg/eum;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_0
    iget-object v0, p0, Lg/eum;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lg/eum;->n:Lg/dbj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/eum;->i:Lg/fc;

    new-instance v3, Lg/cxf;

    iget-object v0, v0, Lg/fc;->e:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-direct {v3, v0, v2}, Lg/cxf;-><init>(Ljava/nio/ByteBuffer;I)V

    new-instance v0, Lg/dbj;

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lg/bgf;-><init>(IZ)V

    iput-object v3, v0, Lg/bgf;->z:Ljava/lang/Object;

    iput-object v0, p0, Lg/eum;->n:Lg/dbj;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lg/bgf;->af()V

    :goto_0
    iget-object v0, p0, Lg/eum;->n:Lg/dbj;

    invoke-virtual {p0, v0}, Lg/eum;->ab(Lg/dbj;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/eum;->aa(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v0, Lg/agj;->d:Lg/agj;

    iput-object v0, p0, Lg/eum;->w:Lg/agj;

    iget v0, p0, Lg/eum;->t:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg/eum;->s:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lg/eum;->f:I

    iget-object v0, p0, Lg/eum;->b:Lg/bbf;

    invoke-virtual {v0}, Lg/bbf;->run()V

    iget-object v0, p0, Lg/eum;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aex;

    check-cast v2, Lg/cpx;

    iget-object v2, v2, Lg/cpx;->b:Lg/eqi;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    return-void

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v1, Lg/agj;->d:Lg/agj;

    iput-object v1, p0, Lg/eum;->w:Lg/agj;

    throw v0
.end method

.method public final ad()V
    .locals 3

    iget-object v0, p0, Lg/eum;->e:Landroid/graphics/Rect;

    sget-object v1, Lg/eum;->a:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v1, Lg/agj;->p:Lg/agj;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v2, Lg/agj;->dq:Lg/agj;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v2, Lg/agj;->ox:Lg/agj;

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Processing,wait for finish at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/eum;->w:Lg/agj;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oOOOoO000o"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v1, p0, Lg/eum;->w:Lg/agj;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lg/eum;->q:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lg/eum;->y()V

    return-void

    :cond_3
    iget-object v0, p0, Lg/eum;->q:Landroid/os/Handler;

    new-instance v1, Lg/bbf;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lg/bbf;-><init>(Lg/eum;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final ae(II)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lg/eum;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/eum;->r:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    if-lt v5, v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_0
    :goto_1
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, p1, p2, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    if-gtz p2, :cond_4

    goto :goto_5

    :cond_4
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    monitor-exit v0

    return-object v3

    :cond_5
    :goto_5
    monitor-exit v0

    return-object v2

    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final af()Z
    .locals 2

    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v1, Lg/agj;->d:Lg/agj;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v1, Lg/agj;->ox:Lg/agj;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ag()Lg/dcq;
    .locals 3

    iget-object v0, p0, Lg/eum;->m:Lg/dcq;

    if-nez v0, :cond_0

    new-instance v0, Lg/dcq;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/dcq;-><init>(IZ)V

    const/16 v1, 0x2800

    invoke-virtual {v0, v1}, Lg/dcq;->k(I)V

    iput-object v0, p0, Lg/eum;->m:Lg/dcq;

    :cond_0
    iget-object v0, p0, Lg/eum;->m:Lg/dcq;

    return-object v0
.end method

.method public final ah()V
    .locals 3

    iget-object v0, p0, Lg/eum;->e:Landroid/graphics/Rect;

    sget-object v1, Lg/eum;->a:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v1, Lg/agj;->d:Lg/agj;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v1, Lg/agj;->ox:Lg/agj;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v2, Lg/agj;->p:Lg/agj;

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " Processing,wait for finish at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/eum;->w:Lg/agj;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oOOOoO000o"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v1, p0, Lg/eum;->w:Lg/agj;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lg/eum;->q:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lg/eum;->ac()V

    return-void

    :cond_3
    iget-object v0, p0, Lg/eum;->q:Landroid/os/Handler;

    new-instance v1, Lg/bbf;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lg/bbf;-><init>(Lg/eum;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final x()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lg/eum;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/eum;->w:Lg/agj;

    sget-object v1, Lg/agj;->p:Lg/agj;

    if-ne v0, v1, :cond_0

    const-string v0, "oOOOoO000o"

    const-string v1, "In finishing,do not interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lg/eum;->q:Landroid/os/Handler;

    new-instance v2, Lg/efr;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3, v0}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lg/eum;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    sget-object v0, Lg/eum;->a:Landroid/graphics/Rect;

    return-object v0

    :cond_2
    iget-object v0, p0, Lg/eum;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lg/eum;->q:Landroid/os/Handler;

    iget-object v1, p0, Lg/eum;->b:Lg/bbf;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg/eum;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lg/eum;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/eum;->r:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lg/eum;->r:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lg/eum;->o:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v0, p0, Lg/eum;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :try_start_1
    iget-object v0, p0, Lg/eum;->n:Lg/dbj;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lg/eum;->n:Lg/dbj;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lg/eum;->k:Lg/eqt;

    iput-object v1, v0, Lg/eqt;->c:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lg/eum;->m:Lg/dcq;

    sget-object v0, Lg/agj;->dq:Lg/agj;

    iput-object v0, p0, Lg/eum;->w:Lg/agj;

    iget-object v0, p0, Lg/eum;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aex;

    check-cast v1, Lg/cpx;

    iget-object v1, v1, Lg/cpx;->b:Lg/eqi;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_4
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final z(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lg/eum;->c:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lg/eum;->r:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
