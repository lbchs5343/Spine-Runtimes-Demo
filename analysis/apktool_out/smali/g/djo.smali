.class public Lg/djo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bfl;


# static fields
.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sendersAndCloseStatus$volatile"

    const-class v1, Lg/djo;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/djo;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/djo;->t:I

    if-ltz p1, :cond_3

    sget-object v0, Lg/drx;->h:Lg/ggb;

    if-eqz p1, :cond_1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lg/djo;->bufferEnd$volatile:J

    sget-object p1, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lg/djo;->completedExpandBuffersAndPauseFlag$volatile:J

    new-instance v2, Lg/ggb;

    const/4 v5, 0x0

    const/4 v7, 0x3

    const-wide/16 v3, 0x0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lg/ggb;-><init>(JLg/ggb;Lg/djo;I)V

    iput-object v2, v6, Lg/djo;->sendSegment$volatile:Ljava/lang/Object;

    iput-object v2, v6, Lg/djo;->receiveSegment$volatile:Ljava/lang/Object;

    invoke-virtual {p0}, Lg/djo;->aj()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v2, Lg/drx;->h:Lg/ggb;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {v2, p1}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iput-object v2, v6, Lg/djo;->bufferEndSegment$volatile:Ljava/lang/Object;

    sget-object p1, Lg/drx;->j:Lg/hy;

    iput-object p1, v6, Lg/djo;->_closeCause$volatile:Ljava/lang/Object;

    return-void

    :cond_3
    move-object v6, p0

    const-string v0, "Invalid channel capacity: "

    const-string v1, ", should be >=0"

    invoke-static {p1, v0, v1}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Lg/djo;Lg/w;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lg/fcp;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/fcp;

    iget v1, v0, Lg/fcp;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/fcp;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lg/fcp;

    invoke-direct {v0, p0, p1}, Lg/fcp;-><init>(Lg/djo;Lg/w;)V

    goto :goto_0

    :goto_1
    iget-object p1, v6, Lg/fcp;->result:Ljava/lang/Object;

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, v6, Lg/fcp;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    check-cast p1, Lg/clw;

    iget-object p0, p1, Lg/clw;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    sget-object p1, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ggb;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lg/djo;->ao(JZ)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lg/buf;

    invoke-direct {p1, p0}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_3
    sget-object v1, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v1, Lg/drx;->n:I

    int-to-long v7, v1

    div-long v9, v4, v7

    rem-long v7, v4, v7

    long-to-int v3, v7

    iget-wide v7, p1, Lg/fu;->b:J

    cmp-long v1, v7, v9

    if-eqz v1, :cond_5

    invoke-virtual {p0, v9, v10, p1}, Lg/djo;->ab(JLg/ggb;)Lg/ggb;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v1

    goto :goto_3

    :cond_5
    move-object v8, p1

    :goto_3
    const/4 v12, 0x0

    move-object v7, p0

    move v9, v3

    move-wide v10, v4

    invoke-virtual/range {v7 .. v12}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, v7

    sget-object p1, Lg/drx;->l:Lg/hy;

    if-eq p0, p1, :cond_a

    sget-object p1, Lg/drx;->c:Lg/hy;

    if-ne p0, p1, :cond_7

    invoke-virtual {v1}, Lg/djo;->at()J

    move-result-wide p0

    cmp-long v3, v4, p0

    if-gez v3, :cond_6

    invoke-virtual {v8}, Lg/aym;->l()V

    :cond_6
    move-object p0, v1

    move-object p1, v8

    goto :goto_2

    :cond_7
    sget-object p1, Lg/drx;->d:Lg/hy;

    if-ne p0, p1, :cond_9

    iput v2, v6, Lg/fcp;->label:I

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Lg/djo;->an(Lg/ggb;IJLg/w;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    return-object p0

    :cond_9
    invoke-virtual {v8}, Lg/aym;->l()V

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final v(Lg/djo;Ljava/lang/Object;Lg/gsn;)V
    .locals 0

    invoke-virtual {p0}, Lg/djo;->am()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p0

    invoke-virtual {p2, p0}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void
.end method

.method public static final w(Lg/djo;Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4

    invoke-virtual {p1, p2, p3}, Lg/ggb;->s(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    invoke-virtual/range {p0 .. p7}, Lg/djo;->ap(Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, p4, p5}, Lg/djo;->as(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/drx;->e:Lg/hy;

    invoke-virtual {p1, v2, p2, v0}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_1
    if-nez p6, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-virtual {p1, v2, p2, p6}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_3
    instance-of v3, v0, Lg/cjq;

    if-eqz v3, :cond_6

    invoke-virtual {p1, p2, v2}, Lg/ggb;->s(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lg/djo;->ai(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lg/drx;->m:Lg/hy;

    invoke-virtual {p1, p2, p0}, Lg/ggb;->q(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    sget-object p0, Lg/drx;->b:Lg/hy;

    iget-object p3, p1, Lg/ggb;->o:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p4, p2, 0x2

    add-int/2addr p4, v1

    invoke-virtual {p3, p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p0, :cond_5

    invoke-virtual {p1, p2, v1}, Lg/ggb;->r(IZ)V

    :cond_5
    const/4 p0, 0x5

    return p0

    :cond_6
    invoke-virtual/range {p0 .. p7}, Lg/djo;->ap(Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method public static x(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Lg/anq;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p0, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lg/anq;

    const/4 v0, 0x0

    sget-object v1, Lg/dgi;->a:Lg/dgi;

    invoke-static {p0, v1, v0}, Lg/drx;->t(Lg/anq;Ljava/lang/Object;Lg/ftl;)Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected waiter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(Lg/djo;)V
    .locals 8

    sget-object v0, Lg/djo;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    and-long/2addr v1, v3

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final z(Lg/djo;JLg/ggb;)Lg/ggb;
    .locals 11

    sget-object v0, Lg/drx;->h:Lg/ggb;

    sget-object v0, Lg/bwn;->a:Lg/bwn;

    :goto_0
    invoke-static {p1, p2, p3}, Lg/cro;->bc(JLg/ggb;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->o(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lg/bff;->i(Ljava/lang/Object;)Lg/fu;

    move-result-object v1

    :cond_0
    :goto_1
    sget-object v2, Lg/djo;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fu;

    iget-wide v4, v3, Lg/fu;->b:J

    iget-wide v6, v1, Lg/fu;->b:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lg/fu;->f()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lg/fu;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lg/aym;->k()V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_2

    invoke-virtual {v1}, Lg/fu;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/aym;->k()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v0}, Lg/bff;->o(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lg/djo;->ah()Z

    iget-wide p1, p3, Lg/fu;->b:J

    sget v0, Lg/drx;->n:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gez p0, :cond_7

    invoke-virtual {p3}, Lg/aym;->l()V

    return-object v2

    :cond_5
    invoke-static {v0}, Lg/bff;->i(Ljava/lang/Object;)Lg/fu;

    move-result-object p3

    check-cast p3, Lg/ggb;

    iget-wide v0, p3, Lg/fu;->b:J

    cmp-long v4, v0, p1

    if-lez v4, :cond_9

    sget p1, Lg/drx;->n:I

    int-to-long p1, p1

    mul-long p1, p1, v0

    :goto_3
    sget-object v4, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v4, v7

    cmp-long v6, v4, p1

    if-ltz v6, :cond_6

    move-object v6, p0

    goto :goto_4

    :cond_6
    const/16 v6, 0x3c

    shr-long v9, v7, v6

    long-to-int v10, v9

    int-to-long v9, v10

    shl-long/2addr v9, v6

    add-long/2addr v9, v4

    sget-object v5, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_4
    sget p0, Lg/drx;->n:I

    int-to-long p0, p0

    mul-long v0, v0, p0

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide p0

    cmp-long p2, v0, p0

    if-gez p2, :cond_7

    invoke-virtual {p3}, Lg/aym;->l()V

    :cond_7
    return-object v2

    :cond_8
    move-object p0, v6

    goto :goto_3

    :cond_9
    return-object p3
.end method


# virtual methods
.method public final _bi(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/djo;->aa(Ljava/lang/Throwable;Z)Z

    return-void
.end method

.method public final _cl(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/djo;->aa(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method public final aa(Ljava/lang/Throwable;Z)Z
    .locals 12

    const/16 v0, 0x3c

    const-wide v1, 0xfffffffffffffffL

    sget-object v3, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const/4 v9, 0x1

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    shr-long v7, v5, v0

    long-to-int v4, v7

    if-nez v4, :cond_1

    and-long v7, v5, v1

    sget-object v4, Lg/drx;->h:Lg/ggb;

    int-to-long v10, v9

    shl-long/2addr v10, v0

    add-long/2addr v7, v10

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, p0

    :goto_0
    sget-object v5, Lg/drx;->j:Lg/hy;

    :cond_2
    sget-object v6, Lg/djo;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_2

    const/4 p1, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x3

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long p1, v5, v1

    int-to-long v7, v11

    shl-long/2addr v7, v0

    add-long/2addr v7, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    shr-long p1, v5, v0

    long-to-int p2, p1

    if-eqz p2, :cond_7

    if-eq p2, v9, :cond_6

    goto :goto_4

    :cond_6
    and-long p1, v5, v1

    int-to-long v7, v11

    :goto_2
    shl-long/2addr v7, v0

    add-long/2addr v7, p1

    goto :goto_3

    :cond_7
    and-long p1, v5, v1

    const/4 v7, 0x2

    int-to-long v7, v7

    goto :goto_2

    :goto_3
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_4
    invoke-virtual {p0}, Lg/djo;->ah()Z

    if-eqz v10, :cond_c

    :goto_5
    sget-object p1, Lg/djo;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_8

    sget-object v0, Lg/drx;->p:Lg/hy;

    goto :goto_6

    :cond_8
    sget-object v0, Lg/drx;->s:Lg/hy;

    :cond_9
    :goto_6
    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p2, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v9, p2}, Lg/baf;->bc(ILjava/lang/Object;)V

    check-cast p2, Lg/and;

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    :cond_b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_9

    goto :goto_5

    :cond_c
    :goto_7
    return v10
.end method

.method public final ab(JLg/ggb;)Lg/ggb;
    .locals 9

    sget-object v0, Lg/drx;->h:Lg/ggb;

    sget-object v0, Lg/bwn;->a:Lg/bwn;

    :goto_0
    invoke-static {p1, p2, p3}, Lg/cro;->bc(JLg/ggb;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->o(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lg/bff;->i(Ljava/lang/Object;)Lg/fu;

    move-result-object v1

    :cond_0
    :goto_1
    sget-object v2, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fu;

    iget-wide v4, v3, Lg/fu;->b:J

    iget-wide v6, v1, Lg/fu;->b:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lg/fu;->f()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lg/fu;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lg/aym;->k()V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_2

    invoke-virtual {v1}, Lg/fu;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/aym;->k()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v0}, Lg/bff;->o(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lg/djo;->ah()Z

    iget-wide p1, p3, Lg/fu;->b:J

    sget v0, Lg/drx;->n:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide v0

    cmp-long v3, p1, v0

    if-gez v3, :cond_c

    invoke-virtual {p3}, Lg/aym;->l()V

    return-object v2

    :cond_5
    invoke-static {v0}, Lg/bff;->i(Ljava/lang/Object;)Lg/fu;

    move-result-object p3

    check-cast p3, Lg/ggb;

    iget-wide v0, p3, Lg/fu;->b:J

    invoke-virtual {p0}, Lg/djo;->aj()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    sget v5, Lg/drx;->n:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    cmp-long v5, p1, v3

    if-gtz v5, :cond_9

    :cond_6
    :goto_3
    sget-object v3, Lg/djo;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fu;

    iget-wide v5, v4, Lg/fu;->b:J

    cmp-long v7, v5, v0

    if-gez v7, :cond_9

    invoke-virtual {p3}, Lg/fu;->f()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    invoke-virtual {v3, p0, v4, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lg/fu;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v4}, Lg/aym;->k()V

    goto :goto_4

    :cond_8
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_7

    invoke-virtual {p3}, Lg/fu;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Lg/aym;->k()V

    goto :goto_3

    :cond_9
    :goto_4
    cmp-long v3, v0, p1

    if-lez v3, :cond_d

    sget p1, Lg/drx;->n:I

    int-to-long p1, p1

    mul-long v7, v0, p1

    :cond_a
    sget-object p1, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long p1, v5, v7

    if-ltz p1, :cond_b

    goto :goto_5

    :cond_b
    sget-object v3, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_5
    sget p1, Lg/drx;->n:I

    int-to-long p1, p1

    mul-long v0, v0, p1

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-gez v3, :cond_c

    invoke-virtual {p3}, Lg/aym;->l()V

    :cond_c
    return-object v2

    :cond_d
    return-object p3
.end method

.method public final ac(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {p1}, Lg/gsn;->ac()V

    invoke-virtual {p0}, Lg/djo;->am()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/gsn;->_z(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final ad(J)V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lg/djo;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :goto_0
    sget-object v6, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_8

    sget v0, Lg/drx;->q:I

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lg/djo;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge v2, v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    and-long/2addr v8, v10

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    goto :goto_6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-long/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v4, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v12, v2, v8

    and-long v14, v2, v10

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-eqz v18, :cond_3

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    :goto_4
    cmp-long v15, v4, v12

    if-nez v15, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v15

    cmp-long v17, v4, v15

    if-nez v17, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_6
    return-void

    :cond_4
    move-object/from16 v1, p0

    goto :goto_5

    :cond_5
    if-nez v14, :cond_6

    add-long v4, v10, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_3

    :cond_6
    move-object/from16 v1, p0

    goto :goto_3

    :cond_7
    move-object/from16 v1, p0

    goto :goto_2

    :cond_8
    move-object/from16 v1, p0

    goto/16 :goto_0
.end method

.method public final ae()V
    .locals 15

    invoke-virtual {p0}, Lg/djo;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v6, Lg/djo;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ggb;

    move-object v7, v0

    :goto_0
    sget-object v0, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    sget v0, Lg/drx;->n:I

    int-to-long v2, v0

    div-long v2, v8, v2

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    iget-wide v4, v7, Lg/fu;->b:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    invoke-virtual {v7}, Lg/aym;->m()Lg/aym;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v3, v7}, Lg/djo;->ar(JLg/ggb;)V

    :cond_1
    invoke-static {p0}, Lg/djo;->y(Lg/djo;)V

    return-void

    :cond_2
    iget-wide v4, v7, Lg/fu;->b:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_d

    sget-object v0, Lg/bwn;->a:Lg/bwn;

    :goto_1
    invoke-static {v2, v3, v7}, Lg/cro;->bc(JLg/ggb;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->o(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Lg/bff;->i(Ljava/lang/Object;)Lg/fu;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fu;

    iget-wide v10, v5, Lg/fu;->b:J

    iget-wide v12, v4, Lg/fu;->b:J

    cmp-long v14, v10, v12

    if-ltz v14, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Lg/fu;->f()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6, p0, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v5}, Lg/fu;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lg/aym;->k()V

    goto :goto_3

    :cond_6
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v5, :cond_5

    invoke-virtual {v4}, Lg/fu;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lg/aym;->k()V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {v0}, Lg/bff;->o(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lg/djo;->ah()Z

    invoke-virtual {p0, v2, v3, v7}, Lg/djo;->ar(JLg/ggb;)V

    invoke-static {p0}, Lg/djo;->y(Lg/djo;)V

    goto :goto_5

    :cond_8
    invoke-static {v0}, Lg/bff;->i(Ljava/lang/Object;)Lg/fu;

    move-result-object v0

    check-cast v0, Lg/ggb;

    iget-wide v4, v0, Lg/fu;->b:J

    cmp-long v11, v4, v2

    if-lez v11, :cond_a

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    sget v0, Lg/drx;->n:I

    int-to-long v11, v0

    mul-long v4, v4, v11

    sget-object v0, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    sub-long/2addr v4, v8

    sget-object v0, Lg/djo;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v2, v4

    const-wide/16 v11, 0x0

    cmp-long v13, v2, v11

    if-eqz v13, :cond_b

    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long/2addr v2, v4

    cmp-long v13, v2, v11

    if-eqz v13, :cond_b

    goto :goto_4

    :cond_9
    invoke-static {p0}, Lg/djo;->y(Lg/djo;)V

    goto :goto_5

    :cond_a
    move-object v10, v0

    :cond_b
    :goto_5
    if-nez v10, :cond_c

    goto/16 :goto_0

    :cond_c
    move-object v7, v10

    :cond_d
    sget v0, Lg/drx;->n:I

    int-to-long v2, v0

    rem-long v2, v8, v2

    long-to-int v0, v2

    invoke-virtual {v7, v0}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lg/cjq;

    sget-object v4, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v3, :cond_f

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-ltz v3, :cond_f

    sget-object v3, Lg/drx;->r:Lg/hy;

    invoke-virtual {v7, v2, v0, v3}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v2}, Lg/djo;->x(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lg/drx;->e:Lg/hy;

    invoke-virtual {v7, v0, v2}, Lg/ggb;->q(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_e
    sget-object v2, Lg/drx;->o:Lg/hy;

    invoke-virtual {v7, v0, v2}, Lg/ggb;->q(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lg/fu;->c()V

    goto :goto_7

    :cond_f
    :goto_6
    invoke-virtual {v7, v0}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lg/cjq;

    if-eqz v3, :cond_12

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-gez v3, :cond_10

    new-instance v3, Lg/axx;

    move-object v5, v2

    check-cast v5, Lg/cjq;

    invoke-direct {v3, v5}, Lg/axx;-><init>(Lg/cjq;)V

    invoke-virtual {v7, v2, v0, v3}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_8

    :cond_10
    sget-object v3, Lg/drx;->r:Lg/hy;

    invoke-virtual {v7, v2, v0, v3}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v2}, Lg/djo;->x(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lg/drx;->e:Lg/hy;

    invoke-virtual {v7, v0, v2}, Lg/ggb;->q(ILjava/lang/Object;)V

    goto :goto_8

    :cond_11
    sget-object v2, Lg/drx;->o:Lg/hy;

    invoke-virtual {v7, v0, v2}, Lg/ggb;->q(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lg/fu;->c()V

    goto :goto_7

    :cond_12
    sget-object v3, Lg/drx;->o:Lg/hy;

    if-ne v2, v3, :cond_13

    :goto_7
    invoke-static {p0}, Lg/djo;->y(Lg/djo;)V

    goto/16 :goto_0

    :cond_13
    if-nez v2, :cond_14

    sget-object v3, Lg/drx;->g:Lg/hy;

    invoke-virtual {v7, v2, v0, v3}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_14
    sget-object v3, Lg/drx;->e:Lg/hy;

    if-ne v2, v3, :cond_15

    goto :goto_8

    :cond_15
    sget-object v3, Lg/drx;->a:Lg/hy;

    if-eq v2, v3, :cond_19

    sget-object v3, Lg/drx;->m:Lg/hy;

    if-eq v2, v3, :cond_19

    sget-object v3, Lg/drx;->b:Lg/hy;

    if-ne v2, v3, :cond_16

    goto :goto_8

    :cond_16
    sget-object v3, Lg/drx;->f:Lg/hy;

    if-ne v2, v3, :cond_17

    goto :goto_8

    :cond_17
    sget-object v3, Lg/drx;->i:Lg/hy;

    if-ne v2, v3, :cond_18

    goto :goto_6

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected cell state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_8
    invoke-static {p0}, Lg/djo;->y(Lg/djo;)V

    return-void
.end method

.method public final af(Lg/cjq;Z)V
    .locals 2

    instance-of v0, p1, Lg/anq;

    if-eqz v0, :cond_2

    check-cast p1, Lg/bdp;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Lg/gcb;

    const-string v0, "Channel was closed"

    invoke-direct {p2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/djo;->am()Ljava/lang/Throwable;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-static {p2}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/bdp;->_z(Ljava/lang/Object;)V

    return-void

    :cond_2
    instance-of p2, p1, Lg/bwc;

    if-eqz p2, :cond_3

    check-cast p1, Lg/bwc;

    iget-object p1, p1, Lg/bwc;->a:Lg/gsn;

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object p2

    new-instance v0, Lg/buf;

    invoke-direct {v0, p2}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lg/clw;

    invoke-direct {p2, v0}, Lg/clw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void

    :cond_3
    instance-of p2, p1, Lg/blg;

    if-eqz p2, :cond_5

    check-cast p1, Lg/blg;

    iget-object p2, p1, Lg/blg;->c:Lg/gsn;

    invoke-static {p2}, Lg/bff;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lg/blg;->c:Lg/gsn;

    sget-object v0, Lg/drx;->f:Lg/hy;

    iput-object v0, p1, Lg/blg;->b:Ljava/lang/Object;

    iget-object p1, p1, Lg/blg;->a:Lg/djo;

    invoke-virtual {p1}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {p1}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected waiter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ag(J)Lg/ggb;
    .locals 13

    sget-object v0, Lg/djo;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/djo;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ggb;

    iget-wide v2, v1, Lg/fu;->b:J

    move-object v4, v0

    check-cast v4, Lg/ggb;

    iget-wide v4, v4, Lg/fu;->b:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    move-object v0, v1

    :cond_0
    sget-object v1, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ggb;

    iget-wide v2, v1, Lg/fu;->b:J

    move-object v4, v0

    check-cast v4, Lg/ggb;

    iget-wide v4, v4, Lg/fu;->b:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lg/aym;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/aym;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lg/cro;->o:Lg/hy;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    check-cast v2, Lg/aym;

    if-nez v2, :cond_15

    :cond_3
    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_1
    check-cast v0, Lg/ggb;

    invoke-virtual {p0}, Lg/djo;->c()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_a

    move-object v1, v0

    :cond_4
    sget v5, Lg/drx;->n:I

    sub-int/2addr v5, v2

    :goto_2
    const-wide/16 v6, -0x1

    if-ge v3, v5, :cond_9

    iget-wide v8, v1, Lg/fu;->b:J

    sget v10, Lg/drx;->n:I

    int-to-long v10, v10

    mul-long v8, v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    sget-object v10, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_5

    :goto_3
    move-wide v8, v6

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v5}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    sget-object v11, Lg/drx;->g:Lg/hy;

    if-ne v10, v11, :cond_6

    goto :goto_4

    :cond_6
    sget-object v11, Lg/drx;->e:Lg/hy;

    if-ne v10, v11, :cond_8

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v11, Lg/drx;->f:Lg/hy;

    invoke-virtual {v1, v10, v5, v11}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lg/fu;->c()V

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    sget-object v5, Lg/aym;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aym;

    check-cast v1, Lg/ggb;

    if-nez v1, :cond_4

    goto :goto_3

    :goto_5
    cmp-long v1, v8, v6

    if-eqz v1, :cond_a

    invoke-virtual {p0, v8, v9}, Lg/djo;->al(J)V

    :cond_a
    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_11

    sget v5, Lg/drx;->n:I

    sub-int/2addr v5, v2

    :goto_7
    if-ge v3, v5, :cond_10

    iget-wide v6, v1, Lg/fu;->b:J

    sget v8, Lg/drx;->n:I

    int-to-long v8, v8

    mul-long v6, v6, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v8, v6, p1

    if-ltz v8, :cond_11

    :cond_b
    invoke-virtual {v1, v5}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    sget-object v7, Lg/drx;->g:Lg/hy;

    if-ne v6, v7, :cond_c

    goto :goto_8

    :cond_c
    instance-of v7, v6, Lg/axx;

    if-eqz v7, :cond_d

    sget-object v7, Lg/drx;->f:Lg/hy;

    invoke-virtual {v1, v6, v5, v7}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    check-cast v6, Lg/axx;

    iget-object v6, v6, Lg/axx;->a:Lg/cjq;

    invoke-static {v4, v6}, Lg/buj;->bc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v2}, Lg/ggb;->r(IZ)V

    goto :goto_9

    :cond_d
    instance-of v7, v6, Lg/cjq;

    if-eqz v7, :cond_f

    sget-object v7, Lg/drx;->f:Lg/hy;

    invoke-virtual {v1, v6, v5, v7}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v4, v6}, Lg/buj;->bc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v2}, Lg/ggb;->r(IZ)V

    goto :goto_9

    :cond_e
    :goto_8
    sget-object v7, Lg/drx;->f:Lg/hy;

    invoke-virtual {v1, v6, v5, v7}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1}, Lg/fu;->c()V

    :cond_f
    :goto_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_10
    sget-object v5, Lg/aym;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aym;

    check-cast v1, Lg/ggb;

    goto :goto_6

    :cond_11
    if-eqz v4, :cond_13

    instance-of p1, v4, Ljava/util/ArrayList;

    if-nez p1, :cond_12

    check-cast v4, Lg/cjq;

    invoke-virtual {p0, v4, v2}, Lg/djo;->af(Lg/cjq;Z)V

    return-object v0

    :cond_12
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_a
    if-ge v3, p1, :cond_13

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/cjq;

    invoke-virtual {p0, p2, v2}, Lg/djo;->af(Lg/cjq;Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_13
    return-object v0

    :cond_14
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_15
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final ah()Z
    .locals 3

    sget-object v0, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lg/djo;->ao(JZ)Z

    move-result v0

    return v0
.end method

.method public final ai(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lg/bwc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/bwc;

    iget-object p1, p1, Lg/bwc;->a:Lg/gsn;

    new-instance v0, Lg/clw;

    invoke-direct {v0, p2}, Lg/clw;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0, v1}, Lg/drx;->t(Lg/anq;Ljava/lang/Object;Lg/ftl;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lg/blg;

    if-eqz v0, :cond_1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/blg;

    iget-object v0, p1, Lg/blg;->c:Lg/gsn;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iput-object v1, p1, Lg/blg;->c:Lg/gsn;

    iput-object p2, p1, Lg/blg;->b:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, p1, v1}, Lg/drx;->t(Lg/anq;Ljava/lang/Object;Lg/ftl;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Lg/anq;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/anq;

    invoke-static {p1, p2, v1}, Lg/drx;->t(Lg/anq;Ljava/lang/Object;Lg/ftl;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected receiver type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final aj()Z
    .locals 5

    sget-object v0, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ak()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lg/djo;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final al(J)V
    .locals 10

    sget-object v0, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ggb;

    :cond_0
    :goto_0
    sget-object v1, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    iget v2, p0, Lg/djo;->t:I

    int-to-long v5, v2

    add-long/2addr v5, v3

    sget-object v2, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v2, p1, v5

    if-gez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lg/drx;->n:I

    int-to-long v5, v1

    div-long v7, v3, v5

    rem-long v5, v3, v5

    long-to-int v1, v5

    iget-wide v5, v0, Lg/fu;->b:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    invoke-virtual {p0, v7, v8, v0}, Lg/djo;->ab(JLg/ggb;)Lg/ggb;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v5

    :cond_3
    const/4 v7, 0x0

    move-wide v5, v3

    move-object v3, v0

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/drx;->c:Lg/hy;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide v0

    cmp-long v2, v5, v0

    if-gez v2, :cond_5

    invoke-virtual {v3}, Lg/aym;->l()V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lg/aym;->l()V

    :cond_5
    :goto_1
    move-object v0, v3

    goto :goto_0
.end method

.method public final am()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lg/aqb;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final an(Lg/ggb;IJLg/w;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v0, p5

    instance-of v1, v0, Lg/it;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/it;

    iget v6, v1, Lg/it;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v1, Lg/it;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lg/it;

    invoke-direct {v1, p0, v0}, Lg/it;-><init>(Lg/djo;Lg/w;)V

    :goto_0
    iget-object v0, v1, Lg/it;->result:Ljava/lang/Object;

    sget-object v7, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v6, v1, Lg/it;->label:I

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v2, v1, Lg/it;->L$1:Ljava/lang/Object;

    check-cast v2, Lg/ggb;

    iget-object v1, v1, Lg/it;->L$0:Ljava/lang/Object;

    check-cast v1, Lg/djo;

    invoke-static {v0}, Lg/eg;->k(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lg/eg;->k(Ljava/lang/Object;)V

    iput-object p0, v1, Lg/it;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lg/it;->L$1:Ljava/lang/Object;

    iput v3, v1, Lg/it;->I$0:I

    iput-wide v4, v1, Lg/it;->J$0:J

    iput v8, v1, Lg/it;->label:I

    invoke-static {v1}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object v0

    invoke-static {v0}, Lg/gs;->bb(Lg/bdp;)Lg/gsn;

    move-result-object v9

    :try_start_0
    new-instance v6, Lg/bwc;

    invoke-direct {v6, v9}, Lg/bwc;-><init>(Lg/gsn;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lg/drx;->l:Lg/hy;

    if-ne v0, v4, :cond_3

    invoke-virtual {v6, v2, v3}, Lg/bwc;->d(Lg/fu;I)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    sget-object v3, Lg/drx;->c:Lg/hy;

    const/4 v10, 0x0

    if-ne v0, v3, :cond_c

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide v3

    cmp-long v0, p3, v3

    if-gez v0, :cond_4

    invoke-virtual {v2}, Lg/aym;->l()V

    :cond_4
    sget-object v0, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ggb;

    :goto_1
    sget-object v2, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v8}, Lg/djo;->ao(JZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v2, Lg/buf;

    invoke-direct {v2, v0}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lg/clw;

    invoke-direct {v0, v2}, Lg/clw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Lg/gsn;->_z(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    sget-object v2, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v2, Lg/drx;->n:I

    int-to-long v2, v2

    div-long v11, v4, v2

    rem-long v2, v4, v2

    long-to-int v3, v2

    iget-wide v13, v0, Lg/fu;->b:J

    cmp-long v2, v13, v11

    if-eqz v2, :cond_7

    invoke-virtual {p0, v11, v12, v0}, Lg/djo;->ab(JLg/ggb;)Lg/ggb;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_7
    move-object v2, v0

    goto :goto_2

    :goto_3
    invoke-virtual/range {v1 .. v6}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/drx;->l:Lg/hy;

    if-ne v0, v1, :cond_8

    invoke-virtual {v6, v2, v3}, Lg/bwc;->d(Lg/fu;I)V

    goto :goto_5

    :cond_8
    sget-object v1, Lg/drx;->c:Lg/hy;

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide v0

    cmp-long v3, v4, v0

    if-gez v3, :cond_9

    invoke-virtual {v2}, Lg/aym;->l()V

    :cond_9
    move-object v0, v2

    goto :goto_1

    :cond_a
    sget-object v1, Lg/drx;->d:Lg/hy;

    if-eq v0, v1, :cond_b

    invoke-virtual {v2}, Lg/aym;->l()V

    new-instance v1, Lg/clw;

    invoke-direct {v1, v0}, Lg/clw;-><init>(Ljava/lang/Object;)V

    iget v0, v9, Lg/fpm;->k:I

    :goto_4
    invoke-virtual {v9, v1, v0, v10}, Lg/gsn;->ae(Ljava/lang/Object;ILg/and;)V

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {v2}, Lg/aym;->l()V

    new-instance v1, Lg/clw;

    invoke-direct {v1, v0}, Lg/clw;-><init>(Ljava/lang/Object;)V

    iget v0, v9, Lg/fpm;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v9}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_d

    return-object v7

    :cond_d
    :goto_6
    check-cast v0, Lg/clw;

    iget-object v0, v0, Lg/clw;->b:Ljava/lang/Object;

    return-object v0

    :goto_7
    invoke-virtual {v9}, Lg/gsn;->x()V

    throw v0
.end method

.method public final ao(JZ)Z
    .locals 14

    const/16 v0, 0x3c

    shr-long v0, p1, v0

    long-to-int v1, v0

    const/4 v0, 0x0

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    const/4 v3, 0x2

    sget-object v4, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v5, 0xfffffffffffffffL

    if-eq v1, v3, :cond_d

    const/4 v3, 0x3

    if-ne v1, v3, :cond_c

    and-long/2addr v5, p1

    invoke-virtual {p0, v5, v6}, Lg/djo;->ag(J)Lg/ggb;

    move-result-object v1

    const/4 v3, 0x0

    move-object v5, v3

    :cond_0
    sget v6, Lg/drx;->n:I

    sub-int/2addr v6, v2

    :goto_0
    const/4 v7, -0x1

    if-ge v7, v6, :cond_9

    iget-wide v8, v1, Lg/fu;->b:J

    sget v10, Lg/drx;->n:I

    int-to-long v10, v10

    mul-long v8, v8, v10

    int-to-long v10, v6

    add-long/2addr v8, v10

    :cond_1
    invoke-virtual {v1, v6}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lg/drx;->m:Lg/hy;

    if-eq v10, v11, :cond_a

    sget-object v11, Lg/drx;->e:Lg/hy;

    if-ne v10, v11, :cond_2

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v11

    cmp-long v13, v8, v11

    if-ltz v13, :cond_a

    sget-object v11, Lg/drx;->f:Lg/hy;

    invoke-virtual {v1, v10, v6, v11}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1, v6, v3}, Lg/ggb;->s(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/fu;->c()V

    goto :goto_4

    :cond_2
    sget-object v11, Lg/drx;->g:Lg/hy;

    if-eq v10, v11, :cond_8

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    instance-of v11, v10, Lg/cjq;

    if-nez v11, :cond_6

    instance-of v11, v10, Lg/axx;

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    sget-object v11, Lg/drx;->r:Lg/hy;

    if-eq v10, v11, :cond_a

    sget-object v12, Lg/drx;->i:Lg/hy;

    if-ne v10, v12, :cond_5

    goto :goto_5

    :cond_5
    if-eq v10, v11, :cond_1

    goto :goto_4

    :cond_6
    :goto_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v11

    cmp-long v13, v8, v11

    if-ltz v13, :cond_a

    instance-of v11, v10, Lg/axx;

    if-eqz v11, :cond_7

    move-object v11, v10

    check-cast v11, Lg/axx;

    iget-object v11, v11, Lg/axx;->a:Lg/cjq;

    goto :goto_2

    :cond_7
    move-object v11, v10

    check-cast v11, Lg/cjq;

    :goto_2
    sget-object v12, Lg/drx;->f:Lg/hy;

    invoke-virtual {v1, v10, v6, v12}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v5, v11}, Lg/buj;->bc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v6, v3}, Lg/ggb;->s(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/fu;->c()V

    goto :goto_4

    :cond_8
    :goto_3
    sget-object v11, Lg/drx;->f:Lg/hy;

    invoke-virtual {v1, v10, v6, v11}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Lg/fu;->c()V

    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_9
    sget-object v6, Lg/aym;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aym;

    check-cast v1, Lg/ggb;

    if-nez v1, :cond_0

    :cond_a
    :goto_5
    if-eqz v5, :cond_1c

    instance-of v1, v5, Ljava/util/ArrayList;

    if-nez v1, :cond_b

    check-cast v5, Lg/cjq;

    invoke-virtual {p0, v5, v0}, Lg/djo;->af(Lg/cjq;Z)V

    goto/16 :goto_a

    :cond_b
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_6
    if-ge v7, v1, :cond_1c

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cjq;

    invoke-virtual {p0, v3, v0}, Lg/djo;->af(Lg/cjq;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_c
    const-string v0, "unexpected close status: "

    invoke-static {v1, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    and-long/2addr v5, p1

    invoke-virtual {p0, v5, v6}, Lg/djo;->ag(J)Lg/ggb;

    if-eqz p3, :cond_1c

    :cond_e
    :goto_7
    sget-object v1, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ggb;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-gtz v9, :cond_f

    goto/16 :goto_a

    :cond_f
    sget v5, Lg/drx;->n:I

    int-to-long v5, v5

    div-long v9, v7, v5

    iget-wide v11, v3, Lg/fu;->b:J

    cmp-long v13, v11, v9

    if-eqz v13, :cond_10

    invoke-virtual {p0, v9, v10, v3}, Lg/djo;->ab(JLg/ggb;)Lg/ggb;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ggb;

    iget-wide v5, v1, Lg/fu;->b:J

    cmp-long v1, v5, v9

    if-gez v1, :cond_e

    goto :goto_a

    :cond_10
    invoke-virtual {v3}, Lg/aym;->l()V

    rem-long v5, v7, v5

    long-to-int v1, v5

    :cond_11
    invoke-virtual {v3, v1}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1a

    sget-object v6, Lg/drx;->g:Lg/hy;

    if-ne v5, v6, :cond_12

    goto :goto_8

    :cond_12
    sget-object v1, Lg/drx;->e:Lg/hy;

    if-ne v5, v1, :cond_13

    goto :goto_b

    :cond_13
    sget-object v1, Lg/drx;->o:Lg/hy;

    if-ne v5, v1, :cond_14

    goto :goto_9

    :cond_14
    sget-object v1, Lg/drx;->f:Lg/hy;

    if-ne v5, v1, :cond_15

    goto :goto_9

    :cond_15
    sget-object v1, Lg/drx;->m:Lg/hy;

    if-ne v5, v1, :cond_16

    goto :goto_9

    :cond_16
    sget-object v1, Lg/drx;->a:Lg/hy;

    if-ne v5, v1, :cond_17

    goto :goto_9

    :cond_17
    sget-object v1, Lg/drx;->r:Lg/hy;

    if-ne v5, v1, :cond_18

    goto :goto_b

    :cond_18
    sget-object v1, Lg/drx;->i:Lg/hy;

    if-ne v5, v1, :cond_19

    goto :goto_9

    :cond_19
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v1, v7, v5

    if-nez v1, :cond_1b

    goto :goto_b

    :cond_1a
    :goto_8
    sget-object v6, Lg/drx;->a:Lg/hy;

    invoke-virtual {v3, v5, v1, v6}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lg/djo;->ae()V

    :cond_1b
    :goto_9
    const-wide/16 v5, 0x1

    add-long v9, v7, v5

    sget-object v5, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto/16 :goto_7

    :cond_1c
    :goto_a
    return v2

    :cond_1d
    :goto_b
    return v0
.end method

.method public final ap(Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    :cond_0
    invoke-virtual {p1, p2}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0, p4, p5}, Lg/djo;->as(J)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    sget-object v0, Lg/drx;->e:Lg/hy;

    invoke-virtual {p1, v3, p2, v0}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p7, :cond_2

    sget-object v0, Lg/drx;->o:Lg/hy;

    invoke-virtual {p1, v3, p2, v0}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/fu;->c()V

    return v1

    :cond_2
    if-nez p6, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    invoke-virtual {p1, v3, p2, p6}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_4
    sget-object v4, Lg/drx;->g:Lg/hy;

    if-ne v0, v4, :cond_5

    sget-object v1, Lg/drx;->e:Lg/hy;

    invoke-virtual {p1, v0, p2, v1}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_5
    sget-object p4, Lg/drx;->b:Lg/hy;

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    invoke-virtual {p1, p2, v3}, Lg/ggb;->s(ILjava/lang/Object;)V

    return p5

    :cond_6
    sget-object p6, Lg/drx;->a:Lg/hy;

    if-ne v0, p6, :cond_7

    invoke-virtual {p1, p2, v3}, Lg/ggb;->s(ILjava/lang/Object;)V

    return p5

    :cond_7
    sget-object p6, Lg/drx;->f:Lg/hy;

    if-ne v0, p6, :cond_8

    invoke-virtual {p1, p2, v3}, Lg/ggb;->s(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lg/djo;->ah()Z

    return v1

    :cond_8
    invoke-virtual {p1, p2, v3}, Lg/ggb;->s(ILjava/lang/Object;)V

    instance-of p6, v0, Lg/axx;

    if-eqz p6, :cond_9

    check-cast v0, Lg/axx;

    iget-object v0, v0, Lg/axx;->a:Lg/cjq;

    :cond_9
    invoke-virtual {p0, v0, p3}, Lg/djo;->ai(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    sget-object p3, Lg/drx;->m:Lg/hy;

    invoke-virtual {p1, p2, p3}, Lg/ggb;->q(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object p3, p1, Lg/ggb;->o:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p6, p2, 0x2

    add-int/2addr p6, v2

    invoke-virtual {p3, p6, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p4, :cond_b

    invoke-virtual {p1, p2, v2}, Lg/ggb;->r(IZ)V

    :cond_b
    return p5
.end method

.method public final aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1, p2}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lg/ggb;->o:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    const-wide v3, 0xfffffffffffffffL

    sget-object v5, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-nez v0, :cond_1

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v6, v3

    cmp-long v8, p3, v6

    if-ltz v8, :cond_2

    if-nez p5, :cond_0

    sget-object p1, Lg/drx;->d:Lg/hy;

    return-object p1

    :cond_0
    invoke-virtual {p1, v0, p2, p5}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/djo;->ae()V

    sget-object p1, Lg/drx;->l:Lg/hy;

    return-object p1

    :cond_1
    sget-object v6, Lg/drx;->e:Lg/hy;

    if-ne v0, v6, :cond_2

    sget-object v6, Lg/drx;->m:Lg/hy;

    invoke-virtual {p1, v0, p2, v6}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/djo;->ae()V

    mul-int/lit8 p3, p2, 0x2

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2}, Lg/ggb;->s(ILjava/lang/Object;)V

    return-object p3

    :cond_2
    invoke-virtual {p1, p2}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v6, Lg/drx;->g:Lg/hy;

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    sget-object v6, Lg/drx;->e:Lg/hy;

    if-ne v0, v6, :cond_4

    sget-object v6, Lg/drx;->m:Lg/hy;

    invoke-virtual {p1, v0, p2, v6}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/djo;->ae()V

    mul-int/lit8 p3, p2, 0x2

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2}, Lg/ggb;->s(ILjava/lang/Object;)V

    return-object p3

    :cond_4
    sget-object v6, Lg/drx;->o:Lg/hy;

    if-ne v0, v6, :cond_5

    sget-object p1, Lg/drx;->c:Lg/hy;

    return-object p1

    :cond_5
    sget-object v7, Lg/drx;->a:Lg/hy;

    if-ne v0, v7, :cond_6

    sget-object p1, Lg/drx;->c:Lg/hy;

    return-object p1

    :cond_6
    sget-object v7, Lg/drx;->f:Lg/hy;

    if-ne v0, v7, :cond_7

    invoke-virtual {p0}, Lg/djo;->ae()V

    sget-object p1, Lg/drx;->c:Lg/hy;

    return-object p1

    :cond_7
    sget-object v7, Lg/drx;->r:Lg/hy;

    if-eq v0, v7, :cond_2

    sget-object v7, Lg/drx;->i:Lg/hy;

    invoke-virtual {p1, v0, p2, v7}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    instance-of p3, v0, Lg/axx;

    if-eqz p3, :cond_8

    check-cast v0, Lg/axx;

    iget-object v0, v0, Lg/axx;->a:Lg/cjq;

    :cond_8
    invoke-static {v0}, Lg/djo;->x(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    sget-object p3, Lg/drx;->m:Lg/hy;

    invoke-virtual {p1, p2, p3}, Lg/ggb;->q(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lg/djo;->ae()V

    mul-int/lit8 p3, p2, 0x2

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2}, Lg/ggb;->s(ILjava/lang/Object;)V

    return-object p3

    :cond_9
    invoke-virtual {p1, p2, v6}, Lg/ggb;->q(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/fu;->c()V

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lg/djo;->ae()V

    :cond_a
    sget-object p1, Lg/drx;->c:Lg/hy;

    return-object p1

    :cond_b
    :goto_0
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v6, v3

    cmp-long v8, p3, v6

    if-gez v8, :cond_c

    sget-object v6, Lg/drx;->a:Lg/hy;

    invoke-virtual {p1, v0, p2, v6}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/djo;->ae()V

    sget-object p1, Lg/drx;->c:Lg/hy;

    return-object p1

    :cond_c
    if-nez p5, :cond_d

    sget-object p1, Lg/drx;->d:Lg/hy;

    return-object p1

    :cond_d
    invoke-virtual {p1, v0, p2, p5}, Lg/ggb;->t(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/djo;->ae()V

    sget-object p1, Lg/drx;->l:Lg/hy;

    return-object p1
.end method

.method public final ar(JLg/ggb;)V
    .locals 5

    :goto_0
    iget-wide v0, p3, Lg/fu;->b:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-virtual {p3}, Lg/aym;->m()Lg/aym;

    move-result-object v0

    check-cast v0, Lg/ggb;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Lg/fu;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lg/aym;->m()Lg/aym;

    move-result-object p1

    check-cast p1, Lg/ggb;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p1, Lg/djo;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/fu;

    iget-wide v0, p2, Lg/fu;->b:J

    iget-wide v2, p3, Lg/fu;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Lg/fu;->f()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lg/fu;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lg/aym;->k()V

    :cond_6
    :goto_3
    return-void

    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_5

    invoke-virtual {p3}, Lg/fu;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lg/aym;->k()V

    goto :goto_2
.end method

.method public final as(J)Z
    .locals 4

    sget-object v0, Lg/djo;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    sget-object v0, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    iget v2, p0, Lg/djo;->t:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final at()J
    .locals 4

    sget-object v0, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    sget-object v0, Lg/djo;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ggb;

    :cond_0
    :goto_0
    sget-object v9, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide v10, 0xfffffffffffffffL

    and-long v5, v3, v10

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v4, v12}, Lg/djo;->ao(JZ)Z

    move-result v8

    sget v13, Lg/drx;->n:I

    int-to-long v3, v13

    div-long v14, v5, v3

    rem-long v3, v5, v3

    long-to-int v3, v3

    move-wide/from16 v16, v10

    iget-wide v10, v2, Lg/fu;->b:J

    sget-object v4, Lg/dgi;->a:Lg/dgi;

    cmp-long v7, v10, v14

    if-eqz v7, :cond_3

    invoke-static {v1, v14, v15, v2}, Lg/djo;->z(Lg/djo;JLg/ggb;)Lg/ggb;

    move-result-object v7

    if-nez v7, :cond_2

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p2}, Lg/djo;->ac(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne v0, v2, :cond_1

    return-object v0

    :cond_1
    move-object v10, v4

    goto/16 :goto_9

    :cond_2
    move-object v2, v7

    :cond_3
    const/4 v7, 0x0

    move-object v10, v4

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v8}, Lg/djo;->w(Lg/djo;Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v11, 0x1

    if-eq v7, v11, :cond_19

    const/4 v14, 0x2

    if-eq v7, v14, :cond_18

    sget-object v15, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const/4 v4, 0x5

    const/4 v8, 0x4

    const/4 v12, 0x3

    if-eq v7, v12, :cond_7

    if-eq v7, v8, :cond_5

    if-eq v7, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lg/aym;->l()V

    goto :goto_0

    :cond_5
    invoke-virtual {v15, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long v0, v5, v3

    if-gez v0, :cond_6

    invoke-virtual {v2}, Lg/aym;->l()V

    :cond_6
    invoke-virtual/range {p0 .. p2}, Lg/djo;->ac(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne v0, v2, :cond_19

    return-object v0

    :cond_7
    invoke-static/range {p2 .. p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object v7

    invoke-static {v7}, Lg/gs;->bb(Lg/bdp;)Lg/gsn;

    move-result-object v7

    const/16 v19, 0x4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    const/4 v12, 0x4

    :try_start_0
    invoke-static/range {v1 .. v8}, Lg/djo;->w(Lg/djo;Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_16

    if-eq v8, v11, :cond_11

    if-eq v8, v14, :cond_15

    if-eq v8, v12, :cond_14

    const-string v13, "unexpected"

    const/4 v3, 0x5

    if-ne v8, v3, :cond_13

    :try_start_1
    invoke-virtual {v2}, Lg/aym;->l()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ggb;

    :goto_1
    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v5, v2, v16

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Lg/djo;->ao(JZ)Z

    move-result v2

    sget v3, Lg/drx;->n:I

    move-object/from16 v18, v9

    int-to-long v8, v3

    move-object/from16 v20, v13

    div-long v12, v5, v8

    rem-long v8, v5, v8

    long-to-int v9, v8

    move-object/from16 v21, v15

    iget-wide v14, v0, Lg/fu;->b:J

    cmp-long v8, v14, v12

    if-eqz v8, :cond_b

    invoke-static {v1, v12, v13, v0}, Lg/djo;->z(Lg/djo;JLg/ggb;)Lg/ggb;

    move-result-object v8

    if-nez v8, :cond_a

    if-eqz v2, :cond_9

    :cond_8
    :goto_2
    invoke-static {v1, v4, v7}, Lg/djo;->v(Lg/djo;Ljava/lang/Object;Lg/gsn;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_9
    :goto_3
    move-object/from16 v9, v18

    move-object/from16 v13, v20

    move-object/from16 v15, v21

    const/4 v12, 0x4

    const/4 v14, 0x2

    goto :goto_1

    :cond_a
    move-object v0, v8

    :cond_b
    move v8, v2

    move-object v2, v0

    move v0, v3

    move v3, v9

    const/4 v9, 0x0

    invoke-static/range {v1 .. v8}, Lg/djo;->w(Lg/djo;Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v12

    move/from16 v22, v8

    move-object v8, v2

    move/from16 v2, v22

    if-eqz v12, :cond_12

    if-eq v12, v11, :cond_11

    const/4 v13, 0x2

    if-eq v12, v13, :cond_f

    const/4 v14, 0x3

    if-eq v12, v14, :cond_e

    const/4 v0, 0x4

    if-eq v12, v0, :cond_d

    const/4 v3, 0x5

    if-eq v12, v3, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v8}, Lg/aym;->l()V

    :goto_4
    move-object v0, v8

    goto :goto_3

    :cond_d
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v0, v5, v2

    if-gez v0, :cond_8

    invoke-virtual {v8}, Lg/aym;->l()V

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v2, v20

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v8}, Lg/fu;->c()V

    goto :goto_2

    :cond_10
    add-int v9, v3, v0

    invoke-virtual {v7, v8, v9}, Lg/gsn;->d(Lg/fu;I)V

    goto :goto_6

    :cond_11
    :goto_5
    invoke-virtual {v7, v10}, Lg/gsn;->_z(Ljava/lang/Object;)V

    goto :goto_6

    :cond_12
    invoke-virtual {v8}, Lg/aym;->l()V

    goto :goto_5

    :cond_13
    move-object v2, v13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object v0, v15

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v0, v5, v8

    if-gez v0, :cond_8

    invoke-virtual {v2}, Lg/aym;->l()V

    goto :goto_2

    :cond_15
    add-int/2addr v3, v13

    invoke-virtual {v7, v2, v3}, Lg/gsn;->d(Lg/fu;I)V

    goto :goto_6

    :cond_16
    invoke-virtual {v2}, Lg/aym;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_6
    invoke-virtual {v7}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object v4

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne v4, v0, :cond_17

    goto :goto_7

    :cond_17
    move-object v4, v10

    :goto_7
    if-ne v4, v0, :cond_19

    return-object v4

    :goto_8
    invoke-virtual {v7}, Lg/gsn;->x()V

    throw v0

    :cond_18
    move-object/from16 v4, p1

    if-eqz v8, :cond_19

    invoke-virtual {v2}, Lg/fu;->c()V

    invoke-virtual/range {p0 .. p2}, Lg/djo;->ac(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne v0, v2, :cond_19

    return-object v0

    :cond_19
    :goto_9
    return-object v10

    :cond_1a
    invoke-virtual {v2}, Lg/aym;->l()V

    return-object v10
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    sget-object v8, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v2, v9}, Lg/djo;->ao(JZ)Z

    move-result v3

    const/4 v10, 0x1

    const-wide v11, 0xfffffffffffffffL

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    and-long/2addr v1, v11

    invoke-virtual {p0, v1, v2}, Lg/djo;->as(J)Z

    move-result v1

    xor-int/2addr v1, v10

    :goto_0
    sget-object v13, Lg/clw;->a:Lg/dmq;

    if-eqz v1, :cond_1

    return-object v13

    :cond_1
    sget-object v6, Lg/drx;->o:Lg/hy;

    sget-object v1, Lg/djo;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ggb;

    :goto_1
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v11

    invoke-virtual {p0, v2, v3, v9}, Lg/djo;->ao(JZ)Z

    move-result v7

    sget v14, Lg/drx;->n:I

    int-to-long v2, v14

    div-long v11, v4, v2

    rem-long v2, v4, v2

    long-to-int v2, v2

    iget-wide v9, v1, Lg/fu;->b:J

    cmp-long v3, v9, v11

    if-eqz v3, :cond_4

    invoke-static {p0, v11, v12, v1}, Lg/djo;->z(Lg/djo;JLg/ggb;)Lg/ggb;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lg/djo;->am()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lg/buf;

    invoke-direct {v2, v1}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_2
    const-wide v11, 0xfffffffffffffffL

    goto :goto_1

    :cond_3
    move-object v1, v3

    :cond_4
    move-object v0, p0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v7}, Lg/djo;->w(Lg/djo;Lg/ggb;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v9

    sget-object v3, Lg/dgi;->a:Lg/dgi;

    if-eqz v9, :cond_e

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    const/4 v3, 0x2

    if-eq v9, v3, :cond_9

    const/4 v2, 0x3

    if-eq v9, v2, :cond_8

    const/4 v2, 0x4

    if-eq v9, v2, :cond_6

    const/4 v2, 0x5

    if-eq v9, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lg/aym;->l()V

    :goto_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    sget-object v2, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-gez v6, :cond_7

    invoke-virtual {v1}, Lg/aym;->l()V

    :cond_7
    invoke-virtual {p0}, Lg/djo;->am()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lg/buf;

    invoke-direct {v2, v1}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v1}, Lg/fu;->c()V

    invoke-virtual {p0}, Lg/djo;->am()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lg/buf;

    invoke-direct {v2, v1}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_a
    instance-of v3, v6, Lg/cjq;

    if-eqz v3, :cond_b

    check-cast v6, Lg/cjq;

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_c

    add-int/2addr v2, v14

    invoke-interface {v6, v1, v2}, Lg/cjq;->d(Lg/fu;I)V

    :cond_c
    invoke-virtual {v1}, Lg/fu;->c()V

    return-object v13

    :cond_d
    return-object v3

    :cond_e
    invoke-virtual {v1}, Lg/aym;->l()V

    return-object v3
.end method

.method public final g(Lg/ps;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lg/djo;->u(Lg/djo;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/Object;
    .locals 15

    sget-object v0, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    sget-object v3, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lg/djo;->ao(JZ)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lg/buf;

    invoke-direct {v1, v0}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_0
    const-wide v7, 0xfffffffffffffffL

    and-long/2addr v4, v7

    sget-object v7, Lg/clw;->a:Lg/dmq;

    cmp-long v8, v1, v4

    if-ltz v8, :cond_1

    return-object v7

    :cond_1
    sget-object v14, Lg/drx;->b:Lg/hy;

    sget-object v1, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ggb;

    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v6}, Lg/djo;->ao(JZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lg/buf;

    invoke-direct {v1, v0}, Lg/buf;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v12

    sget v2, Lg/drx;->n:I

    int-to-long v4, v2

    div-long v8, v12, v4

    rem-long v4, v12, v4

    long-to-int v11, v4

    iget-wide v4, v1, Lg/fu;->b:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_4

    invoke-virtual {p0, v8, v9, v1}, Lg/djo;->ab(JLg/ggb;)Lg/ggb;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, v2

    :goto_1
    move-object v9, p0

    goto :goto_2

    :cond_4
    move-object v10, v1

    goto :goto_1

    :goto_2
    invoke-virtual/range {v9 .. v14}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v10

    sget-object v4, Lg/drx;->l:Lg/hy;

    if-ne v1, v4, :cond_7

    instance-of v0, v14, Lg/cjq;

    if-eqz v0, :cond_5

    check-cast v14, Lg/cjq;

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_6

    invoke-interface {v14, v2, v11}, Lg/cjq;->d(Lg/fu;I)V

    :cond_6
    invoke-virtual {p0, v12, v13}, Lg/djo;->ad(J)V

    invoke-virtual {v2}, Lg/fu;->c()V

    return-object v7

    :cond_7
    sget-object v4, Lg/drx;->c:Lg/hy;

    if-ne v1, v4, :cond_9

    invoke-virtual {p0}, Lg/djo;->at()J

    move-result-wide v4

    cmp-long v1, v12, v4

    if-gez v1, :cond_8

    invoke-virtual {v2}, Lg/aym;->l()V

    :cond_8
    move-object v1, v2

    goto :goto_0

    :cond_9
    sget-object v0, Lg/drx;->d:Lg/hy;

    if-eq v1, v0, :cond_a

    invoke-virtual {v2}, Lg/aym;->l()V

    return-object v1

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final iterator()Lg/blg;
    .locals 1

    new-instance v0, Lg/blg;

    invoke-direct {v0, p0}, Lg/blg;-><init>(Lg/djo;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v4, 0x3c

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "cancelled,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v3, "closed,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "capacity="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lg/djo;->t:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Lg/ggb;

    sget-object v3, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sget-object v3, Lg/djo;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    sget-object v3, Lg/djo;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lg/grj;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lg/ggb;

    sget-object v9, Lg/drx;->h:Lg/ggb;

    if-eq v8, v9, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v3

    check-cast v4, Lg/ggb;

    iget-wide v8, v4, Lg/fu;->b:J

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lg/ggb;

    iget-wide v10, v10, Lg/fu;->b:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    move-object v3, v4

    move-wide v8, v10

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    check-cast v3, Lg/ggb;

    sget-object v2, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-virtual {v0}, Lg/djo;->at()J

    move-result-wide v12

    :goto_3
    sget v2, Lg/drx;->n:I

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_18

    iget-wide v8, v3, Lg/fu;->b:J

    sget v14, Lg/drx;->n:I

    int-to-long v14, v14

    mul-long v8, v8, v14

    int-to-long v14, v4

    add-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-ltz v14, :cond_8

    cmp-long v15, v8, v10

    if-gez v15, :cond_7

    goto :goto_5

    :cond_7
    const/16 v16, 0x1

    goto/16 :goto_f

    :cond_8
    :goto_5
    invoke-virtual {v3, v4}, Lg/ggb;->p(I)Ljava/lang/Object;

    move-result-object v15

    iget-object v6, v3, Lg/ggb;->o:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v16, 0x1

    mul-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v15, Lg/anq;

    if-eqz v7, :cond_b

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    if-ltz v14, :cond_9

    const-string v7, "receive"

    goto/16 :goto_d

    :cond_9
    if-gez v14, :cond_a

    if-ltz v7, :cond_a

    const-string v7, "send"

    goto/16 :goto_d

    :cond_a
    const-string v7, "cont"

    goto/16 :goto_d

    :cond_b
    instance-of v7, v15, Lg/bwc;

    if-eqz v7, :cond_c

    const-string v7, "receiveCatching"

    goto/16 :goto_d

    :cond_c
    instance-of v7, v15, Lg/axx;

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EB("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :cond_d
    sget-object v7, Lg/drx;->i:Lg/hy;

    invoke-static {v15, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    sget-object v7, Lg/drx;->r:Lg/hy;

    invoke-static {v15, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_6
    if-eqz v7, :cond_f

    const-string v7, "resuming_sender"

    goto :goto_d

    :cond_f
    if-nez v15, :cond_10

    const/4 v7, 0x1

    goto :goto_7

    :cond_10
    sget-object v7, Lg/drx;->g:Lg/hy;

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_7
    if-eqz v7, :cond_11

    const/4 v7, 0x1

    goto :goto_8

    :cond_11
    sget-object v7, Lg/drx;->m:Lg/hy;

    invoke-static {v15, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_8
    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_9

    :cond_12
    sget-object v7, Lg/drx;->a:Lg/hy;

    invoke-static {v15, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_9
    if-eqz v7, :cond_13

    const/4 v7, 0x1

    goto :goto_a

    :cond_13
    sget-object v7, Lg/drx;->b:Lg/hy;

    invoke-static {v15, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_a
    if-eqz v7, :cond_14

    const/4 v7, 0x1

    goto :goto_b

    :cond_14
    sget-object v7, Lg/drx;->o:Lg/hy;

    invoke-static {v15, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_b
    if-eqz v7, :cond_15

    const/4 v7, 0x1

    goto :goto_c

    :cond_15
    sget-object v7, Lg/drx;->f:Lg/hy;

    invoke-static {v15, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_c
    if-nez v7, :cond_17

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_d
    if-eqz v6, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "),"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    :goto_e
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_18
    const/16 v16, 0x1

    invoke-virtual {v3}, Lg/aym;->m()Lg/aym;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lg/ggb;

    if-nez v3, :cond_1b

    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v1}, Lg/dcv;->bl(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleteCharAt(...)"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Char sequence is empty."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_1c
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
