.class public final Lg/gsn;
.super Lg/fpm;
.source "SourceFile"

# interfaces
.implements Lg/anq;
.implements Lg/qz;
.implements Lg/cjq;


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public final e:Lg/bdp;

.field public final o:Lg/boj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex$volatile"

    const-class v1, Lg/gsn;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/gsn;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/gsn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILg/bdp;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/fpm;-><init>(I)V

    iput-object p2, p0, Lg/gsn;->e:Lg/bdp;

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object p1

    iput-object p1, p0, Lg/gsn;->o:Lg/boj;

    const p1, 0x1fffffff

    iput p1, p0, Lg/gsn;->_decisionAndIndex$volatile:I

    sget-object p1, Lg/ghp;->a:Lg/ghp;

    iput-object p1, p0, Lg/gsn;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static p(Lg/fkq;Ljava/lang/Object;ILg/and;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lg/wh;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    instance-of p2, p0, Lg/cby;

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    new-instance v0, Lg/vj;

    instance-of p2, p0, Lg/cby;

    if-eqz p2, :cond_4

    check-cast p0, Lg/cby;

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lg/vj;-><init>(Ljava/lang/Object;Lg/cby;Lg/and;Ljava/util/concurrent/CancellationException;I)V

    return-object v0
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final _z(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lg/sl;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/wh;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget v0, p0, Lg/fpm;->k:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lg/gsn;->ae(Ljava/lang/Object;ILg/and;)V

    return-void
.end method

.method public final aa(Ljava/lang/Throwable;)Z
    .locals 6

    :goto_0
    sget-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lg/fkq;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Lg/oq;

    instance-of v4, v1, Lg/cby;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    instance-of v4, v1, Lg/fu;

    if-eqz v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    invoke-direct {v2, p0, p1, v3}, Lg/oq;-><init>(Lg/gsn;Ljava/lang/Throwable;Z)V

    :cond_3
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, v1

    check-cast v0, Lg/fkq;

    instance-of v2, v0, Lg/cby;

    if-eqz v2, :cond_4

    check-cast v1, Lg/cby;

    invoke-virtual {p0, v1, p1}, Lg/gsn;->ab(Lg/cby;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    instance-of v0, v0, Lg/fu;

    if-eqz v0, :cond_5

    check-cast v1, Lg/fu;

    invoke-virtual {p0, v1, p1}, Lg/gsn;->v(Lg/fu;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lg/gsn;->w()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lg/gsn;->u()V

    :cond_6
    iget p1, p0, Lg/fpm;->k:I

    invoke-virtual {p0, p1}, Lg/gsn;->s(I)V

    return v5

    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_3

    goto :goto_0
.end method

.method public final ab(Lg/cby;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget v0, p1, Lg/cby;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lg/cby;->b:Ljava/lang/Object;

    check-cast p1, Lg/ghk;

    invoke-virtual {p1}, Lg/ghe;->f()V

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lg/cby;->b:Ljava/lang/Object;

    check-cast p1, Lg/and;

    invoke-interface {p1, p2}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    iget-object p1, p1, Lg/cby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lg/dwb;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lg/gsn;->o:Lg/boj;

    invoke-static {p2, p1}, Lg/kj;->i(Ljava/lang/Throwable;Lg/boj;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ac()V
    .locals 2

    invoke-virtual {p0}, Lg/gsn;->af()Lg/edw;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lg/fkq;

    if-nez v1, :cond_1

    invoke-interface {v0}, Lg/edw;->f()V

    sget-object v0, Lg/gsn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lg/asb;->a:Lg/asb;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ad(Lg/fkq;)V
    .locals 9

    :cond_0
    :goto_0
    sget-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lg/ghp;

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_3
    instance-of v1, v2, Lg/cby;

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    instance-of v1, v2, Lg/fu;

    :goto_1
    const/4 v3, 0x0

    if-nez v1, :cond_16

    instance-of v1, v2, Lg/wh;

    const/4 v8, 0x0

    if-eqz v1, :cond_a

    move-object v0, v2

    check-cast v0, Lg/wh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/wh;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, v2, Lg/oq;

    if-eqz v1, :cond_15

    check-cast v2, Lg/wh;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_7

    iget-object v3, v0, Lg/wh;->c:Ljava/lang/Throwable;

    :cond_7
    instance-of v0, p1, Lg/cby;

    if-eqz v0, :cond_8

    check-cast p1, Lg/cby;

    invoke-virtual {p0, p1, v3}, Lg/gsn;->ab(Lg/cby;Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {p1, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/fu;

    invoke-virtual {p0, p1, v3}, Lg/gsn;->v(Lg/fu;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    invoke-static {p1, v2}, Lg/gsn;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_a
    instance-of v1, v2, Lg/vj;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v1, :cond_11

    move-object v1, v2

    check-cast v1, Lg/vj;

    iget-object v5, v1, Lg/vj;->d:Lg/cby;

    if-nez v5, :cond_10

    instance-of v5, p1, Lg/fu;

    if-eqz v5, :cond_b

    return-void

    :cond_b
    invoke-static {p1, v4}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lg/cby;

    iget-object v5, v1, Lg/vj;->b:Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    const/4 v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_d

    invoke-virtual {p0, v4, v5}, Lg/gsn;->ab(Lg/cby;Ljava/lang/Throwable;)V

    return-void

    :cond_d
    const/16 v5, 0x1d

    invoke-static {v1, v4, v3, v5}, Lg/vj;->f(Lg/vj;Lg/cby;Ljava/util/concurrent/CancellationException;I)Lg/vj;

    move-result-object v1

    :cond_e
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_e

    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_0

    goto :goto_7

    :cond_10
    invoke-static {p1, v2}, Lg/gsn;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_11
    instance-of v1, p1, Lg/fu;

    if-eqz v1, :cond_12

    return-void

    :cond_12
    invoke-static {p1, v4}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lg/cby;

    new-instance v1, Lg/vj;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lg/vj;-><init>(Ljava/lang/Object;Lg/cby;Lg/and;Ljava/util/concurrent/CancellationException;I)V

    :cond_13
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_13

    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_0

    :cond_15
    :goto_7
    return-void

    :cond_16
    invoke-static {p1, v2}, Lg/gsn;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3
.end method

.method public final ae(Ljava/lang/Object;ILg/and;)V
    .locals 4

    :goto_0
    sget-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lg/fkq;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lg/fkq;

    invoke-static {v2, p1, p2, p3}, Lg/gsn;->p(Lg/fkq;Ljava/lang/Object;ILg/and;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lg/gsn;->w()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lg/gsn;->u()V

    :cond_1
    invoke-virtual {p0, p2}, Lg/gsn;->s(I)V

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_3
    instance-of p2, v1, Lg/oq;

    if-eqz p2, :cond_5

    check-cast v1, Lg/oq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lg/oq;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    iget-object p1, v1, Lg/wh;->c:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lg/gsn;->r(Lg/and;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Already resumed, but proposed with update "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final af()Lg/edw;
    .locals 5

    iget-object v0, p0, Lg/gsn;->o:Lg/boj;

    sget-object v1, Lg/dwm;->o:Lg/dwm;

    invoke-interface {v0, v1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v0

    check-cast v0, Lg/dta;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lg/chb;

    invoke-direct {v2, p0}, Lg/chb;-><init>(Lg/gsn;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lg/kj;->m(Lg/dta;ZLg/aov;I)Lg/edw;

    move-result-object v0

    :cond_1
    sget-object v2, Lg/gsn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0
.end method

.method public final d(Lg/fu;I)V
    .locals 4

    :cond_0
    sget-object v0, Lg/gsn;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg/gsn;->ad(Lg/fkq;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()Lg/qz;
    .locals 2

    iget-object v0, p0, Lg/gsn;->e:Lg/bdp;

    instance-of v1, v0, Lg/qz;

    if-eqz v1, :cond_0

    check-cast v0, Lg/qz;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/gsn;->o:Lg/boj;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 6

    :goto_0
    sget-object p1, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lg/fkq;

    if-nez v0, :cond_9

    instance-of v0, v1, Lg/wh;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, v1, Lg/vj;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lg/vj;

    iget-object v2, v0, Lg/vj;->b:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-static {v0, v2, p2, v3}, Lg/vj;->f(Lg/vj;Lg/cby;Ljava/util/concurrent/CancellationException;I)Lg/vj;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v0, Lg/vj;->d:Lg/cby;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lg/gsn;->ab(Lg/cby;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, v0, Lg/vj;->e:Lg/and;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, p2}, Lg/gsn;->r(Lg/and;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_1

    move-object v4, p2

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Lg/vj;

    const/4 v3, 0x0

    const/16 v5, 0xe

    const/4 v2, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lg/vj;-><init>(Ljava/lang/Object;Lg/cby;Lg/and;Ljava/util/concurrent/CancellationException;I)V

    :cond_6
    invoke-virtual {p1, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_6

    :goto_2
    move-object p2, v4

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j()Lg/bdp;
    .locals 1

    iget-object v0, p0, Lg/gsn;->e:Lg/bdp;

    return-object v0
.end method

.method public final m(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lg/fpm;->m(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lg/vj;

    if-eqz v0, :cond_0

    check-cast p1, Lg/vj;

    iget-object p1, p1, Lg/vj;->c:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final r(Lg/and;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p2}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lg/dwb;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lg/gsn;->o:Lg/boj;

    invoke-static {p2, p1}, Lg/kj;->i(Ljava/lang/Throwable;Lg/boj;)V

    return-void
.end method

.method public final s(I)V
    .locals 7

    :cond_0
    sget-object v0, Lg/gsn;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    if-ne v2, v0, :cond_a

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lg/gsn;->e:Lg/bdp;

    if-nez v1, :cond_9

    instance-of v4, v3, Lg/sk;

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iget v5, p0, Lg/fpm;->k:I

    if-eq v5, v0, :cond_4

    if-ne v5, v4, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    if-ne p1, v2, :cond_9

    move-object p1, v3

    check-cast p1, Lg/sk;

    iget-object p1, p1, Lg/sk;->c:Lg/cpk;

    move-object v1, v3

    check-cast v1, Lg/sk;

    iget-object v1, v1, Lg/sk;->d:Lg/w;

    invoke-interface {v1}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg/cpk;->w(Lg/boj;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1, p0}, Lg/cpk;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-static {}, Lg/fla;->b()Lg/bkg;

    move-result-object p1

    iget-wide v1, p1, Lg/bkg;->l:J

    const-wide v4, 0x100000000L

    cmp-long v6, v1, v4

    if-ltz v6, :cond_7

    invoke-virtual {p1, p0}, Lg/bkg;->q(Lg/fpm;)V

    return-void

    :cond_7
    invoke-virtual {p1, v0}, Lg/bkg;->s(Z)V

    :try_start_0
    invoke-static {p0, v3, v0}, Lg/gs;->am(Lg/gsn;Lg/bdp;Z)V

    :cond_8
    invoke-virtual {p1}, Lg/bkg;->r()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_8

    :goto_3
    invoke-virtual {p1}, Lg/bkg;->o()V

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lg/fpm;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lg/bkg;->o()V

    throw v0

    :cond_9
    invoke-static {p0, v3, v1}, Lg/gs;->am(Lg/gsn;Lg/bdp;Z)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const v2, 0x1fffffff

    and-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_4
    return-void
.end method

.method public final t(Lg/cpk;)V
    .locals 3

    iget-object v0, p0, Lg/gsn;->e:Lg/bdp;

    instance-of v1, v0, Lg/sk;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lg/sk;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/sk;->c:Lg/cpk;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lg/fpm;->k:I

    :goto_2
    sget-object v0, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p0, v0, p1, v2}, Lg/gsn;->ae(Ljava/lang/Object;ILg/and;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancellableContinuation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gsn;->e:Lg/bdp;

    invoke-static {v1}, Lg/fso;->ax(Lg/bdp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lg/fkq;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lg/oq;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lg/fso;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 2

    sget-object v0, Lg/gsn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/edw;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Lg/edw;->f()V

    sget-object v1, Lg/asb;->a:Lg/asb;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final v(Lg/fu;Ljava/lang/Throwable;)V
    .locals 3

    iget-object p2, p0, Lg/gsn;->o:Lg/boj;

    sget-object v0, Lg/gsn;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lg/fu;->h(ILg/boj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lg/dwb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p2}, Lg/kj;->i(Ljava/lang/Throwable;Lg/boj;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w()Z
    .locals 2

    iget v0, p0, Lg/fpm;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    iget-object v1, p0, Lg/gsn;->e:Lg/bdp;

    invoke-static {v1, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lg/sk;

    sget-object v0, Lg/sk;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .locals 5

    iget-object v0, p0, Lg/gsn;->e:Lg/bdp;

    instance-of v1, v0, Lg/sk;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lg/sk;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    sget-object v1, Lg/sk;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lg/baf;->s:Lg/hy;

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lg/gsn;->u()V

    invoke-virtual {p0, v2}, Lg/gsn;->aa(Ljava/lang/Throwable;)Z

    return-void

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    return-void
.end method

.method public final y(Lg/and;)V
    .locals 2

    new-instance v0, Lg/cby;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lg/cby;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lg/gsn;->ad(Lg/fkq;)V

    return-void
.end method

.method public final z()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lg/gsn;->w()Z

    move-result v0

    :cond_0
    sget-object v1, Lg/gsn;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1d

    if-eqz v3, :cond_7

    const/4 v1, 0x2

    if-ne v3, v1, :cond_6

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/gsn;->x()V

    :cond_1
    sget-object v0, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lg/wh;

    if-nez v2, :cond_5

    iget v2, p0, Lg/fpm;->k:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Lg/gsn;->o:Lg/boj;

    sget-object v2, Lg/dwm;->o:Lg/dwm;

    invoke-interface {v1, v2}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v1

    check-cast v1, Lg/dta;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lg/dta;->x()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast v1, Lg/fyw;

    invoke-virtual {v1}, Lg/fyw;->ar()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lg/gsn;->i(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    throw v1

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lg/gsn;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    check-cast v0, Lg/wh;

    iget-object v0, v0, Lg/wh;->c:Ljava/lang/Throwable;

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const v3, 0x1fffffff

    and-int/2addr v3, v2

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/gsn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/edw;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lg/gsn;->af()Lg/edw;

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lg/gsn;->x()V

    :cond_9
    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    return-object v0
.end method
