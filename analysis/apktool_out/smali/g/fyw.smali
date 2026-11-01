.class public Lg/fyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dta;
.implements Lg/blz;


# static fields
.field public static final synthetic y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state$volatile"

    const-class v1, Lg/fyw;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/fyw;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lg/dzm;->e:Lg/fvn;

    goto :goto_0

    :cond_0
    sget-object p1, Lg/dzm;->r:Lg/fvn;

    :goto_0
    iput-object p1, p0, Lg/fyw;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static aa(Lg/bfw;)Lg/czr;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lg/bfw;->_bk()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/bfw;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0}, Lg/bfw;->k()Lg/bfw;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/bfw;

    :goto_1
    invoke-virtual {p0}, Lg/bfw;->_bk()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/bfw;

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/bfw;->l()Lg/bfw;

    move-result-object p0

    invoke-virtual {p0}, Lg/bfw;->_bk()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lg/czr;

    if-eqz v0, :cond_3

    check-cast p0, Lg/czr;

    return-object p0

    :cond_3
    instance-of v0, p0, Lg/amv;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ab(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lg/etn;

    if-eqz v0, :cond_1

    check-cast p0, Lg/etn;

    invoke-virtual {p0}, Lg/etn;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lg/etn;->j()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Completing"

    return-object p0

    :cond_1
    instance-of v0, p0, Lg/gpe;

    if-eqz v0, :cond_4

    check-cast p0, Lg/gpe;

    invoke-interface {p0}, Lg/gpe;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "Active"

    return-object p0

    :cond_3
    const-string p0, "New"

    return-object p0

    :cond_4
    instance-of p0, p0, Lg/wh;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    return-object p0

    :cond_5
    const-string p0, "Completed"

    return-object p0
.end method


# virtual methods
.method public _aa(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lg/fyw;->ae(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg/fyw;->_cm()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public _bi(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lg/gib;

    invoke-virtual {p0}, Lg/fyw;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lg/gib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/fyw;)V

    :cond_0
    invoke-virtual {p0, p1}, Lg/fyw;->w(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public _cm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final _w(Lg/efi;)Lg/boj;
    .locals 0

    invoke-static {p0, p1}, Lg/bfc;->t(Lg/erz;Lg/efi;)Lg/boj;

    move-result-object p1

    return-object p1
.end method

.method public final _x(Lg/efi;)Lg/erz;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/dwm;->o:Lg/dwm;

    invoke-static {v0, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final _y(Lg/boj;)Lg/boj;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/cgq;->a:Lg/cgq;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lg/ctu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ctu;-><init>(I)V

    invoke-interface {p1, p0, v0}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/boj;

    return-object p1
.end method

.method public final ac()Z
    .locals 2

    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/wh;

    if-nez v1, :cond_1

    instance-of v1, v0, Lg/etn;

    if-eqz v1, :cond_0

    check-cast v0, Lg/etn;

    invoke-virtual {v0}, Lg/etn;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ad(Lg/amv;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lg/bfw;->j()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lg/bfw;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lg/ccf;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lg/aov;

    :try_start_0
    invoke-interface {v2, p2}, Lg/era;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lg/dwb;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lg/bfw;->l()Lg/bfw;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lg/fyw;->p(Lg/dwb;)V

    :cond_3
    invoke-virtual {p0, p2}, Lg/fyw;->am(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final ae(Ljava/lang/Object;)Z
    .locals 9

    sget-object v0, Lg/dzm;->o:Lg/hy;

    instance-of v1, p0, Lg/fhq;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/gpe;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lg/etn;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lg/etn;

    invoke-virtual {v1}, Lg/etn;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/wh;

    invoke-virtual {p0, p1}, Lg/fyw;->aj(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, Lg/fyw;->af(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/dzm;->h:Lg/hy;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lg/dzm;->o:Lg/hy;

    :goto_1
    sget-object v1, Lg/dzm;->q:Lg/hy;

    if-ne v0, v1, :cond_3

    goto/16 :goto_7

    :cond_3
    sget-object v1, Lg/dzm;->o:Lg/hy;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lg/etn;

    if-eqz v5, :cond_a

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Lg/etn;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lg/etn;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lg/dzm;->l:Lg/hy;

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    sget-object p1, Lg/dzm;->j:Lg/hy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :goto_4
    move-object v0, p1

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_6
    :try_start_1
    move-object v5, v4

    check-cast v5, Lg/etn;

    invoke-virtual {v5}, Lg/etn;->h()Z

    move-result v5

    if-nez v1, :cond_7

    invoke-virtual {p0, p1}, Lg/fyw;->aj(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_7
    move-object p1, v4

    check-cast p1, Lg/etn;

    invoke-virtual {p1, v1}, Lg/etn;->i(Ljava/lang/Throwable;)V

    move-object p1, v4

    check-cast p1, Lg/etn;

    invoke-virtual {p1}, Lg/etn;->g()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_8

    move-object v0, p1

    :cond_8
    monitor-exit v4

    if-eqz v0, :cond_9

    check-cast v4, Lg/etn;

    iget-object p1, v4, Lg/etn;->f:Lg/amv;

    invoke-virtual {p0, p1, v0}, Lg/fyw;->ad(Lg/amv;Ljava/lang/Throwable;)V

    :cond_9
    sget-object p1, Lg/dzm;->o:Lg/hy;

    goto :goto_4

    :goto_5
    monitor-exit v4

    throw p1

    :cond_a
    instance-of v5, v4, Lg/gpe;

    if-eqz v5, :cond_11

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, Lg/fyw;->aj(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_b
    move-object v5, v4

    check-cast v5, Lg/gpe;

    invoke-interface {v5}, Lg/gpe;->a()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, v5}, Lg/fyw;->an(Lg/gpe;)Lg/amv;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    new-instance v7, Lg/etn;

    invoke-direct {v7, v6, v1}, Lg/etn;-><init>(Lg/amv;Ljava/lang/Throwable;)V

    sget-object v8, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_d
    invoke-virtual {v8, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, v6, v1}, Lg/fyw;->ad(Lg/amv;Ljava/lang/Throwable;)V

    sget-object p1, Lg/dzm;->o:Lg/hy;

    goto :goto_4

    :cond_e
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v5, :cond_d

    goto/16 :goto_2

    :cond_f
    new-instance v5, Lg/wh;

    invoke-direct {v5, v1, v2}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v4, v5}, Lg/fyw;->af(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lg/dzm;->o:Lg/hy;

    if-eq v5, v6, :cond_10

    sget-object v4, Lg/dzm;->h:Lg/hy;

    if-eq v5, v4, :cond_4

    move-object v0, v5

    goto :goto_6

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot happen in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    sget-object p1, Lg/dzm;->j:Lg/hy;

    goto/16 :goto_4

    :cond_12
    :goto_6
    sget-object p1, Lg/dzm;->o:Lg/hy;

    if-ne v0, p1, :cond_13

    goto :goto_7

    :cond_13
    sget-object p1, Lg/dzm;->q:Lg/hy;

    if-ne v0, p1, :cond_14

    :goto_7
    return v3

    :cond_14
    sget-object p1, Lg/dzm;->j:Lg/hy;

    if-ne v0, p1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0, v0}, Lg/fyw;->m(Ljava/lang/Object;)V

    return v3
.end method

.method public final af(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lg/gpe;

    if-nez v0, :cond_0

    sget-object p1, Lg/dzm;->o:Lg/hy;

    return-object p1

    :cond_0
    instance-of v0, p1, Lg/fvn;

    if-nez v0, :cond_1

    instance-of v0, p1, Lg/aov;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lg/czr;

    if-nez v0, :cond_5

    instance-of v0, p2, Lg/wh;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lg/gpe;

    sget-object v1, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of p1, p2, Lg/gpe;

    if-eqz p1, :cond_2

    new-instance p1, Lg/xk;

    move-object v2, p2

    check-cast v2, Lg/gpe;

    invoke-direct {p1, v2}, Lg/xk;-><init>(Lg/gpe;)V

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :cond_3
    :goto_0
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lg/fyw;->q(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lg/fyw;->ao(Lg/gpe;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_3

    sget-object p1, Lg/dzm;->h:Lg/hy;

    return-object p1

    :cond_5
    check-cast p1, Lg/gpe;

    invoke-virtual {p0, p1}, Lg/fyw;->an(Lg/gpe;)Lg/amv;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p1, Lg/dzm;->h:Lg/hy;

    return-object p1

    :cond_6
    instance-of v1, p1, Lg/etn;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lg/etn;

    goto :goto_1

    :cond_7
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_8

    new-instance v1, Lg/etn;

    invoke-direct {v1, v0, v2}, Lg/etn;-><init>(Lg/amv;Ljava/lang/Throwable;)V

    :cond_8
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lg/etn;->j()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object p1, Lg/dzm;->o:Lg/hy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_9
    :try_start_1
    sget-object v3, Lg/etn;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eq v1, p1, :cond_c

    sget-object v3, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_a

    sget-object p1, Lg/dzm;->h:Lg/hy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_c
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lg/etn;->h()Z

    move-result v3

    instance-of v5, p2, Lg/wh;

    if-eqz v5, :cond_d

    move-object v5, p2

    check-cast v5, Lg/wh;

    goto :goto_3

    :cond_d
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_e

    iget-object v5, v5, Lg/wh;->c:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lg/etn;->i(Ljava/lang/Throwable;)V

    :cond_e
    invoke-virtual {v1}, Lg/etn;->g()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    move-object v5, v2

    :goto_4
    monitor-exit v1

    if-eqz v5, :cond_10

    invoke-virtual {p0, v0, v5}, Lg/fyw;->ad(Lg/amv;Ljava/lang/Throwable;)V

    :cond_10
    instance-of v0, p1, Lg/czr;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lg/czr;

    goto :goto_5

    :cond_11
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_12

    invoke-interface {p1}, Lg/gpe;->c()Lg/amv;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, Lg/fyw;->aa(Lg/bfw;)Lg/czr;

    move-result-object v2

    goto :goto_6

    :cond_12
    move-object v2, v0

    :cond_13
    :goto_6
    if-eqz v2, :cond_16

    :cond_14
    iget-object p1, v2, Lg/czr;->n:Lg/fyw;

    new-instance v0, Lg/ggy;

    invoke-direct {v0, p0, v1, v2, p2}, Lg/ggy;-><init>(Lg/fyw;Lg/etn;Lg/czr;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v4}, Lg/kj;->m(Lg/dta;ZLg/aov;I)Lg/edw;

    move-result-object p1

    sget-object v0, Lg/asb;->a:Lg/asb;

    if-eq p1, v0, :cond_15

    sget-object p1, Lg/dzm;->q:Lg/hy;

    return-object p1

    :cond_15
    invoke-static {v2}, Lg/fyw;->aa(Lg/bfw;)Lg/czr;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_16
    invoke-virtual {p0, v1, p2}, Lg/fyw;->ak(Lg/etn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_7
    monitor-exit v1

    throw p1
.end method

.method public final ag(ZZLg/era;)Lg/edw;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p3, Lg/ccf;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lg/ccf;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, Lg/dnj;

    invoke-direct {v1, p3}, Lg/dnj;-><init>(Lg/era;)V

    goto :goto_2

    :cond_1
    instance-of v1, p3, Lg/aov;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Lg/aov;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lg/ctq;

    invoke-direct {v1, p3}, Lg/ctq;-><init>(Lg/era;)V

    :cond_4
    :goto_2
    iput-object p0, v1, Lg/aov;->d:Lg/fyw;

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lg/fvn;

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, Lg/fvn;

    iget-boolean v4, v3, Lg/fvn;->b:Z

    if-eqz v4, :cond_8

    sget-object v4, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_6

    goto :goto_3

    :cond_8
    new-instance v2, Lg/amv;

    invoke-direct {v2}, Lg/bfw;-><init>()V

    iget-boolean v4, v3, Lg/fvn;->b:Z

    if-eqz v4, :cond_9

    move-object v4, v2

    goto :goto_4

    :cond_9
    new-instance v4, Lg/bmy;

    invoke-direct {v4, v2}, Lg/bmy;-><init>(Lg/amv;)V

    :goto_4
    sget-object v5, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v5, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_a

    goto :goto_3

    :cond_c
    instance-of v3, v2, Lg/gpe;

    if-eqz v3, :cond_15

    move-object v3, v2

    check-cast v3, Lg/gpe;

    invoke-interface {v3}, Lg/gpe;->c()Lg/amv;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lg/aov;

    invoke-virtual {p0, v2}, Lg/fyw;->ap(Lg/aov;)V

    goto :goto_3

    :cond_d
    sget-object v4, Lg/asb;->a:Lg/asb;

    if-eqz p1, :cond_12

    instance-of v5, v2, Lg/etn;

    if-eqz v5, :cond_12

    monitor-enter v2

    :try_start_0
    move-object v5, v2

    check-cast v5, Lg/etn;

    invoke-virtual {v5}, Lg/etn;->g()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_e

    instance-of v6, p3, Lg/czr;

    if-eqz v6, :cond_11

    move-object v6, v2

    check-cast v6, Lg/etn;

    invoke-virtual {v6}, Lg/etn;->j()Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_e
    :goto_5
    move-object v4, v2

    check-cast v4, Lg/gpe;

    invoke-virtual {p0, v4, v3, v1}, Lg/fyw;->ai(Lg/gpe;Lg/amv;Lg/aov;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_f

    monitor-exit v2

    goto/16 :goto_3

    :cond_f
    if-nez v5, :cond_10

    monitor-exit v2

    return-object v1

    :cond_10
    move-object v4, v1

    :cond_11
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2

    throw p1

    :cond_12
    move-object v5, v0

    :goto_7
    if-eqz v5, :cond_14

    if-eqz p2, :cond_13

    invoke-interface {p3, v5}, Lg/era;->b(Ljava/lang/Throwable;)V

    :cond_13
    return-object v4

    :cond_14
    check-cast v2, Lg/gpe;

    invoke-virtual {p0, v2, v3, v1}, Lg/fyw;->ai(Lg/gpe;Lg/amv;Lg/aov;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_8
    return-object v1

    :cond_15
    if-eqz p2, :cond_18

    instance-of p1, v2, Lg/wh;

    if-eqz p1, :cond_16

    check-cast v2, Lg/wh;

    goto :goto_9

    :cond_16
    move-object v2, v0

    :goto_9
    if-eqz v2, :cond_17

    iget-object v0, v2, Lg/wh;->c:Ljava/lang/Throwable;

    :cond_17
    invoke-interface {p3, v0}, Lg/era;->b(Ljava/lang/Throwable;)V

    :cond_18
    sget-object p1, Lg/asb;->a:Lg/asb;

    return-object p1
.end method

.method public final ah()Ljava/lang/Object;
    .locals 2

    :goto_0
    sget-object v0, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/dpu;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lg/dpu;

    invoke-virtual {v0, p0}, Lg/dpu;->h(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final ai(Lg/gpe;Lg/amv;Lg/aov;)Z
    .locals 6

    new-instance v0, Lg/hh;

    invoke-direct {v0, p3, p0, p1}, Lg/hh;-><init>(Lg/aov;Lg/fyw;Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lg/bfw;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2}, Lg/bfw;->k()Lg/bfw;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bfw;

    :goto_1
    invoke-virtual {v1}, Lg/bfw;->_bk()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bfw;

    goto :goto_1

    :cond_1
    :goto_2
    sget-object p1, Lg/bfw;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lg/bfw;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, Lg/hh;->d:Lg/amv;

    :cond_2
    invoke-virtual {p1, v1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lg/bzh;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x2

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_2

    const/4 p1, 0x0

    :goto_3
    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    return v5
.end method

.method public final aj(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 4

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_0
    check-cast p1, Lg/blz;

    check-cast p1, Lg/fyw;

    invoke-virtual {p1}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/etn;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lg/etn;

    invoke-virtual {v1}, Lg/etn;->g()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lg/wh;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lg/wh;

    iget-object v1, v1, Lg/wh;->c:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lg/gpe;

    if-nez v1, :cond_5

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Lg/gib;

    invoke-static {v0}, Lg/fyw;->ab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1}, Lg/gib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/fyw;)V

    :cond_4
    return-object v2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ak(Lg/etn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lg/wh;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/wh;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/wh;->c:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lg/etn;->h()Z

    invoke-virtual {p1, v0}, Lg/etn;->k(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lg/etn;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lg/gib;

    invoke-virtual {p0}, Lg/fyw;->u()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v1, p0}, Lg/gib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/fyw;)V

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    instance-of v6, v6, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_3

    move-object v1, v5

    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eq v6, v1, :cond_8

    if-eq v6, v1, :cond_8

    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_8

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v1, v6}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_9
    :goto_4
    monitor-exit p1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne v1, v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p2, Lg/wh;

    invoke-direct {p2, v1, v4}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {p0, v1}, Lg/fyw;->am(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v1}, Lg/fyw;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lg/wh;

    sget-object v1, Lg/wh;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_d
    invoke-virtual {p0, p2}, Lg/fyw;->q(Ljava/lang/Object;)V

    sget-object v0, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lg/gpe;

    if-eqz v1, :cond_e

    new-instance v1, Lg/xk;

    move-object v2, p2

    check-cast v2, Lg/gpe;

    invoke-direct {v1, v2}, Lg/xk;-><init>(Lg/gpe;)V

    goto :goto_6

    :cond_e
    move-object v1, p2

    :cond_f
    :goto_6
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_f

    :goto_7
    invoke-virtual {p0, p1, p2}, Lg/fyw;->ao(Lg/gpe;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final al(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lg/fyw;->af(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/dzm;->o:Lg/hy;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lg/wh;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast p1, Lg/wh;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lg/wh;->c:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lg/dzm;->h:Lg/hy;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public final am(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Lg/fyw;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    sget-object v1, Lg/fyw;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzw;

    if-eqz v1, :cond_4

    sget-object v2, Lg/asb;->a:Lg/asb;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1}, Lg/fzw;->_ch(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public final an(Lg/gpe;)Lg/amv;
    .locals 3

    invoke-interface {p1}, Lg/gpe;->c()Lg/amv;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lg/fvn;

    if-eqz v0, :cond_0

    new-instance p1, Lg/amv;

    invoke-direct {p1}, Lg/bfw;-><init>()V

    return-object p1

    :cond_0
    instance-of v0, p1, Lg/aov;

    if-eqz v0, :cond_1

    check-cast p1, Lg/aov;

    invoke-virtual {p0, p1}, Lg/fyw;->ap(Lg/aov;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State should have list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public final ao(Lg/gpe;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Lg/fyw;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzw;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lg/edw;->f()V

    sget-object v1, Lg/asb;->a:Lg/asb;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p2, Lg/wh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lg/wh;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lg/wh;->c:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lg/aov;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lg/aov;

    invoke-interface {v0, p2}, Lg/era;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Lg/dwb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lg/fyw;->p(Lg/dwb;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lg/gpe;->c()Lg/amv;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lg/bfw;->j()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v4}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lg/bfw;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lg/aov;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lg/aov;

    :try_start_1
    invoke-interface {v4, p2}, Lg/era;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lg/dwb;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lg/bfw;->l()Lg/bfw;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lg/fyw;->p(Lg/dwb;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final ap(Lg/aov;)V
    .locals 3

    new-instance v0, Lg/amv;

    invoke-direct {v0}, Lg/bfw;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/bfw;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lg/bfw;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lg/bfw;->j()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lg/bfw;->m(Lg/bfw;)V

    :goto_1
    invoke-virtual {p1}, Lg/bfw;->l()Lg/bfw;

    move-result-object v2

    :cond_1
    sget-object v0, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return-void

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0
.end method

.method public final aq(Lg/dta;)V
    .locals 8

    sget-object v0, Lg/fyw;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lg/asb;->a:Lg/asb;

    if-nez p1, :cond_0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p1, Lg/fyw;

    :goto_0
    invoke-virtual {p1}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lg/fvn;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-object v7, Lg/fyw;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lg/fvn;

    iget-boolean v3, v3, Lg/fvn;->b:Z

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    sget-object v3, Lg/dzm;->e:Lg/fvn;

    :cond_2
    invoke-virtual {v7, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lg/fyw;->k()V

    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v7, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v2, :cond_2

    :goto_2
    const/4 v5, -0x1

    goto :goto_3

    :cond_4
    instance-of v3, v2, Lg/bmy;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lg/bmy;

    iget-object v3, v3, Lg/bmy;->b:Lg/amv;

    :cond_5
    invoke-virtual {v7, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lg/fyw;->k()V

    goto :goto_1

    :cond_6
    invoke-virtual {v7, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v2, :cond_5

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v5, :cond_8

    if-eq v5, v4, :cond_8

    goto :goto_0

    :cond_8
    new-instance v2, Lg/czr;

    invoke-direct {v2, p0}, Lg/czr;-><init>(Lg/fyw;)V

    const/4 v3, 0x2

    invoke-static {p1, v4, v2, v3}, Lg/kj;->m(Lg/dta;ZLg/aov;I)Lg/edw;

    move-result-object p1

    check-cast p1, Lg/fzw;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lg/gpe;

    if-nez v2, :cond_9

    invoke-interface {p1}, Lg/edw;->f()V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final ar()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/etn;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Lg/etn;

    invoke-virtual {v0}, Lg/etn;->g()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v3, :cond_2

    new-instance v2, Lg/gib;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lg/fyw;->u()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lg/gib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/fyw;)V

    return-object v2

    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v1, v0, Lg/gpe;

    if-nez v1, :cond_8

    instance-of v1, v0, Lg/wh;

    if-eqz v1, :cond_7

    check-cast v0, Lg/wh;

    iget-object v0, v0, Lg/wh;->c:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_5
    if-nez v3, :cond_6

    new-instance v1, Lg/gib;

    invoke-virtual {p0}, Lg/fyw;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lg/gib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/fyw;)V

    return-object v1

    :cond_6
    return-object v3

    :cond_7
    new-instance v0, Lg/gib;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lg/gib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lg/fyw;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lg/efi;
    .locals 1

    sget-object v0, Lg/dwm;->o:Lg/dwm;

    return-object v0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/fyw;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public m(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(Lg/dwb;)V
    .locals 0

    throw p1
.end method

.method public q(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lg/fyw;->ab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lg/fso;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public w(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/fyw;->ae(Ljava/lang/Object;)Z

    return-void
.end method

.method public x()Z
    .locals 2

    invoke-virtual {p0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lg/gpe;

    if-eqz v1, :cond_0

    check-cast v0, Lg/gpe;

    invoke-interface {v0}, Lg/gpe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
