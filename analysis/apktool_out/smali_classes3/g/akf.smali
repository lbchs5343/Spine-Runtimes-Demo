.class public final Lg/akf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dae;

.field public static volatile b:Lg/akf;


# instance fields
.field public final c:Ljava/lang/ref/ReferenceQueue;

.field public final d:Lg/fnq;

.field public final e:Lg/yk;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/WeakHashMap;

.field public final h:Landroid/content/Context;

.field public final i:Lg/ctl;

.field public final j:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/dae;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lg/dae;-><init>(Landroid/os/Looper;IZ)V

    sput-object v0, Lg/akf;->a:Lg/dae;

    const/4 v0, 0x0

    sput-object v0, Lg/akf;->b:Lg/akf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/ctl;Lg/fnq;Lg/yk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/akf;->h:Landroid/content/Context;

    iput-object p2, p0, Lg/akf;->i:Lg/ctl;

    iput-object p3, p0, Lg/akf;->d:Lg/fnq;

    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lg/ckb;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lg/ckb;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/bup;

    invoke-direct {v0, p1}, Lg/bup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/byu;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/byu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/ckb;

    invoke-direct {v0, p1, v1}, Lg/ckb;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/bdh;

    invoke-direct {v0, p1}, Lg/bdh;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/byu;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lg/byu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lg/dam;

    iget-object p2, p2, Lg/ctl;->c:Ljava/lang/Object;

    check-cast p2, Lg/evf;

    invoke-direct {p1, p2, p4}, Lg/dam;-><init>(Lg/evf;Lg/yk;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg/akf;->f:Ljava/util/List;

    iput-object p4, p0, Lg/akf;->e:Lg/yk;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lg/akf;->g:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lg/akf;->j:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lg/akf;->c:Ljava/lang/ref/ReferenceQueue;

    new-instance p2, Lg/np;

    sget-object p3, Lg/akf;->a:Lg/dae;

    invoke-direct {p2, p1, p3}, Lg/np;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static k()Lg/akf;
    .locals 16

    sget-object v0, Lg/akf;->b:Lg/akf;

    if-nez v0, :cond_2

    const-class v1, Lg/akf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lg/akf;->b:Lg/akf;

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/picasso/PicassoProvider;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Lg/evf;

    invoke-direct {v6, v3}, Lg/evf;-><init>(Landroid/content/Context;)V

    new-instance v7, Lg/fnq;

    invoke-direct {v7, v3}, Lg/fnq;-><init>(Landroid/content/Context;)V

    new-instance v4, Lg/cp;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v15, Lg/dew;

    const/4 v0, 0x2

    invoke-direct {v15, v0}, Lg/dew;-><init>(I)V

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-wide/16 v11, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v8, Lg/yk;

    invoke-direct {v8, v7}, Lg/yk;-><init>(Lg/fnq;)V

    new-instance v2, Lg/ctl;

    sget-object v5, Lg/akf;->a:Lg/dae;

    invoke-direct/range {v2 .. v8}, Lg/ctl;-><init>(Landroid/content/Context;Lg/cp;Landroid/os/Handler;Lg/evf;Lg/fnq;Lg/yk;)V

    new-instance v0, Lg/akf;

    invoke-direct {v0, v3, v2, v7, v8}, Lg/akf;-><init>(Landroid/content/Context;Lg/ctl;Lg/fnq;Lg/yk;)V

    sput-object v0, Lg/akf;->b:Lg/akf;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    sget-object v0, Lg/akf;->b:Lg/akf;

    return-object v0
.end method


# virtual methods
.method public final l(Ljava/lang/String;)Lg/ekl;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lg/ekl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lg/ekl;-><init>(Lg/akf;Landroid/net/Uri;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Lg/ekl;

    invoke-direct {v0, p0, p1}, Lg/ekl;-><init>(Lg/akf;Landroid/net/Uri;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lg/dxc;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/akf;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fgs;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/fgs;->g:Z

    iget-object v1, p0, Lg/akf;->i:Lg/ctl;

    iget-object v1, v1, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v1, Lg/eqi;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lg/akf;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/awf;->e(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method call should happen from the main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Landroid/graphics/Bitmap;Lg/gye;Lg/fgs;Ljava/lang/Exception;)V
    .locals 2

    iget-boolean p4, p3, Lg/fgs;->g:Z

    iget-object v0, p3, Lg/fgs;->f:Lg/bvu;

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-boolean p4, p3, Lg/fgs;->d:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lg/akf;->g:Ljava/util/WeakHashMap;

    invoke-virtual {p3}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p3, Lg/fgs;->c:Lg/akf;

    iget-object p3, p3, Lg/akf;->h:Landroid/content/Context;

    sget v0, Lg/clu;->a:I

    invoke-virtual {p4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_3
    new-instance v1, Lg/clu;

    invoke-direct {v1, p3, p1, v0, p2}, Lg/clu;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lg/gye;)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Landroid/graphics/drawable/Animatable;

    if-eqz p2, :cond_7

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final o(Lg/fgs;)V
    .locals 3

    invoke-virtual {p1}, Lg/fgs;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/akf;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v0}, Lg/akf;->m(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/akf;->i:Lg/ctl;

    iget-object v0, v0, Lg/ctl;->i:Ljava/lang/Object;

    check-cast v0, Lg/eqi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
