.class public final Lg/awa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Lg/cqw;

.field public static final b:Lg/boc;

.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final d:Ljava/lang/Object;


# instance fields
.field public e:I

.field public f:I

.field public final g:Lg/fpu;

.field public h:Ljava/lang/Exception;

.field public i:Lg/fgs;

.field public final j:Lg/ctl;

.field public k:Landroid/graphics/Bitmap;

.field public l:Ljava/util/ArrayList;

.field public final m:Lg/fnq;

.field public final n:Lg/yk;

.field public o:Lg/je;

.field public final p:I

.field public final q:Lg/gsp;

.field public final r:Lg/akf;

.field public s:Lg/gye;

.field public t:I

.field public u:Ljava/util/concurrent/Future;

.field public final v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/awa;->d:Ljava/lang/Object;

    new-instance v0, Lg/cqw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/cqw;-><init>(I)V

    sput-object v0, Lg/awa;->a:Lg/cqw;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lg/awa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lg/boc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/awa;->b:Lg/boc;

    return-void
.end method

.method public constructor <init>(Lg/akf;Lg/ctl;Lg/fnq;Lg/yk;Lg/fgs;Lg/gsp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/awa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lg/awa;->p:I

    iput-object p1, p0, Lg/awa;->r:Lg/akf;

    iput-object p2, p0, Lg/awa;->j:Lg/ctl;

    iput-object p3, p0, Lg/awa;->m:Lg/fnq;

    iput-object p4, p0, Lg/awa;->n:Lg/yk;

    iput-object p5, p0, Lg/awa;->i:Lg/fgs;

    iget-object p1, p5, Lg/fgs;->a:Ljava/lang/String;

    iput-object p1, p0, Lg/awa;->v:Ljava/lang/String;

    iget-object p1, p5, Lg/fgs;->e:Lg/fpu;

    iput-object p1, p0, Lg/awa;->g:Lg/fpu;

    iget-object p1, p1, Lg/fpu;->c:Lg/je;

    iput-object p1, p0, Lg/awa;->o:Lg/je;

    const/4 p1, 0x0

    iput p1, p0, Lg/awa;->e:I

    iput-object p6, p0, Lg/awa;->q:Lg/gsp;

    invoke-virtual {p6}, Lg/gsp;->f()I

    move-result p1

    iput p1, p0, Lg/awa;->t:I

    return-void
.end method

.method public static w(Lg/fpu;)V
    .locals 3

    iget-object p0, p0, Lg/fpu;->a:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object v0, Lg/awa;->a:Lg/cqw;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static x(Lg/cpv;Lg/fpu;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p0}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object p0

    const-wide/16 v0, 0x0

    sget-object v2, Lg/dxc;->b:Lg/gei;

    invoke-virtual {p0, v0, v1, v2}, Lg/deb;->f(JLg/gei;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x8

    sget-object v0, Lg/dxc;->c:Lg/gei;

    invoke-virtual {p0, v2, v3, v0}, Lg/deb;->f(JLg/gei;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lg/wd;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/wd;-><init>(Lg/dsy;I)V

    invoke-static {v0, p1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    iget-object p0, p0, Lg/deb;->b:Lg/cpv;

    invoke-virtual {v0, p0}, Lg/clq;->ae(Lg/cpv;)V

    iget-wide v2, v0, Lg/clq;->b:J

    invoke-virtual {v0, v2, v3}, Lg/clq;->z(J)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final aa(Lg/fgs;)V
    .locals 5

    iget-object v0, p0, Lg/awa;->i:Lg/fgs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lg/awa;->i:Lg/fgs;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/awa;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    iget-object p1, p1, Lg/fgs;->e:Lg/fpu;

    iget-object p1, p1, Lg/fpu;->c:Lg/je;

    iget-object v0, p0, Lg/awa;->o:Lg/je;

    if-ne p1, v0, :cond_7

    sget-object p1, Lg/je;->LOW:Lg/je;

    iget-object v0, p0, Lg/awa;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lg/awa;->i:Lg/fgs;

    if-nez v0, :cond_3

    if-eqz v1, :cond_6

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, v0, Lg/fgs;->e:Lg/fpu;

    iget-object p1, p1, Lg/fpu;->c:Lg/je;

    :cond_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Lg/awa;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_6

    iget-object v1, p0, Lg/awa;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fgs;

    iget-object v1, v1, Lg/fgs;->e:Lg/fpu;

    iget-object v1, v1, Lg/fpu;->c:Lg/je;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_5

    move-object p1, v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iput-object p1, p0, Lg/awa;->o:Lg/je;

    :cond_7
    iget-object p1, p0, Lg/awa;->r:Lg/akf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final run()V
    .locals 7

    iget-object v0, p0, Lg/awa;->j:Lg/ctl;

    const-string v1, "Picasso-Idle"

    const/4 v2, 0x6

    :try_start_0
    iget-object v3, p0, Lg/awa;->g:Lg/fpu;

    invoke-static {v3}, Lg/awa;->w(Lg/fpu;)V

    iget-object v3, p0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lg/awa;->y()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lg/awa;->k:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    iget-object v3, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v3, Lg/eqi;

    invoke-virtual {v3, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lg/ctl;->t(Lg/awa;)V
    :try_end_0
    .catch Lg/atg; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_5

    :goto_1
    :try_start_1
    iput-object v3, p0, Lg/awa;->h:Ljava/lang/Exception;

    iget-object v0, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_7

    :goto_3
    :try_start_2
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    iget-object v5, p0, Lg/awa;->n:Lg/yk;

    invoke-virtual {v5}, Lg/yk;->n()Lg/dsl;

    move-result-object v5

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5, v6}, Lg/dsl;->o(Ljava/io/PrintWriter;)V

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v5, p0, Lg/awa;->h:Ljava/lang/Exception;

    iget-object v0, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :goto_4
    iput-object v2, p0, Lg/awa;->h:Ljava/lang/Exception;

    iget-object v0, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :goto_5
    iget v4, v3, Lg/atg;->networkPolicy:I

    sget-object v5, Lg/sy;->OFFLINE:Lg/sy;

    iget v5, v5, Lg/sy;->index:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_6

    :cond_1
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_2

    iget v4, v3, Lg/atg;->code:I

    const/16 v5, 0x1f8

    if-eq v4, v5, :cond_3

    :cond_2
    iput-object v3, p0, Lg/awa;->h:Ljava/lang/Exception;

    :cond_3
    iget-object v0, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_7
    return-void

    :goto_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Landroid/graphics/Bitmap;
    .locals 13

    sget-object v0, Lg/alz;->NO_CACHE:Lg/alz;

    iget v0, v0, Lg/alz;->index:I

    iget-object v0, p0, Lg/awa;->m:Lg/fnq;

    iget-object v1, p0, Lg/awa;->v:Ljava/lang/String;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/cjm;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fta;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/fta;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/awa;->n:Lg/yk;

    iget-object v1, v1, Lg/yk;->j:Lg/eqi;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v1, Lg/gye;->MEMORY:Lg/gye;

    iput-object v1, p0, Lg/awa;->s:Lg/gye;

    iget-object v1, p0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_1
    iget v3, p0, Lg/awa;->t:I

    if-nez v3, :cond_2

    sget-object v3, Lg/sy;->OFFLINE:Lg/sy;

    iget v3, v3, Lg/sy;->index:I

    goto :goto_1

    :cond_2
    iget v3, p0, Lg/awa;->e:I

    :goto_1
    iput v3, p0, Lg/awa;->e:I

    iget-object v4, p0, Lg/awa;->q:Lg/gsp;

    iget-object v5, p0, Lg/awa;->g:Lg/fpu;

    invoke-virtual {v4, v5, v3}, Lg/gsp;->e(Lg/fpu;I)Lg/fkn;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, v3, Lg/fkn;->c:Ljava/lang/Object;

    check-cast v0, Lg/gye;

    iput-object v0, p0, Lg/awa;->s:Lg/gye;

    iget v0, v3, Lg/fkn;->b:I

    iput v0, p0, Lg/awa;->f:I

    iget-object v0, v3, Lg/fkn;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, v3, Lg/fkn;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/cpv;

    :try_start_0
    iget-object v0, p0, Lg/awa;->g:Lg/fpu;

    invoke-static {v3, v0}, Lg/awa;->x(Lg/cpv;Lg/fpu;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_3
    :goto_2
    move-object v4, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v0

    :goto_3
    if-eqz v4, :cond_10

    iget-object v0, p0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/awa;->n:Lg/yk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/dxc;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    if-ltz v3, :cond_f

    iget-object v0, v0, Lg/yk;->j:Lg/eqi;

    const/4 v11, 0x2

    invoke-virtual {v0, v11, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lg/awa;->g:Lg/fpu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/fpu;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget v0, p0, Lg/awa;->f:I

    if-eqz v0, :cond_10

    :goto_4
    sget-object v3, Lg/awa;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v0, p0, Lg/awa;->g:Lg/fpu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg/awa;->f:I

    const/4 v12, 0x1

    if-eqz v0, :cond_9

    iget-object v5, p0, Lg/awa;->g:Lg/fpu;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v0, :cond_7

    if-eqz v0, :cond_7

    packed-switch v0, :pswitch_data_0

    const/4 v5, 0x0

    goto :goto_5

    :pswitch_0
    const/16 v5, 0x10e

    goto :goto_5

    :pswitch_1
    const/16 v5, 0x5a

    goto :goto_5

    :pswitch_2
    const/16 v5, 0xb4

    :goto_5
    if-eq v0, v11, :cond_5

    const/4 v6, 0x7

    if-eq v0, v6, :cond_5

    const/4 v6, 0x4

    if-eq v0, v6, :cond_5

    const/4 v6, 0x5

    if-eq v0, v6, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    :goto_6
    if-eqz v5, :cond_6

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_6
    if-eq v0, v12, :cond_7

    int-to-float v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v9, v0, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_7
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v4, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v0

    :cond_8
    iget-object v0, p0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_9
    :goto_7
    iget-object v0, p0, Lg/awa;->g:Lg/fpu;

    iget-object v0, v0, Lg/fpu;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_b

    move-object v1, v4

    goto :goto_9

    :cond_b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_c

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_2
    :try_start_5
    sget-object v0, Lg/akf;->a:Lg/dae;

    new-instance v4, Lg/foq;

    invoke-direct {v4, v11}, Lg/foq;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    iget-object v0, p0, Lg/awa;->r:Lg/akf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v1

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_d
    :goto_a
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_10

    iget-object v0, p0, Lg/awa;->n:Lg/yk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    if-ltz v1, :cond_e

    iget-object v0, v0, Lg/yk;->j:Lg/eqi;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_b
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_c
    return-object v4

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final z()Z
    .locals 2

    iget-object v0, p0, Lg/awa;->i:Lg/fgs;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/awa;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg/awa;->u:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
