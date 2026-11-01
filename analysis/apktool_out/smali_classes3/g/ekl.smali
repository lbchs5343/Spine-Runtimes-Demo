.class public final Lg/ekl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final b:Lg/akf;

.field public final c:Lg/fdy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lg/ekl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lg/akf;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ekl;->b:Lg/akf;

    new-instance p1, Lg/fdy;

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lg/fdy;-><init>(IZ)V

    iput-object p2, p1, Lg/fdy;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/ekl;->c:Lg/fdy;

    return-void
.end method


# virtual methods
.method public final d(Landroid/widget/ImageView;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    sget-object v0, Lg/dxc;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    if-eqz p1, :cond_9

    iget-object v0, p0, Lg/ekl;->c:Lg/fdy;

    iget-object v1, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lg/ekl;->b:Lg/akf;

    if-nez v1, :cond_1

    invoke-virtual {v3, p1}, Lg/akf;->m(Ljava/lang/Object;)V

    sget v0, Lg/clu;->a:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lg/ekl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v1, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Lg/je;

    if-nez v1, :cond_2

    sget-object v1, Lg/je;->NORMAL:Lg/je;

    iput-object v1, v0, Lg/fdy;->a:Ljava/lang/Object;

    :cond_2
    new-instance v1, Lg/fpu;

    iget-object v4, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v0, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/je;

    invoke-direct {v1, v4, v0}, Lg/fpu;-><init>(Landroid/net/Uri;Lg/je;)V

    sget-object v0, Lg/dxc;->a:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/16 v6, 0x32

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lg/alz;->NO_CACHE:Lg/alz;

    iget v0, v0, Lg/alz;->index:I

    iget-object v0, v3, Lg/akf;->e:Lg/yk;

    iget-object v6, v3, Lg/akf;->d:Lg/fnq;

    iget-object v6, v6, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v6, Lg/cjm;

    invoke-virtual {v6, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fta;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lg/fta;->a:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    if-eqz v6, :cond_5

    iget-object v0, v0, Lg/yk;->j:Lg/eqi;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lg/yk;->j:Lg/eqi;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    if-eqz v6, :cond_7

    invoke-virtual {v3, p1}, Lg/akf;->m(Ljava/lang/Object;)V

    iget-object v0, v3, Lg/akf;->h:Landroid/content/Context;

    sget-object v1, Lg/gye;->MEMORY:Lg/gye;

    sget v2, Lg/clu;->a:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Animatable;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_6
    new-instance v3, Lg/clu;

    invoke-direct {v3, v0, v6, v2, v1}, Lg/clu;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lg/gye;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    sget v0, Lg/clu;->a:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_8
    new-instance v0, Lg/fgs;

    invoke-direct {v0, v3, p1, v1, v4}, Lg/fgs;-><init>(Lg/akf;Landroid/widget/ImageView;Lg/fpu;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lg/akf;->o(Lg/fgs;)V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method call should happen from the main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
