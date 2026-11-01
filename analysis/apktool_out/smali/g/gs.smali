.class public abstract Lg/gs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Landroid/os/HandlerThread;

.field public static volatile b:Landroid/os/Handler;

.field public static final c:Lg/hy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/hy;

    const-string v1, "NO_THREAD_ELEMENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gs;->c:Lg/hy;

    return-void
.end method

.method public static aa(I)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, -0x3361d2af

    mul-long v0, v0, v2

    long-to-int p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x1b873593

    mul-long v0, v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static ab(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "r"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static ac(Lg/amj;)Lg/eek;
    .locals 3

    instance-of v0, p0, Lg/cih;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lg/cih;

    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p0}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/eek;

    return-object p0

    :cond_1
    instance-of v0, p0, Lg/foe;

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_4

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-object v2

    :cond_3
    invoke-static {v1, p0}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/amj;

    invoke-static {p0}, Lg/gs;->ac(Lg/amj;)Lg/eek;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Lg/gck;

    invoke-static {p0}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lg/gs;->al(Lg/boj;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lg/gs;->c:Lg/hy;

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lg/glc;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Lg/glc;-><init>(ILg/boj;)V

    sget-object p1, Lg/gak;->a:Lg/gak;

    invoke-interface {p0, v0, p1}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lg/awf;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static ae(Lg/amj;)Lg/fep;
    .locals 5

    instance-of v0, p0, Lg/cih;

    if-eqz v0, :cond_1

    check-cast p0, Lg/cih;

    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lg/fep;

    invoke-direct {v1, p0, v0}, Lg/fep;-><init>(Lg/cih;Lg/eek;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lg/foe;

    if-eqz v0, :cond_3

    check-cast p0, Lg/foe;

    invoke-interface {p0}, Lg/foe;->e()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/brj;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lg/brj;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lg/gs;->ae(Lg/amj;)Lg/fep;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_6

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    invoke-static {p0}, Lg/acw;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/amj;

    invoke-static {p0}, Lg/gs;->ae(Lg/amj;)Lg/fep;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Lg/gck;

    invoke-static {p0}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static af()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lg/gs;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Lg/gs;->f()Landroid/os/HandlerThread;

    :cond_0
    sget-object v0, Lg/gs;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static ag(Lg/amj;Lg/cfm;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lg/bjk;

    iget-object v0, v0, Lg/bjk;->d:Lg/cfm;

    :goto_0
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    if-eq p0, p1, :cond_8

    if-nez p1, :cond_7

    sget-object p1, Lg/acq;->bh:Lg/acq;

    move-object v1, v0

    check-cast v1, Lg/lh;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, p1}, Lg/sm;->j(Lg/fky;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    instance-of p1, p0, Lg/cfm;

    if-eqz p1, :cond_6

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    sget-object v1, Lg/acq;->aa:Lg/acq;

    move-object v2, p1

    check-cast v2, Lg/lh;

    iget-object v2, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/guv;

    if-eqz v1, :cond_5

    instance-of v2, p1, Lg/cfm;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aea;

    iget-object v2, v2, Lg/aea;->d:Lg/eys;

    invoke-static {v2, v0}, Lg/gs;->ag(Lg/amj;Lg/cfm;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_5
    invoke-static {p1, v0}, Lg/gs;->ag(Lg/amj;Lg/cfm;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_7
    move-object v0, p1

    check-cast v0, Lg/bjk;

    iget-object v0, v0, Lg/bjk;->d:Lg/cfm;

    goto :goto_0

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static ah(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lg/fso;->ai(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static ai(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lg/eyt;->bh(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static final aj(Lg/vd;Lg/w;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lg/ckd;->h:Lg/hy;

    instance-of v1, p1, Lg/ayf;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lg/ayf;

    iget v2, v1, Lg/ayf;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lg/ayf;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lg/ayf;

    invoke-direct {v1, p1}, Lg/w;-><init>(Lg/bdp;)V

    :goto_0
    iget-object p1, v1, Lg/ayf;->result:Ljava/lang/Object;

    sget-object v2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v3, v1, Lg/ayf;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Lg/ayf;->L$1:Ljava/lang/Object;

    check-cast p0, Lg/bxm;

    iget-object v1, v1, Lg/ayf;->L$0:Ljava/lang/Object;

    check-cast v1, Lg/aye;

    :try_start_0
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Lg/dia; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    new-instance p1, Lg/aye;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lg/aye;->element:Ljava/lang/Object;

    new-instance v3, Lg/bxm;

    invoke-direct {v3, p1}, Lg/bxm;-><init>(Lg/aye;)V

    :try_start_1
    iput-object p1, v1, Lg/ayf;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lg/ayf;->L$1:Ljava/lang/Object;

    iput v4, v1, Lg/ayf;->label:I

    invoke-virtual {p0, v3, v1}, Lg/vd;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lg/dia; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v3

    :goto_1
    iget-object v2, p1, Lg/dia;->a:Lg/bxm;

    if-ne v2, p0, :cond_5

    :goto_2
    iget-object p0, v1, Lg/aye;->element:Ljava/lang/Object;

    if-eq p0, v0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    throw p1
.end method

.method public static ak(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lg/gs;->aa(I)I

    move-result p0

    return p0
.end method

.method public static final al(Lg/boj;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lg/gak;->e:Lg/gak;

    invoke-interface {p0, v0, v1}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lg/bff;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final am(Lg/gsn;Lg/bdp;Z)V
    .locals 2

    sget-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/gsn;->m(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lg/gsn;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_6

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/sk;

    iget-object p2, p1, Lg/sk;->d:Lg/w;

    iget-object p1, p1, Lg/sk;->b:Ljava/lang/Object;

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v0

    invoke-static {v0, p1}, Lg/gs;->ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lg/gs;->c:Lg/hy;

    if-eq p1, v1, :cond_1

    invoke-static {p2, v0, p1}, Lg/eyt;->bb(Lg/bdp;Lg/boj;Ljava/lang/Object;)Lg/aoa;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p2, p0}, Lg/bry;->_z(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lg/aoa;->_bh()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {v0, p1}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lg/aoa;->_bh()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    invoke-static {v0, p1}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    :cond_5
    throw p0

    :cond_6
    invoke-interface {p1, p0}, Lg/bdp;->_z(Ljava/lang/Object;)V

    return-void
.end method

.method public static an(Ljava/nio/ByteBuffer;Lg/cht;)[B
    .locals 5

    iget v0, p1, Lg/cht;->b:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    iget-wide v0, p1, Lg/cht;->i:J

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v0, p1, Lg/cht;->l:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int v1, v0

    new-array v0, v1, [B

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-virtual {p0, v2}, Ljava/util/zip/Inflater;->setInput([B)V

    invoke-virtual {p0, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/zip/DataFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected size of decompressed entry: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", got: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/zip/DataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Entry too large: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ao(Lg/edl;Lg/fjs;Lg/w;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p2, Lg/fey;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/fey;

    iget v1, v0, Lg/fey;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/fey;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/fey;

    invoke-direct {v0, p2}, Lg/w;-><init>(Lg/bdp;)V

    :goto_0
    iget-object p2, v0, Lg/fey;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/fey;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lg/fey;->L$0:Ljava/lang/Object;

    check-cast p0, Lg/aye;

    :try_start_0
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    new-instance p2, Lg/aye;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :try_start_1
    new-instance v2, Lg/ehq;

    invoke-direct {v2, p1, p2}, Lg/ehq;-><init>(Lg/fjs;Lg/aye;)V

    iput-object p2, v0, Lg/fey;->L$0:Ljava/lang/Object;

    iput v3, v0, Lg/fey;->label:I

    invoke-virtual {p0, v2, v0}, Lg/rb;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    iget-object p0, p0, Lg/aye;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_4
    invoke-virtual {v0}, Lg/w;->getContext()Lg/boj;

    move-result-object p2

    sget-object v0, Lg/dwm;->o:Lg/dwm;

    invoke-interface {p2, v0}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p2

    check-cast p2, Lg/dta;

    if-eqz p2, :cond_7

    check-cast p2, Lg/fyw;

    invoke-virtual {p2}, Lg/fyw;->ac()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lg/fyw;->ar()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    throw p1

    :cond_7
    :goto_3
    if-nez p0, :cond_8

    return-object p1

    :cond_8
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_9

    invoke-static {p0, p1}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    invoke-static {p1, p0}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ap(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lg/fzy;

    invoke-direct {v1, p0}, Lg/fzy;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lg/fzy;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lg/fai;->a:Lg/fai;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lg/fzy;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lg/fzy;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lg/cro;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Lg/fzy;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lg/fzy;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lg/dcv;->bo(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lg/bkk;->a(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    :goto_4
    const/4 v7, -0x1

    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lg/egh;->bh(C)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, -0x1

    :goto_5
    if-ne v5, v7, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9

    move-object v3, v4

    goto :goto_7

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v3, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_a

    move-object v3, v6

    goto :goto_6

    :cond_b
    :goto_7
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {v1}, Lg/grj;->bd(Ljava/util/List;)I

    move-result v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_12

    check-cast v7, Ljava/lang/String;

    if-eqz v5, :cond_d

    if-ne v5, v3, :cond_e

    :cond_d
    invoke-static {v7}, Lg/dcv;->bo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v5, v4

    goto :goto_b

    :cond_e
    invoke-static {v7, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v2, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-le v2, v5, :cond_f

    goto :goto_a

    :cond_f
    move v5, v2

    :goto_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "substring(...)"

    invoke-static {v5, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    if-eqz v5, :cond_10

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move v5, v8

    goto :goto_9

    :cond_11
    const-string p0, "Requested character count "

    const-string v0, " is less than zero."

    invoke-static {v2, p0, v0}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {}, Lg/grj;->m()V

    throw v4

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v6, v0}, Lg/gsv;->bj(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final aq(Lg/dqx;)Lg/bhw;
    .locals 1

    instance-of v0, p0, Lg/bhw;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/bhw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    new-instance v0, Lg/bhw;

    invoke-direct {v0, p0}, Lg/bhw;-><init>(Lg/dqx;)V

    move-object p0, v0

    :goto_0
    check-cast p0, Lg/bhw;

    return-object p0
.end method

.method public static ar(Landroid/content/Context;Lg/dzh;I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p1, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lg/eyt;->bh(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lg/dzh;->aa(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static as(Lg/amj;)Z
    .locals 3

    instance-of v0, p0, Lg/cih;

    if-eqz v0, :cond_0

    check-cast p0, Lg/cih;

    sget-object v0, Lg/hay;->BREAK:Lg/hay;

    invoke-static {p0, v0}, Lg/ffb;->cd(Lg/cih;Lg/hay;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_2

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/amj;

    invoke-static {p0}, Lg/gs;->as(Lg/amj;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown container type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static at(Lg/amj;)I
    .locals 2

    instance-of v0, p0, Lg/cih;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lg/cih;

    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    iget v0, v0, Lg/ccm;->bp:I

    if-eqz v0, :cond_0

    return v0

    :cond_1
    instance-of v0, p0, Lg/aoo;

    if-eqz v0, :cond_2

    check-cast p0, Lg/aoo;

    check-cast p0, Lg/eiy;

    invoke-virtual {p0}, Lg/eiy;->ac()I

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Lg/foe;

    if-eqz v0, :cond_6

    check-cast p0, Lg/foe;

    invoke-interface {p0}, Lg/foe;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {v0}, Lg/gs;->at(Lg/amj;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_5
    :goto_0
    return v1

    :cond_6
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_9

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {v0}, Lg/gs;->at(Lg/amj;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public static au(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "application/vnd.android.package-archive"

    const/4 v4, 0x1

    if-lt p1, v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const/16 p1, 0x1a

    invoke-static {p1}, Lg/dyd;->bp(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lg/bnl;->h(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lg/gqc;

    invoke-direct {p1, p0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12047b

    invoke-virtual {p1, v1}, Lg/gqc;->am(I)Lg/gqc;

    const v1, 0x7f1203c1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v4

    const v1, 0x7f12014a

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, Lg/die;

    iput-object v1, v2, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance v1, Lg/dtm;

    invoke-direct {v1, p0, v3, v0}, Lg/dtm;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const v0, 0x7f120084

    invoke-virtual {p1, v0, v1}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    new-instance v0, Lg/ads;

    invoke-direct {v0, p0, v4}, Lg/ads;-><init>(Landroid/app/Activity;I)V

    const v1, 0x7f120082

    invoke-virtual {p1, v1, v0}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lg/gqc;->r()Lg/fpl;

    move-result-object p1

    invoke-static {p0, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return-void

    :cond_2
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static final av(Lg/boj;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lg/gs;->c:Lg/hy;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/glc;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lg/glc;

    iget-object p0, p1, Lg/glc;->b:[Lg/od;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    aget-object p0, p0, v0

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p0, p1, Lg/glc;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    throw v1

    :cond_2
    sget-object p1, Lg/gak;->g:Lg/gak;

    invoke-interface {p0, v1, p1}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, p1}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lg/awf;->e(Ljava/lang/Object;)V

    throw v1
.end method

.method public static aw(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1030001

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static ax(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static ay(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_9

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_5

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_4

    check-cast v4, Landroid/os/Bundle;

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v4, v3}, Lg/gs;->ay(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    return v1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    return v1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return v1

    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_9
    :goto_1
    move-object p1, v3

    move-object p0, v4

    goto :goto_2

    :cond_a
    return v0

    :cond_b
    :goto_2
    if-nez p0, :cond_c

    if-nez p1, :cond_c

    return v0

    :cond_c
    return v1
.end method

.method public static az(Lg/fza;Lg/amj;)Z
    .locals 1

    instance-of v0, p1, Lg/cih;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/cfm;

    if-eqz v0, :cond_3

    check-cast p1, Lg/cfm;

    invoke-interface {p1}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {p0, v0}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance p0, Lg/gck;

    invoke-static {p1}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ba(Lg/amj;)I
    .locals 3

    instance-of v0, p0, Lg/cih;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lg/cih;

    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_4

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {v0}, Lg/gs;->ba(Lg/amj;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    new-instance v0, Lg/gck;

    invoke-static {p0}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final bb(Lg/bdp;)Lg/gsn;
    .locals 6

    instance-of v0, p0, Lg/sk;

    if-nez v0, :cond_0

    new-instance v0, Lg/gsn;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lg/gsn;-><init>(ILg/bdp;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lg/sk;

    sget-object v1, Lg/baf;->s:Lg/hy;

    sget-object v2, Lg/sk;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_1

    :cond_2
    instance-of v5, v3, Lg/gsn;

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v3, Lg/gsn;

    :goto_1
    if-eqz v3, :cond_6

    sget-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lg/vj;

    if-eqz v2, :cond_4

    check-cast v1, Lg/vj;

    iget-object v1, v1, Lg/vj;->a:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lg/gsn;->u()V

    goto :goto_2

    :cond_4
    sget-object v1, Lg/gsn;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Lg/ghp;->a:Lg/ghp;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    new-instance v0, Lg/gsn;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lg/gsn;-><init>(ILg/bdp;)V

    return-object v0

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_3

    goto :goto_0

    :cond_8
    if-eq v3, v1, :cond_1

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bc(Landroid/util/JsonReader;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const-string v2, "lel"

    const-string v3, "lottie_back"

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "hd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vid"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lg/gs;->l(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_5

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static bd(Landroid/content/Context;Landroid/content/res/TypedArray;II)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    return p0
.end method

.method public static be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    move-object/from16 v1, p5

    const-string v2, "SELECT * FROM "

    if-eqz p0, :cond_8

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v8

    const-string v5, "SQLITE_MASTER"

    const-string v7, "name=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v5, p3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, v5

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v5, v3

    :goto_1
    :try_start_2
    iget-object v6, p0, Lg/bgm;->g:Lg/dvb;

    const-string v7, "Error querying for table"

    invoke-virtual {v6, p2, v7, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :goto_2
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIMIT 0"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, ","

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_3

    aget-object v7, v2, v6

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing required column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_3
    if-eqz v1, :cond_5

    :goto_4
    array-length v2, v1

    if-ge v5, v2, :cond_5

    aget-object v2, v1, v5

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Table has extra columns. table, columns"

    const-string v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    iget-object p0, p0, Lg/bgm;->b:Lg/dvb;

    const-string v0, "Failed to verify columns on table that was just created"

    invoke-virtual {p0, p2, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    :goto_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Ljava/lang/Throwable;Lg/boj;)V
    .locals 4

    sget-object v0, Lg/fhg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gxh;

    :try_start_0
    invoke-virtual {v1, p0}, Lg/gxh;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p0, v1, :cond_0

    move-object v2, p0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p0}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lg/byg;

    invoke-direct {v0, p1}, Lg/byg;-><init>(Lg/boj;)V

    invoke-static {p0, v0}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Landroid/util/JsonReader;Lg/dac;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xca7

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0xccc

    if-eq v1, v2, :cond_1

    const v2, 0x1a213

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "lel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_1
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v4, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lg/gs;->l(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p1, Lg/dac;->g:Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lg/dac;->d:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p1, Lg/dac;->b:I

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static f()Landroid/os/HandlerThread;
    .locals 3

    sget-object v0, Lg/gs;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    const-class v0, Lg/gs;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/gs;->a:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "default_npth_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lg/gs;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lg/gs;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lg/gs;->b:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lg/gs;->a:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static g(Lg/cih;Lg/amj;)Z
    .locals 2

    invoke-static {p0}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->RETURN:Lg/hay;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lg/hay;->THROW:Lg/hay;

    if-ne v0, v1, :cond_3

    sget-object v0, Lg/acq;->al:Lg/acq;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p0

    check-cast p0, Lg/coe;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lg/coe;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aea;

    iget-object v0, v0, Lg/aea;->i:Lg/fza;

    invoke-static {v0, p1}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_3
    sget-object v1, Lg/hay;->BREAK:Lg/hay;

    if-ne v0, v1, :cond_7

    sget-object v0, Lg/acq;->at:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/frs;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lg/frs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gcv;

    iget-object v1, v1, Lg/gcv;->c:Lg/fza;

    invoke-static {v1, p1}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_5
    sget-object v0, Lg/acq;->x:Lg/acq;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p0

    check-cast p0, Lg/dhu;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lg/dhu;->a:Lg/gcv;

    iget-object p0, p0, Lg/gcv;->c:Lg/fza;

    invoke-static {p0, p1}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Unknown"

    return-object p0

    :pswitch_1
    const-string p0, "undefined"

    return-object p0

    :pswitch_2
    const-string p0, "TreeSet"

    return-object p0

    :pswitch_3
    const-string p0, "Set"

    return-object p0

    :pswitch_4
    const-string p0, "EOF"

    return-object p0

    :pswitch_5
    const-string p0, "ident"

    return-object p0

    :pswitch_6
    const-string p0, ":"

    return-object p0

    :pswitch_7
    const-string p0, ","

    return-object p0

    :pswitch_8
    const-string p0, "]"

    return-object p0

    :pswitch_9
    const-string p0, "["

    return-object p0

    :pswitch_a
    const-string p0, "}"

    return-object p0

    :pswitch_b
    const-string p0, "{"

    return-object p0

    :pswitch_c
    const-string p0, ")"

    return-object p0

    :pswitch_d
    const-string p0, "("

    return-object p0

    :pswitch_e
    const-string p0, "new"

    return-object p0

    :pswitch_f
    const-string p0, "null"

    return-object p0

    :pswitch_10
    const-string p0, "false"

    return-object p0

    :pswitch_11
    const-string p0, "true"

    return-object p0

    :pswitch_12
    const-string p0, "iso8601"

    return-object p0

    :pswitch_13
    const-string p0, "string"

    return-object p0

    :pswitch_14
    const-string p0, "float"

    return-object p0

    :pswitch_15
    const-string p0, "int"

    return-object p0

    :pswitch_16
    const-string p0, "error"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static i(Lg/cih;Lg/amj;)Lg/amj;
    .locals 2

    instance-of v0, p1, Lg/cih;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_3

    return-object p1

    :cond_0
    instance-of v0, p1, Lg/cfm;

    if-eqz v0, :cond_4

    check-cast p1, Lg/cfm;

    invoke-interface {p1}, Lg/cfm;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/amj;

    invoke-static {p0, v1}, Lg/gs;->i(Lg/cih;Lg/amj;)Lg/amj;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of p0, v1, Lg/cih;

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance p0, Lg/gck;

    invoke-static {p1}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".font"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static k(Landroidx/fragment/app/u;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lg/ub;

    if-eqz v0, :cond_1

    check-cast p0, Lg/ub;

    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg/gkl;->aa(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static l(Landroid/util/JsonReader;)Lorg/json/JSONArray;
    .locals 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xcfc

    const/4 v5, 0x1

    const-string v6, "hd"

    const-string v7, "vid"

    if-eq v3, v4, :cond_1

    const v4, 0x1c811

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v2, -0x1

    :goto_3
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Lg/amj;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "Null container variable"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown container type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lg/amj;Ljava/util/HashSet;)V
    .locals 1

    instance-of v0, p0, Lg/cih;

    if-eqz v0, :cond_0

    check-cast p0, Lg/cih;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_2

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {v0, p1}, Lg/gs;->o(Lg/amj;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lg/gck;

    invoke-static {p0}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static p(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0, p1}, Lg/gs;->s(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lg/gs;->ax(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lg/gs;->ax(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static q(Lg/amj;Lg/amj;)Z
    .locals 4

    instance-of v0, p1, Lg/fza;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lg/fza;

    iget-object v0, v0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v0, v0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lg/cih;

    invoke-static {p1, p0}, Lg/gs;->g(Lg/cih;Lg/amj;)Z

    move-result p0

    return p0

    :cond_3
    instance-of v0, p1, Lg/foe;

    if-eqz v0, :cond_4

    check-cast p1, Lg/foe;

    invoke-interface {p1}, Lg/foe;->e()Ljava/util/List;

    move-result-object p0

    new-instance p1, Lg/brj;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, Lg/brj;-><init>(I)V

    invoke-static {p0, p1}, Lg/acw;->bh(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p1, Lg/cih;

    if-eqz v0, :cond_5

    check-cast p1, Lg/cih;

    invoke-static {p1, p0}, Lg/gs;->g(Lg/cih;Lg/amj;)Z

    move-result p0

    return p0

    :cond_5
    instance-of v0, p1, Lg/cfm;

    if-eqz v0, :cond_7

    check-cast p1, Lg/cfm;

    invoke-interface {p1}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v2, p1}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    invoke-static {p0, p1}, Lg/gs;->q(Lg/amj;Lg/amj;)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_1
    return v2

    :cond_6
    return v1

    :cond_7
    new-instance p0, Lg/gck;

    invoke-static {p1}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Landroid/util/JsonReader;)Lg/cgf;
    .locals 54

    move-object/from16 v1, p0

    invoke-static {}, Lg/ebx;->h()F

    move-result v2

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    new-instance v10, Lg/gnb;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lg/dac;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lg/bul;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lg/cgf;

    invoke-direct {v13}, Lg/cgf;-><init>()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v21

    const/16 v22, 0xa

    const/16 v23, 0x9

    const/16 v24, 0x8

    const/16 v25, 0x7

    const-string v14, "h"

    move/from16 v27, v2

    const-string v2, "layers"

    move/from16 v28, v15

    const-string v15, "w"

    const/16 v29, 0x5

    const/16 v30, 0x6

    move-object/from16 v31, v5

    sparse-switch v21, :sswitch_data_0

    :goto_1
    const/4 v0, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "markers"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xe

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "timer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "fonts"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "chars"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "op"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "ip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v5, "gc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    goto :goto_2

    :sswitch_7
    const-string v5, "fr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x7

    goto :goto_2

    :sswitch_8
    const-string v5, "dl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x6

    goto :goto_2

    :sswitch_9
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_a
    const-string v5, "v"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_b
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_c
    const-string v5, "globalEvent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_e
    const-string v5, "assets"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x0

    :goto_2
    const-string v5, "fFamily"

    move-object/from16 v35, v6

    const-string v6, "id"

    move-object/from16 v36, v2

    const-string v2, "el"

    move-object/from16 v37, v14

    const-string v14, "lel"

    move-object/from16 v38, v3

    const-string v3, "inel"

    move/from16 v39, v0

    const/16 v0, 0xca7

    packed-switch v39, :pswitch_data_0

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v39, v8

    goto/16 :goto_1f

    :pswitch_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_5
    const/4 v5, -0x1

    goto :goto_6

    :sswitch_f
    const-string v6, "tm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_5

    :cond_f
    const/4 v5, 0x2

    goto :goto_6

    :sswitch_10
    const-string v6, "dr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_5

    :cond_10
    const/4 v5, 0x1

    goto :goto_6

    :sswitch_11
    const-string v6, "cm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_1

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v2, v5

    goto :goto_4

    :pswitch_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v3, v5

    goto :goto_4

    :pswitch_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_12
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    new-instance v5, Lg/ewh;

    invoke-direct {v5, v0, v2, v3}, Lg/ewh;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_13
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v39, v8

    :goto_7
    move-object/from16 v6, v31

    move-object/from16 v2, v35

    move-object/from16 v8, v38

    move-object/from16 v38, v12

    goto/16 :goto_3e

    :pswitch_4
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_8
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v39, v8

    const/16 v8, 0xc33

    if-eq v15, v8, :cond_1a

    if-eq v15, v0, :cond_19

    const/16 v8, 0xd1b

    if-eq v15, v8, :cond_18

    const/16 v8, 0xd5a

    if-eq v15, v8, :cond_17

    const/16 v8, 0xe78

    if-eq v15, v8, :cond_16

    const v8, 0x1a213

    if-eq v15, v8, :cond_15

    const v8, 0x31648c

    if-eq v15, v8, :cond_14

    goto :goto_9

    :cond_14
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x4

    goto :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_15
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x6

    goto :goto_a

    :cond_16
    const-string v8, "tl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x2

    goto :goto_a

    :cond_17
    const-string v8, "ke"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    goto :goto_a

    :cond_18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x5

    goto :goto_a

    :cond_1a
    const-string v8, "at"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x3

    goto :goto_a

    :cond_1b
    :goto_9
    const/4 v5, -0x1

    :goto_a
    packed-switch v5, :pswitch_data_2

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    :goto_b
    move-object/from16 v8, v39

    goto :goto_8

    :pswitch_5
    invoke-static {v1}, Lg/gs;->l(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, v10, Lg/gnb;->o:Ljava/lang/Object;

    goto :goto_b

    :pswitch_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lg/gnb;->l:Ljava/lang/Object;

    goto :goto_b

    :pswitch_7
    const/4 v5, -0x1

    filled-new-array {v5, v5}, [I

    move-result-object v8

    iput-object v8, v10, Lg/gnb;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    const/4 v5, 0x0

    :goto_c
    const/4 v8, 0x2

    if-ge v5, v8, :cond_1d

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, v10, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v8, [I

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v15

    aput v15, v8, v5

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1d
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_b

    :pswitch_8
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lg/gnb;->i:Ljava/lang/Object;

    goto :goto_b

    :pswitch_9
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lg/gnb;->n:Ljava/lang/Object;

    goto :goto_b

    :pswitch_a
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lg/gnb;->m:Ljava/lang/Object;

    goto :goto_b

    :pswitch_b
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    iput v5, v10, Lg/gnb;->k:I

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v39, v8

    goto :goto_d

    :cond_1e
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_c
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_e
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_e

    :cond_1f
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    :goto_f
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2

    :goto_11
    const/4 v6, -0x1

    goto :goto_12

    :sswitch_12
    const-string v8, "fName"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto :goto_11

    :cond_20
    const/4 v6, 0x3

    goto :goto_12

    :sswitch_13
    const-string v8, "fStyle"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_11

    :cond_21
    const/4 v6, 0x2

    goto :goto_12

    :sswitch_14
    const-string v8, "ascent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto :goto_11

    :cond_22
    const/4 v6, 0x1

    goto :goto_12

    :sswitch_15
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_11

    :cond_23
    const/4 v6, 0x0

    :goto_12
    packed-switch v6, :pswitch_data_3

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_10

    :pswitch_d
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :pswitch_e
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :pswitch_f
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    goto :goto_10

    :pswitch_10
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_24
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    new-instance v6, Lg/glv;

    invoke-direct {v6, v0, v2, v3}, Lg/glv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_25
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_e

    :cond_26
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_7

    :pswitch_11
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    :goto_13
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const-wide/16 v2, 0x0

    move-wide/from16 v43, v2

    const/16 v42, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    :goto_14
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    :goto_15
    const/4 v2, -0x1

    goto :goto_16

    :sswitch_16
    const-string v3, "style"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_15

    :cond_27
    const/4 v2, 0x5

    goto :goto_16

    :sswitch_17
    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_15

    :cond_28
    const/4 v2, 0x4

    goto :goto_16

    :sswitch_18
    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_15

    :cond_29
    const/4 v2, 0x3

    goto :goto_16

    :sswitch_19
    const-string v3, "ch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_15

    :cond_2a
    const/4 v2, 0x2

    goto :goto_16

    :sswitch_1a
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_15

    :cond_2b
    const/4 v2, 0x1

    goto :goto_16

    :sswitch_1b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v2, 0x0

    :goto_16
    packed-switch v2, :pswitch_data_4

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_14

    :pswitch_12
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v45

    goto :goto_14

    :pswitch_13
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    goto :goto_14

    :pswitch_14
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_17
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "shapes"

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    :goto_18
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v1, v13}, Lg/baf;->z(Landroid/util/JsonReader;Lg/cgf;)Lg/dpy;

    move-result-object v2

    check-cast v2, Lg/ewz;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2d
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_17

    :cond_2e
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_17

    :cond_2f
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_14

    :pswitch_15
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v42

    goto/16 :goto_14

    :pswitch_16
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v43

    goto/16 :goto_14

    :pswitch_17
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_14

    :cond_30
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    new-instance v40, Lg/fki;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v46}, Lg/fki;-><init>(Ljava/util/ArrayList;CDLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v0}, Lg/fki;->hashCode()I

    move-result v2

    invoke-virtual {v9, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_13

    :cond_31
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_7

    :pswitch_18
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3c23d70a    # 0.01f

    sub-float v18, v0, v2

    :goto_19
    move/from16 v2, v27

    move/from16 v15, v28

    :goto_1a
    move-object/from16 v5, v31

    move-object/from16 v6, v35

    move-object/from16 v3, v38

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    goto :goto_19

    :pswitch_1a
    move-object/from16 v39, v8

    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_1b
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc43

    if-eq v2, v3, :cond_36

    const/16 v3, 0xca0

    if-eq v2, v3, :cond_35

    const/16 v3, 0xdf3

    if-eq v2, v3, :cond_34

    const/16 v3, 0xe52

    if-eq v2, v3, :cond_33

    const v3, 0x18199

    if-eq v2, v3, :cond_32

    goto :goto_1c

    :cond_32
    const-string v2, "cpf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x4

    goto :goto_1d

    :catch_2
    move-exception v0

    goto/16 :goto_1e

    :cond_33
    const-string v2, "se"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    goto :goto_1d

    :cond_34
    const-string v2, "pc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x3

    goto :goto_1d

    :cond_35
    const-string v2, "ee"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x2

    goto :goto_1d

    :cond_36
    const-string v2, "be"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_1d

    :cond_37
    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    if-eqz v0, :cond_3c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3b

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_39

    const/4 v2, 0x4

    if-eq v0, v2, :cond_38

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1b

    :cond_38
    invoke-static {v1, v11}, Lg/gs;->e(Landroid/util/JsonReader;Lg/dac;)V

    goto :goto_1b

    :cond_39
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, v11, Lg/dac;->a:I

    goto :goto_1b

    :cond_3a
    const/4 v5, 0x3

    invoke-static {v1}, Lg/gs;->bc(Landroid/util/JsonReader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v11, Lg/dac;->f:Ljava/util/HashMap;

    goto :goto_1b

    :cond_3b
    const/4 v5, 0x3

    invoke-static {v1}, Lg/gs;->bc(Landroid/util/JsonReader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v11, Lg/dac;->e:Ljava/util/HashMap;

    goto/16 :goto_1b

    :cond_3c
    const/4 v5, 0x3

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, v11, Lg/dac;->c:I

    goto/16 :goto_1b

    :cond_3d
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_1b
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v19, v0

    goto/16 :goto_19

    :pswitch_1c
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_19

    :pswitch_1d
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v15

    move/from16 v2, v27

    goto/16 :goto_1a

    :pswitch_1e
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v26, 0x0

    aget-object v2, v0, v26

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v21, 0x1

    aget-object v3, v0, v21

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v33, 0x2

    aget-object v0, v0, v33

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x4

    if-ge v2, v5, :cond_3e

    goto :goto_20

    :cond_3e
    if-le v2, v5, :cond_3f

    goto :goto_1f

    :cond_3f
    if-ge v3, v5, :cond_40

    goto :goto_20

    :cond_40
    if-le v3, v5, :cond_41

    goto :goto_1f

    :cond_41
    if-ltz v0, :cond_42

    :goto_1f
    goto/16 :goto_7

    :cond_42
    :goto_20
    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v13, v0}, Lg/cgf;->t(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1f
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v16

    goto/16 :goto_19

    :pswitch_20
    move-object/from16 v39, v8

    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_21
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v0, :cond_45

    const v8, 0x1a213

    if-eq v6, v8, :cond_44

    const v15, 0x31648c

    if-eq v6, v15, :cond_43

    goto :goto_22

    :cond_43
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x0

    goto :goto_23

    :catch_3
    move-exception v0

    goto/16 :goto_25

    :cond_44
    const v15, 0x31648c

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x2

    goto :goto_23

    :cond_45
    const v8, 0x1a213

    const v15, 0x31648c

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x1

    goto :goto_23

    :cond_46
    :goto_22
    const/4 v5, -0x1

    :goto_23
    if-eqz v5, :cond_49

    const/4 v6, 0x1

    if-eq v5, v6, :cond_48

    const/4 v6, 0x2

    if-eq v5, v6, :cond_47

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_21

    :cond_47
    invoke-static {v1}, Lg/gs;->l(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, v12, Lg/bul;->c:Lorg/json/JSONArray;

    goto :goto_21

    :cond_48
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lg/bul;->a:Ljava/lang/String;

    goto :goto_21

    :cond_49
    const/4 v5, -0x1

    filled-new-array {v5, v5}, [I

    move-result-object v6

    const/4 v5, 0x1

    new-array v0, v5, [[I

    const/16 v26, 0x0

    aput-object v6, v0, v26

    iput-object v0, v12, Lg/bul;->b:[[I

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    const/4 v0, 0x0

    :goto_24
    const/4 v6, 0x2

    if-ge v0, v6, :cond_4b

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    iget-object v5, v12, Lg/bul;->b:[[I

    const/16 v26, 0x0

    aget-object v5, v5, v26

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    aput v6, v5, v0

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_4b
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    :cond_4c
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    const/16 v0, 0xca7

    goto/16 :goto_21

    :cond_4d
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_21
    move-object/from16 v39, v8

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    const/4 v0, 0x0

    :goto_26
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {v1, v13}, Lg/aky;->ac(Landroid/util/JsonReader;Lg/cgf;)Lg/cbc;

    move-result-object v2

    iget-object v3, v2, Lg/cbc;->g:Lg/ayj;

    sget-object v5, Lg/ayj;->ox:Lg/ayj;

    if-ne v3, v5, :cond_4e

    add-int/lit8 v0, v0, 0x1

    :cond_4e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, v2, Lg/cbc;->e:J

    move-object/from16 v8, v38

    invoke-virtual {v8, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v2, 0x4

    if-le v0, v2, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "You have "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg/hbp;->b(Ljava/lang/String;)V

    :cond_4f
    move-object/from16 v38, v8

    goto :goto_26

    :cond_50
    move-object/from16 v8, v38

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v38, v12

    move-object/from16 v6, v31

    move-object/from16 v2, v35

    goto/16 :goto_3e

    :pswitch_22
    move-object/from16 v39, v8

    move-object/from16 v8, v38

    const/4 v5, 0x3

    const/16 v34, 0x4

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    :goto_27
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v38, v12

    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    :goto_28
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v40

    sparse-switch v40, :sswitch_data_4

    :goto_29
    move-object/from16 v51, v3

    :goto_2a
    move-object/from16 v3, v37

    const/4 v0, -0x1

    :goto_2b
    move-object/from16 v37, v2

    move-object/from16 v2, v36

    goto/16 :goto_2e

    :sswitch_1c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_29

    :cond_51
    move-object/from16 v51, v3

    move-object/from16 v3, v37

    const/16 v0, 0xa

    goto :goto_2b

    :sswitch_1d
    move-object/from16 v51, v3

    const-string v3, "rel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_2c

    :cond_52
    move-object/from16 v3, v37

    const/16 v0, 0x9

    goto :goto_2b

    :sswitch_1e
    move-object/from16 v51, v3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_2c

    :cond_53
    move-object/from16 v3, v37

    const/16 v0, 0x8

    goto :goto_2b

    :sswitch_1f
    move-object/from16 v51, v3

    const-string v3, "tc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_2c

    :cond_54
    move-object/from16 v3, v37

    const/4 v0, 0x7

    goto :goto_2b

    :sswitch_20
    move-object/from16 v51, v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_2c

    :cond_55
    move-object/from16 v3, v37

    const/4 v0, 0x6

    goto :goto_2b

    :sswitch_21
    move-object/from16 v51, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_2c

    :cond_56
    move-object/from16 v3, v37

    const/4 v0, 0x5

    goto :goto_2b

    :sswitch_22
    move-object/from16 v51, v3

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_2c

    :cond_57
    move-object/from16 v3, v37

    const/4 v0, 0x4

    goto :goto_2b

    :sswitch_23
    move-object/from16 v51, v3

    const-string v3, "u"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_2c

    :cond_58
    move-object/from16 v3, v37

    const/4 v0, 0x3

    goto :goto_2b

    :sswitch_24
    move-object/from16 v51, v3

    const-string v3, "p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    :goto_2c
    goto/16 :goto_2a

    :cond_59
    move-object/from16 v3, v37

    const/4 v0, 0x2

    goto/16 :goto_2b

    :sswitch_25
    move-object/from16 v51, v3

    move-object/from16 v3, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v37, v2

    move-object/from16 v2, v36

    if-nez v0, :cond_5a

    goto :goto_2d

    :cond_5a
    const/4 v0, 0x1

    goto :goto_2e

    :sswitch_26
    move-object/from16 v51, v3

    move-object/from16 v3, v37

    move-object/from16 v37, v2

    move-object/from16 v2, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    :goto_2d
    const/4 v0, -0x1

    goto :goto_2e

    :cond_5b
    const/4 v0, 0x0

    :goto_2e
    packed-switch v0, :pswitch_data_5

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    goto/16 :goto_3b

    :pswitch_23
    move-object/from16 v36, v2

    const/4 v2, 0x1

    new-array v0, v2, [[I

    const/4 v2, -0x1

    filled-new-array {v2, v2}, [I

    move-result-object v32

    const/16 v26, 0x0

    aput-object v32, v0, v26

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5e

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    move-object/from16 v33, v3

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_2f
    if-ge v2, v3, :cond_5d

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_5c

    aget-object v40, v0, v26

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v49

    aput v49, v40, v2

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    const/16 v26, 0x0

    goto :goto_2f

    :cond_5d
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_30

    :cond_5e
    move-object/from16 v33, v3

    const/4 v3, 0x2

    :goto_30
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v49, v0

    :goto_31
    move-object/from16 v2, v37

    move-object/from16 v3, v51

    :goto_32
    move-object/from16 v37, v33

    goto/16 :goto_28

    :pswitch_24
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v46

    goto :goto_31

    :pswitch_25
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    const/4 v3, 0x2

    invoke-static {v1}, Lg/gs;->l(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v50

    goto :goto_31

    :pswitch_26
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_33
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    new-instance v2, Lg/fhe;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    :goto_34
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_67

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v52, v6

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v53, v14

    const/16 v14, 0x63

    if-eq v6, v14, :cond_65

    const/16 v14, 0x66

    if-eq v6, v14, :cond_64

    const/16 v14, 0x6c

    if-eq v6, v14, :cond_63

    const/16 v14, 0x73

    if-eq v6, v14, :cond_62

    const/16 v14, 0xc51

    if-eq v6, v14, :cond_61

    const/16 v14, 0xd79

    if-eq v6, v14, :cond_60

    const v14, 0x1799e

    if-eq v6, v14, :cond_5f

    goto :goto_35

    :cond_5f
    :try_start_6
    const-string v6, "ali"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x6

    goto :goto_36

    :catch_4
    move-exception v0

    goto/16 :goto_39

    :cond_60
    const-string v6, "le"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x1

    goto :goto_36

    :cond_61
    const-string v6, "bs"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x5

    goto :goto_36

    :cond_62
    const-string v6, "s"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x2

    goto :goto_36

    :cond_63
    const-string v6, "l"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x0

    goto :goto_36

    :cond_64
    const-string v6, "f"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x4

    goto :goto_36

    :cond_65
    const-string v6, "c"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x3

    goto :goto_36

    :cond_66
    :goto_35
    const/4 v3, -0x1

    :goto_36
    packed-switch v3, :pswitch_data_6

    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    :goto_37
    move-object/from16 v6, v52

    move-object/from16 v14, v53

    const/4 v3, 0x2

    goto/16 :goto_34

    :pswitch_27
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lg/fhe;->g:Ljava/lang/String;

    goto :goto_37

    :pswitch_28
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v2, Lg/fhe;->d:I

    goto :goto_37

    :pswitch_29
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lg/fhe;->a:Ljava/lang/String;

    goto :goto_37

    :pswitch_2a
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lg/fhe;->f:Ljava/lang/String;

    goto :goto_37

    :pswitch_2b
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v2, Lg/fhe;->b:I

    goto :goto_37

    :pswitch_2c
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v2, Lg/fhe;->e:I

    goto :goto_37

    :pswitch_2d
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v2, Lg/fhe;->c:I

    goto :goto_37

    :catch_5
    move-exception v0

    :goto_38
    move-object/from16 v53, v14

    goto :goto_39

    :catch_6
    move-exception v0

    move-object/from16 v52, v6

    goto :goto_38

    :cond_67
    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v6, v52

    move-object/from16 v14, v53

    const/4 v3, 0x2

    goto/16 :goto_33

    :cond_68
    move-object/from16 v52, v6

    move-object/from16 v53, v14

    move-object/from16 v47, v0

    goto :goto_3a

    :goto_39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v47, 0x0

    :goto_3a
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    :goto_3b
    move-object/from16 v2, v37

    move-object/from16 v3, v51

    move-object/from16 v6, v52

    move-object/from16 v14, v53

    goto/16 :goto_32

    :pswitch_2e
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_31

    :pswitch_2f
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v48

    goto/16 :goto_31

    :pswitch_30
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v41

    goto/16 :goto_31

    :pswitch_31
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_31

    :pswitch_32
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_31

    :pswitch_33
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v42

    goto/16 :goto_31

    :pswitch_34
    move-object/from16 v36, v2

    move-object/from16 v33, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    :goto_3c
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-static {v1, v13}, Lg/aky;->ac(Landroid/util/JsonReader;Lg/cgf;)Lg/cbc;

    move-result-object v0

    iget-wide v2, v0, Lg/cbc;->e:J

    invoke-virtual {v12, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_69
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_3b

    :cond_6a
    move-object/from16 v51, v3

    move-object/from16 v52, v6

    move-object/from16 v53, v14

    move-object/from16 v33, v37

    move-object/from16 v37, v2

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v44, :cond_6b

    new-instance v40, Lg/hcl;

    invoke-direct/range {v40 .. v50}, Lg/hcl;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;[[ILorg/json/JSONArray;)V

    move-object/from16 v2, v35

    move-object/from16 v0, v40

    move-object/from16 v3, v43

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d
    move-object/from16 v2, v37

    move-object/from16 v12, v38

    move-object/from16 v3, v51

    move-object/from16 v6, v52

    move-object/from16 v14, v53

    const/4 v5, 0x3

    move-object/from16 v37, v33

    goto/16 :goto_27

    :cond_6b
    move-object/from16 v6, v31

    move-object/from16 v2, v35

    move-object/from16 v3, v43

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_6c
    move-object/from16 v38, v12

    move-object/from16 v6, v31

    move-object/from16 v2, v35

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    :goto_3e
    move-object v5, v6

    move-object v3, v8

    move/from16 v15, v28

    move-object/from16 v12, v38

    move-object/from16 v8, v39

    move-object v6, v2

    move/from16 v2, v27

    goto/16 :goto_0

    :cond_6d
    move/from16 v27, v2

    move-object v2, v6

    move-object/from16 v39, v8

    move-object/from16 v38, v12

    move/from16 v28, v15

    move-object v8, v3

    move-object v6, v5

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    int-to-float v0, v15

    mul-float v0, v0, v27

    float-to-int v0, v0

    move/from16 v14, v16

    int-to-float v1, v14

    mul-float v1, v1, v27

    float-to-int v1, v1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v13, Lg/cgf;->o:Landroid/graphics/Rect;

    move/from16 v1, v17

    iput v1, v13, Lg/cgf;->b:F

    move/from16 v1, v18

    iput v1, v13, Lg/cgf;->f:F

    move/from16 v1, v19

    iput v1, v13, Lg/cgf;->l:F

    iput-object v4, v13, Lg/cgf;->m:Ljava/util/ArrayList;

    iput-object v8, v13, Lg/cgf;->a:Landroid/util/LongSparseArray;

    iput-object v6, v13, Lg/cgf;->q:Ljava/util/HashMap;

    iput-object v2, v13, Lg/cgf;->e:Ljava/util/HashMap;

    iput-object v9, v13, Lg/cgf;->r:Landroid/util/SparseArray;

    iput-object v7, v13, Lg/cgf;->g:Ljava/util/HashMap;

    move-object/from16 v1, v39

    iput-object v1, v13, Lg/cgf;->i:Ljava/util/ArrayList;

    iput-object v10, v13, Lg/cgf;->k:Lg/gnb;

    move-object/from16 v15, v20

    iput-object v15, v13, Lg/cgf;->p:Ljava/lang/String;

    iput-object v11, v13, Lg/cgf;->s:Lg/dac;

    move-object/from16 v1, v38

    iput-object v1, v13, Lg/cgf;->j:Lg/bul;

    return-object v13

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_e
        -0x42252abe -> :sswitch_d
        -0x3395b349 -> :sswitch_c
        0x68 -> :sswitch_b
        0x76 -> :sswitch_a
        0x77 -> :sswitch_9
        0xc88 -> :sswitch_8
        0xccc -> :sswitch_7
        0xcdc -> :sswitch_6
        0xd27 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x5a3d7dd -> :sswitch_3
        0x5d17e04 -> :sswitch_2
        0x6940745 -> :sswitch_1
        0x3205f379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_11
        :pswitch_c
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xc6a -> :sswitch_11
        0xc8e -> :sswitch_10
        0xe79 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f471c96 -> :sswitch_15
        -0x53f6d326 -> :sswitch_14
        -0x4d298315 -> :sswitch_13
        0x5c24c11 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x6f471c96 -> :sswitch_1b
        0x77 -> :sswitch_1a
        0xc65 -> :sswitch_19
        0x2eefaa -> :sswitch_18
        0x35e001 -> :sswitch_17
        0x68b1db1 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x42252abe -> :sswitch_26
        0x68 -> :sswitch_25
        0x70 -> :sswitch_24
        0x75 -> :sswitch_23
        0x77 -> :sswitch_22
        0xca7 -> :sswitch_21
        0xd1b -> :sswitch_20
        0xe6f -> :sswitch_1f
        0x1a213 -> :sswitch_1e
        0x1b899 -> :sswitch_1d
        0x31648c -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method

.method public static s(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lg/gs;->ax(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    const-string p1, "TypefaceCompatUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lg/gs;->ax(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    invoke-static {v2}, Lg/gs;->ax(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "|"

    invoke-static {v0}, Lg/dcv;->bo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Lg/fzy;

    invoke-direct {v1, p0}, Lg/fzy;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lg/fzy;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lg/fai;->a:Lg/fai;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lg/fzy;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lg/fzy;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lg/cro;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Lg/fzy;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lg/fzy;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {v1}, Lg/grj;->bd(Ljava/util/List;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x0

    if-ltz v5, :cond_b

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_3

    if-ne v5, v2, :cond_4

    :cond_3
    invoke-static {v6}, Lg/dcv;->bo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x0

    :goto_3
    const/4 v10, -0x1

    if-ge v9, v5, :cond_6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lg/egh;->bh(C)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, -0x1

    :goto_4
    if-ne v9, v10, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v6, v9, v0, v4}, Lg/dmc;->bz(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, "substring(...)"

    invoke-static {v8, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    :goto_5
    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    move-object v8, v6

    :goto_6
    if-eqz v8, :cond_a

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v5, v7

    goto :goto_2

    :cond_b
    invoke-static {}, Lg/grj;->m()V

    throw v8

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v3, v0}, Lg/gsv;->bj(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "marginPrefix must be non-blank string."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Ljava/lang/StringBuilder;Ljava/lang/Object;Lg/and;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static v(Lg/amj;)Lg/cih;
    .locals 2

    instance-of v0, p0, Lg/cih;

    if-eqz v0, :cond_0

    check-cast p0, Lg/cih;

    return-object p0

    :cond_0
    instance-of v0, p0, Lg/foe;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_3

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/amj;

    invoke-static {p0}, Lg/gs;->v(Lg/amj;)Lg/cih;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lg/gck;

    invoke-static {p0}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Lg/fza;Lg/amj;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/fza;

    if-eqz v0, :cond_1

    check-cast p1, Lg/fza;

    invoke-static {p0, p1}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p1, Lg/cih;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p1, Lg/cfm;

    if-eqz v0, :cond_5

    check-cast p1, Lg/cfm;

    invoke-interface {p1}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {p0, v0}, Lg/gs;->w(Lg/fza;Lg/amj;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    :cond_5
    new-instance p0, Lg/gck;

    invoke-static {p1}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    if-eqz p0, :cond_4

    iget-object p0, p0, Lg/bgm;->g:Lg/dvb;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Failed to turn off database read permission"

    invoke-virtual {p0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Failed to turn off database write permission"

    invoke-virtual {p0, p1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Failed to turn on database read permission for owner"

    invoke-virtual {p0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Failed to turn on database write permission for owner"

    invoke-virtual {p0, p1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(Lg/amj;)Z
    .locals 1

    instance-of v0, p0, Lg/cih;

    if-eqz v0, :cond_0

    check-cast p0, Lg/cih;

    invoke-static {p0}, Lg/ffb;->ah(Lg/cih;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lg/foe;

    if-eqz v0, :cond_2

    check-cast p0, Lg/foe;

    invoke-interface {p0}, Lg/foe;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lg/gs;->y(Lg/amj;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_5

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lg/evh;->o(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/amj;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lg/gs;->y(Lg/amj;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    new-instance v0, Lg/gck;

    invoke-static {p0}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z(Lg/amj;)Z
    .locals 3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lg/cih;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Lg/cih;

    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    sget-object v2, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lg/cab;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    instance-of v0, p0, Lg/cfm;

    if-eqz v0, :cond_6

    check-cast p0, Lg/cfm;

    invoke-interface {p0}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {v0}, Lg/gs;->z(Lg/amj;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return v1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance v0, Lg/gck;

    invoke-static {p0}, Lg/gs;->n(Lg/amj;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
