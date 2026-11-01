.class public Lg/dae;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    iput p2, p0, Lg/dae;->b:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;IZ)V
    .locals 0

    iput p2, p0, Lg/dae;->b:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V
    .locals 0

    iput p3, p0, Lg/dae;->b:I

    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p0, Lg/dae;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/dzr;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, v0, Lg/dzr;->a:Lg/ezv;

    goto :goto_2

    :cond_1
    iget-object p1, v0, Lg/dzr;->a:Lg/ezv;

    iget-object v0, v0, Lg/dzr;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p1, Lg/ezv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v0, p1, Lg/ezv;->j:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    iget-object v1, p1, Lg/ezv;->d:Lg/adh;

    iget-object v3, v1, Lg/adh;->a:Lg/ezv;

    if-ne v3, p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v2, v1, Lg/adh;->a:Lg/ezv;

    invoke-virtual {v1}, Lg/adh;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :cond_3
    :try_start_1
    iget-object v1, p1, Lg/ezv;->d:Lg/adh;

    iget-object v3, v1, Lg/adh;->m:Lg/ezv;

    if-eq v3, p1, :cond_4

    iget-object v0, v1, Lg/adh;->a:Lg/ezv;

    if-ne v0, p1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v2, v1, Lg/adh;->a:Lg/ezv;

    invoke-virtual {v1}, Lg/adh;->o()V

    goto :goto_0

    :cond_4
    iget-boolean v3, v1, Lg/adh;->l:Z

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v2, v1, Lg/adh;->m:Lg/ezv;

    iget-object v1, v1, Lg/adh;->f:Lg/fm;

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_6

    invoke-virtual {v1, v0}, Lg/fm;->q(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v0}, Lg/cet;->aa(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    :goto_0
    iget-object v0, p1, Lg/ezv;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1
    sget-object v0, Lg/egx;->FINISHED:Lg/egx;

    iput-object v0, p1, Lg/ezv;->e:Lg/egx;

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    iget-object p1, p1, Lg/ezv;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_12

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fgs;

    iget-object v5, v4, Lg/fgs;->c:Lg/akf;

    sget-object v6, Lg/alz;->NO_CACHE:Lg/alz;

    iget v6, v6, Lg/alz;->index:I

    iget-object v6, v4, Lg/fgs;->a:Ljava/lang/String;

    iget-object v7, v5, Lg/akf;->e:Lg/yk;

    iget-object v8, v5, Lg/akf;->d:Lg/fnq;

    iget-object v8, v8, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v8, Lg/cjm;

    invoke-virtual {v8, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fta;

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    iget-object v6, v6, Lg/fta;->a:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_8
    move-object v6, v8

    :goto_4
    if-eqz v6, :cond_9

    iget-object v7, v7, Lg/yk;->j:Lg/eqi;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_9
    iget-object v7, v7, Lg/yk;->j:Lg/eqi;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_5
    if-eqz v6, :cond_a

    sget-object v7, Lg/gye;->MEMORY:Lg/gye;

    invoke-virtual {v5, v6, v7, v4, v8}, Lg/akf;->n(Landroid/graphics/Bitmap;Lg/gye;Lg/fgs;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v5, v4}, Lg/akf;->o(Lg/fgs;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_12

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/awa;

    iget-object v5, v4, Lg/awa;->r:Lg/akf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lg/awa;->i:Lg/fgs;

    iget-object v7, v4, Lg/awa;->l:Ljava/util/ArrayList;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    if-nez v6, :cond_e

    if-eqz v8, :cond_10

    :cond_e
    iget-object v9, v4, Lg/awa;->g:Lg/fpu;

    iget-object v9, v9, Lg/fpu;->a:Landroid/net/Uri;

    iget-object v9, v4, Lg/awa;->h:Ljava/lang/Exception;

    iget-object v10, v4, Lg/awa;->k:Landroid/graphics/Bitmap;

    iget-object v4, v4, Lg/awa;->s:Lg/gye;

    if-eqz v6, :cond_f

    invoke-virtual {v5, v10, v4, v6, v9}, Lg/akf;->n(Landroid/graphics/Bitmap;Lg/gye;Lg/fgs;Ljava/lang/Exception;)V

    :cond_f
    if-eqz v8, :cond_10

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_10

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fgs;

    invoke-virtual {v5, v10, v4, v11, v9}, Lg/akf;->n(Landroid/graphics/Bitmap;Lg/gye;Lg/fgs;Ljava/lang/Exception;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg/fgs;

    iget-object v0, p1, Lg/fgs;->c:Lg/akf;

    invoke-virtual {p1}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/akf;->m(Ljava/lang/Object;)V

    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
