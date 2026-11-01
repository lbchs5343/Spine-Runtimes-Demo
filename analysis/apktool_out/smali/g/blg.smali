.class public final Lg/blg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cjq;


# instance fields
.field public final synthetic a:Lg/djo;

.field public b:Ljava/lang/Object;

.field public c:Lg/gsn;


# direct methods
.method public constructor <init>(Lg/djo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/blg;->a:Lg/djo;

    sget-object p1, Lg/drx;->k:Lg/hy;

    iput-object p1, p0, Lg/blg;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lg/fu;I)V
    .locals 1

    iget-object v0, p0, Lg/blg;->c:Lg/gsn;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/gsn;->d(Lg/fu;I)V

    :cond_0
    return-void
.end method

.method public final e(Lg/w;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lg/blg;->a:Lg/djo;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ggb;

    :goto_0
    sget-object v2, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v3, v7}, Lg/djo;->ao(JZ)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lg/drx;->f:Lg/hy;

    iput-object p1, p0, Lg/blg;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    sget v0, Lg/asn;->a:I

    throw p1

    :cond_1
    sget-object v2, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v2, Lg/drx;->n:I

    int-to-long v2, v2

    div-long v8, v4, v2

    rem-long v2, v4, v2

    long-to-int v3, v2

    iget-wide v10, v0, Lg/fu;->b:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_2

    invoke-virtual {v1, v8, v9, v0}, Lg/djo;->ab(JLg/ggb;)Lg/ggb;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    move-object v2, v0

    :cond_3
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Lg/drx;->l:Lg/hy;

    if-eq v0, v8, :cond_12

    sget-object v9, Lg/drx;->c:Lg/hy;

    if-ne v0, v9, :cond_5

    invoke-virtual {v1}, Lg/djo;->at()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    invoke-virtual {v2}, Lg/aym;->l()V

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    sget-object v6, Lg/drx;->d:Lg/hy;

    if-ne v0, v6, :cond_11

    invoke-static {p1}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p1

    invoke-static {p1}, Lg/gs;->bb(Lg/bdp;)Lg/gsn;

    move-result-object p1

    :try_start_0
    iput-object p1, p0, Lg/blg;->c:Lg/gsn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, p0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_6

    invoke-virtual {p0, v2, v3}, Lg/blg;->d(Lg/fu;I)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_6
    const/4 v8, 0x0

    if-ne v0, v9, :cond_10

    invoke-virtual {v1}, Lg/djo;->at()J

    move-result-wide v9

    cmp-long v0, v4, v9

    if-gez v0, :cond_7

    invoke-virtual {v2}, Lg/aym;->l()V

    :cond_7
    sget-object v0, Lg/djo;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ggb;

    :goto_1
    sget-object v2, Lg/djo;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lg/djo;->ao(JZ)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v6, Lg/blg;->c:Lg/gsn;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iput-object v8, v6, Lg/blg;->c:Lg/gsn;

    sget-object v2, Lg/drx;->f:Lg/hy;

    iput-object v2, v6, Lg/blg;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_8

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lg/gsn;->_z(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_8
    invoke-static {v1}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gsn;->_z(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    sget-object v2, Lg/djo;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v2, Lg/drx;->n:I

    int-to-long v2, v2

    div-long v9, v4, v2

    rem-long v2, v4, v2

    long-to-int v3, v2

    iget-wide v11, v0, Lg/fu;->b:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_a

    invoke-virtual {v1, v9, v10, v0}, Lg/djo;->ab(JLg/ggb;)Lg/ggb;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_a
    move-object v2, v0

    :cond_b
    invoke-virtual/range {v1 .. v6}, Lg/djo;->aq(Lg/ggb;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v9, Lg/drx;->l:Lg/hy;

    if-ne v0, v9, :cond_c

    invoke-virtual {p0, v2, v3}, Lg/blg;->d(Lg/fu;I)V

    goto :goto_3

    :cond_c
    sget-object v3, Lg/drx;->c:Lg/hy;

    if-ne v0, v3, :cond_e

    invoke-virtual {v1}, Lg/djo;->at()J

    move-result-wide v9

    cmp-long v0, v4, v9

    if-gez v0, :cond_d

    invoke-virtual {v2}, Lg/aym;->l()V

    :cond_d
    move-object v0, v2

    goto :goto_1

    :cond_e
    sget-object v1, Lg/drx;->d:Lg/hy;

    if-eq v0, v1, :cond_f

    invoke-virtual {v2}, Lg/aym;->l()V

    iput-object v0, v6, Lg/blg;->b:Ljava/lang/Object;

    iput-object v8, v6, Lg/blg;->c:Lg/gsn;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v1, p1, Lg/fpm;->k:I

    :goto_2
    invoke-virtual {p1, v0, v1, v8}, Lg/gsn;->ae(Ljava/lang/Object;ILg/and;)V

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v2}, Lg/aym;->l()V

    iput-object v0, v6, Lg/blg;->b:Ljava/lang/Object;

    iput-object v8, v6, Lg/blg;->c:Lg/gsn;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v1, p1, Lg/fpm;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception v0

    move-object v6, p0

    :goto_4
    invoke-virtual {p1}, Lg/gsn;->x()V

    throw v0

    :cond_11
    move-object v6, p0

    invoke-virtual {v2}, Lg/aym;->l()V

    iput-object v0, v6, Lg/blg;->b:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_12
    move-object v6, p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/blg;->b:Ljava/lang/Object;

    sget-object v1, Lg/drx;->k:Lg/hy;

    if-eq v0, v1, :cond_2

    iput-object v1, p0, Lg/blg;->b:Ljava/lang/Object;

    sget-object v1, Lg/drx;->f:Lg/hy;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/blg;->a:Lg/djo;

    invoke-virtual {v0}, Lg/djo;->ak()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lg/gcb;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    :cond_1
    sget v1, Lg/asn;->a:I

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`hasNext()` has not been invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
