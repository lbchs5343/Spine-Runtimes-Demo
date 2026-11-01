.class public final Lg/sv;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final synthetic b:Lg/gwu;

.field public c:Z

.field public d:Lg/frq;

.field public e:J

.field public f:J

.field public final g:Lg/fub;

.field public final h:Lg/aye;

.field public i:I

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private volatile synthetic workerCtl$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/sv;

    const-string v1, "workerCtl$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/sv;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lg/gwu;I)V
    .locals 2

    iput-object p1, p0, Lg/sv;->b:Lg/gwu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-class p1, Lg/gwu;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    new-instance p1, Lg/fub;

    invoke-direct {p1}, Lg/fub;-><init>()V

    iput-object p1, p0, Lg/sv;->g:Lg/fub;

    new-instance p1, Lg/aye;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/sv;->h:Lg/aye;

    sget-object p1, Lg/frq;->DORMANT:Lg/frq;

    iput-object p1, p0, Lg/sv;->d:Lg/frq;

    sget-object p1, Lg/gwu;->c:Lg/hy;

    iput-object p1, p0, Lg/sv;->nextParkedWorker:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-int p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a

    :goto_0
    iput p1, p0, Lg/sv;->i:I

    invoke-virtual {p0, p2}, Lg/sv;->n(I)V

    return-void
.end method


# virtual methods
.method public final j(Lg/frq;)Z
    .locals 6

    iget-object v0, p0, Lg/sv;->d:Lg/frq;

    sget-object v1, Lg/frq;->CPU_ACQUIRED:Lg/frq;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lg/gwu;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v3, 0x40000000000L

    iget-object v5, p0, Lg/sv;->b:Lg/gwu;

    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lg/sv;->d:Lg/frq;

    :cond_2
    return v1
.end method

.method public final k(I)I
    .locals 3

    iget v0, p0, Lg/sv;->i:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lg/sv;->i:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final l()Lg/hbm;
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lg/sv;->k(I)I

    move-result v0

    iget-object v1, p0, Lg/sv;->b:Lg/gwu;

    if-nez v0, :cond_1

    iget-object v0, v1, Lg/gwu;->h:Lg/akc;

    invoke-virtual {v0}, Lg/ckn;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v1, Lg/gwu;->k:Lg/akc;

    invoke-virtual {v0}, Lg/ckn;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbm;

    return-object v0

    :cond_1
    iget-object v0, v1, Lg/gwu;->k:Lg/akc;

    invoke-virtual {v0}, Lg/ckn;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbm;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, v1, Lg/gwu;->h:Lg/akc;

    invoke-virtual {v0}, Lg/ckn;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbm;

    return-object v0
.end method

.method public final m(Z)Lg/hbm;
    .locals 11

    iget-object v0, p0, Lg/sv;->d:Lg/frq;

    sget-object v1, Lg/frq;->CPU_ACQUIRED:Lg/frq;

    iget-object v3, p0, Lg/sv;->b:Lg/gwu;

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lg/sv;->g:Lg/fub;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lg/gwu;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide v1, 0x7ffffc0000000000L

    and-long/2addr v1, v4

    const/16 v6, 0x2a

    shr-long/2addr v1, v6

    long-to-int v2, v1

    if-nez v2, :cond_b

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object p1, Lg/fub;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hbm;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lg/hbm;->ah:Lg/cyl;

    iget v1, v1, Lg/cyl;->e:I

    if-ne v1, v9, :cond_5

    :cond_3
    invoke-virtual {p1, v10, v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v8, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, Lg/fub;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lg/fub;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    :cond_6
    if-eq p1, v0, :cond_8

    sget-object v1, Lg/fub;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0, v9}, Lg/fub;->h(IZ)Lg/hbm;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v8, v1

    :cond_8
    :goto_2
    if-nez v8, :cond_a

    iget-object p1, v3, Lg/gwu;->k:Lg/akc;

    invoke-virtual {p1}, Lg/ckn;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hbm;

    if-nez p1, :cond_9

    invoke-virtual {p0, v9}, Lg/sv;->o(I)Lg/hbm;

    move-result-object p1

    :cond_9
    return-object p1

    :cond_a
    return-object v8

    :cond_b
    const-wide v1, 0x40000000000L

    sub-long v6, v4, v1

    sget-object v2, Lg/gwu;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lg/frq;->CPU_ACQUIRED:Lg/frq;

    iput-object v0, p0, Lg/sv;->d:Lg/frq;

    :goto_3
    if-eqz p1, :cond_10

    iget p1, v3, Lg/gwu;->i:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/sv;->k(I)I

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lg/sv;->l()Lg/hbm;

    move-result-object p1

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/fub;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v10, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hbm;

    if-nez p1, :cond_e

    invoke-virtual {v10}, Lg/fub;->g()Lg/hbm;

    move-result-object p1

    :cond_e
    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    if-nez v9, :cond_11

    invoke-virtual {p0}, Lg/sv;->l()Lg/hbm;

    move-result-object p1

    if-eqz p1, :cond_11

    return-object p1

    :cond_10
    invoke-virtual {p0}, Lg/sv;->l()Lg/hbm;

    move-result-object p1

    if-eqz p1, :cond_11

    return-object p1

    :cond_11
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lg/sv;->o(I)Lg/hbm;

    move-result-object p1

    return-object p1
.end method

.method public final n(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/sv;->b:Lg/gwu;

    iget-object v1, v1, Lg/gwu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lg/sv;->indexInArray:I

    return-void
.end method

.method public final o(I)Lg/hbm;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lg/gwu;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v3, v0, Lg/sv;->b:Lg/gwu;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v0, v2}, Lg/sv;->k(I)I

    move-result v6

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    :goto_0
    if-ge v10, v2, :cond_11

    const/4 v15, 0x1

    add-int/2addr v6, v15

    if-le v6, v2, :cond_1

    const/4 v6, 0x1

    :cond_1
    iget-object v5, v3, Lg/gwu;->e:Lg/es;

    invoke-virtual {v5, v6}, Lg/es;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/sv;

    if-eqz v5, :cond_f

    if-eq v5, v0, :cond_f

    iget-object v5, v5, Lg/sv;->g:Lg/fub;

    const/4 v7, 0x3

    if-ne v1, v7, :cond_2

    invoke-virtual {v5}, Lg/fub;->g()Lg/hbm;

    move-result-object v7

    const-wide v16, 0x7fffffffffffffffL

    const-wide/16 v18, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lg/fub;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7

    const-wide v16, 0x7fffffffffffffffL

    sget-object v8, Lg/fub;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v8

    if-ne v1, v15, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v7, v8, :cond_5

    const-wide/16 v18, 0x0

    if-eqz v9, :cond_4

    sget-object v13, Lg/fub;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v13, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v13

    if-nez v13, :cond_4

    :goto_2
    move-object v7, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v5, v7, v9}, Lg/fub;->h(IZ)Lg/hbm;

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v13

    goto :goto_1

    :cond_5
    const-wide/16 v18, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v13, v0, Lg/sv;->h:Lg/aye;

    if-eqz v7, :cond_7

    iput-object v7, v13, Lg/aye;->element:Ljava/lang/Object;

    move-object v5, v4

    const-wide/16 v7, -0x1

    const-wide/16 v20, -0x1

    goto :goto_7

    :cond_7
    :goto_4
    sget-object v7, Lg/fub;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/hbm;

    if-nez v14, :cond_8

    const-wide/16 v20, -0x1

    goto :goto_6

    :cond_8
    const-wide/16 v20, -0x1

    iget-object v8, v14, Lg/hbm;->ah:Lg/cyl;

    iget v8, v8, Lg/cyl;->e:I

    if-ne v8, v15, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x2

    :goto_5
    and-int/2addr v8, v1

    if-nez v8, :cond_a

    :goto_6
    const-wide/16 v7, -0x2

    move-object v5, v4

    goto :goto_7

    :cond_a
    sget-object v8, Lg/fga;->e:Lg/acq;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v23, v5

    iget-wide v4, v14, Lg/hbm;->ag:J

    sub-long/2addr v8, v4

    sget-wide v4, Lg/fga;->f:J

    cmp-long v24, v8, v4

    if-gez v24, :cond_b

    sub-long/2addr v4, v8

    move-wide v7, v4

    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    move-object/from16 v4, v23

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v7, v4, v14, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iput-object v14, v13, Lg/aye;->element:Ljava/lang/Object;

    move-wide/from16 v7, v20

    :goto_7
    cmp-long v4, v7, v20

    if-nez v4, :cond_d

    iget-object v1, v13, Lg/aye;->element:Ljava/lang/Object;

    check-cast v1, Lg/hbm;

    iput-object v5, v13, Lg/aye;->element:Ljava/lang/Object;

    return-object v1

    :cond_d
    cmp-long v4, v7, v18

    if-lez v4, :cond_10

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_8

    :cond_e
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v14, :cond_c

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_4

    :cond_f
    const-wide v16, 0x7fffffffffffffffL

    :cond_10
    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_11
    const-wide v16, 0x7fffffffffffffffL

    const-wide/16 v18, 0x0

    cmp-long v1, v11, v16

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    move-wide/from16 v11, v18

    :goto_9
    iput-wide v11, v0, Lg/sv;->f:J

    const/16 v22, 0x0

    return-object v22
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lg/sv;->indexInArray:I

    return v0
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/sv;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg/sv;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-object v3, v1, Lg/sv;->b:Lg/gwu;

    sget-object v4, Lg/gwu;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v3, v1, Lg/sv;->d:Lg/frq;

    sget-object v4, Lg/frq;->TERMINATED:Lg/frq;

    if-eq v3, v4, :cond_18

    iget-boolean v3, v1, Lg/sv;->c:Z

    invoke-virtual {v1, v3}, Lg/sv;->m(Z)Lg/hbm;

    move-result-object v3

    const-wide/32 v5, -0x200000

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_9

    iput-wide v7, v1, Lg/sv;->f:J

    iget-object v9, v1, Lg/sv;->b:Lg/gwu;

    iget-object v0, v3, Lg/hbm;->ah:Lg/cyl;

    iget v10, v0, Lg/cyl;->e:I

    iput-wide v7, v1, Lg/sv;->e:J

    iget-object v0, v1, Lg/sv;->d:Lg/frq;

    sget-object v7, Lg/frq;->PARKING:Lg/frq;

    if-ne v0, v7, :cond_3

    sget-object v0, Lg/frq;->BLOCKING:Lg/frq;

    iput-object v0, v1, Lg/sv;->d:Lg/frq;

    :cond_3
    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lg/frq;->BLOCKING:Lg/frq;

    invoke-virtual {v1, v0}, Lg/sv;->j(Lg/frq;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Lg/gwu;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lg/gwu;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lg/gwu;->o(J)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Lg/gwu;->m()Z

    :cond_7
    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v7

    invoke-interface {v7, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v10, :cond_8

    goto :goto_0

    :cond_8
    sget-object v0, Lg/gwu;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v9, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object v0, v1, Lg/sv;->d:Lg/frq;

    if-eq v0, v4, :cond_0

    sget-object v0, Lg/frq;->DORMANT:Lg/frq;

    iput-object v0, v1, Lg/sv;->d:Lg/frq;

    goto :goto_0

    :cond_9
    iput-boolean v2, v1, Lg/sv;->c:Z

    iget-wide v3, v1, Lg/sv;->f:J

    const/4 v9, 0x1

    cmp-long v10, v3, v7

    if-eqz v10, :cond_b

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lg/frq;->PARKING:Lg/frq;

    invoke-virtual {v1, v0}, Lg/sv;->j(Lg/frq;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v3, v1, Lg/sv;->f:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v7, v1, Lg/sv;->f:J

    goto/16 :goto_0

    :cond_b
    iget-object v3, v1, Lg/sv;->nextParkedWorker:Ljava/lang/Object;

    sget-object v4, Lg/gwu;->c:Lg/hy;

    if-eq v3, v4, :cond_15

    sget-object v3, Lg/sv;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :cond_c
    :goto_4
    iget-object v3, v1, Lg/sv;->nextParkedWorker:Ljava/lang/Object;

    sget-object v5, Lg/gwu;->c:Lg/hy;

    if-eq v3, v5, :cond_1

    sget-object v3, Lg/sv;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v5, v1, Lg/sv;->b:Lg/gwu;

    sget-object v6, Lg/gwu;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_1

    :cond_d
    iget-object v5, v1, Lg/sv;->d:Lg/frq;

    sget-object v12, Lg/frq;->TERMINATED:Lg/frq;

    if-ne v5, v12, :cond_e

    goto/16 :goto_1

    :cond_e
    sget-object v5, Lg/frq;->PARKING:Lg/frq;

    invoke-virtual {v1, v5}, Lg/sv;->j(Lg/frq;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v13, v1, Lg/sv;->e:J

    cmp-long v5, v13, v7

    if-nez v5, :cond_f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    iget-object v5, v1, Lg/sv;->b:Lg/gwu;

    const-wide/32 v15, 0x1fffff

    iget-wide v10, v5, Lg/gwu;->f:J

    add-long/2addr v13, v10

    iput-wide v13, v1, Lg/sv;->e:J

    goto :goto_5

    :cond_f
    const-wide/32 v15, 0x1fffff

    :goto_5
    iget-object v5, v1, Lg/sv;->b:Lg/gwu;

    iget-wide v10, v5, Lg/gwu;->f:J

    invoke-static {v10, v11}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-wide v13, v1, Lg/sv;->e:J

    sub-long/2addr v10, v13

    cmp-long v5, v10, v7

    if-ltz v5, :cond_c

    iput-wide v7, v1, Lg/sv;->e:J

    iget-object v5, v1, Lg/sv;->b:Lg/gwu;

    iget-object v10, v5, Lg/gwu;->e:Lg/es;

    monitor-enter v10

    :try_start_1
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_11

    monitor-exit v10

    goto :goto_4

    :cond_11
    :try_start_2
    sget-object v6, Lg/gwu;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v13

    and-long/2addr v13, v15

    long-to-int v11, v13

    iget v13, v5, Lg/gwu;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt v11, v13, :cond_12

    monitor-exit v10

    goto :goto_4

    :cond_12
    :try_start_3
    invoke-virtual {v3, v1, v4, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_13

    monitor-exit v10

    goto :goto_4

    :cond_13
    :try_start_4
    iget v3, v1, Lg/sv;->indexInArray:I

    invoke-virtual {v1, v2}, Lg/sv;->n(I)V

    invoke-virtual {v5, v1, v3, v2}, Lg/gwu;->n(Lg/sv;II)V

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v13

    and-long/2addr v13, v15

    long-to-int v6, v13

    if-eq v6, v3, :cond_14

    iget-object v11, v5, Lg/gwu;->e:Lg/es;

    invoke-virtual {v11, v6}, Lg/es;->b(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lg/bff;->d(Ljava/lang/Object;)V

    check-cast v11, Lg/sv;

    iget-object v13, v5, Lg/gwu;->e:Lg/es;

    invoke-virtual {v13, v3, v11}, Lg/es;->c(ILg/sv;)V

    invoke-virtual {v11, v3}, Lg/sv;->n(I)V

    invoke-virtual {v5, v11, v6, v3}, Lg/gwu;->n(Lg/sv;II)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_14
    :goto_7
    iget-object v3, v5, Lg/gwu;->e:Lg/es;

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v5}, Lg/es;->c(ILg/sv;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v10

    iput-object v12, v1, Lg/sv;->d:Lg/frq;

    goto/16 :goto_4

    :goto_8
    monitor-exit v10

    throw v0

    :cond_15
    const-wide/32 v15, 0x1fffff

    iget-object v3, v1, Lg/sv;->b:Lg/gwu;

    iget-object v7, v1, Lg/sv;->nextParkedWorker:Ljava/lang/Object;

    if-eq v7, v4, :cond_16

    goto/16 :goto_1

    :cond_16
    sget-object v4, Lg/gwu;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :goto_9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v19

    and-long v7, v19, v15

    long-to-int v8, v7

    const-wide/32 v9, 0x200000

    add-long v9, v19, v9

    and-long/2addr v9, v5

    iget v7, v1, Lg/sv;->indexInArray:I

    iget-object v11, v3, Lg/gwu;->e:Lg/es;

    invoke-virtual {v11, v8}, Lg/es;->b(I)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v1, Lg/sv;->nextParkedWorker:Ljava/lang/Object;

    sget-object v17, Lg/gwu;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v7

    or-long v21, v9, v7

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v22}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_1

    :cond_17
    move-object/from16 v3, v18

    goto :goto_9

    :cond_18
    :goto_a
    sget-object v0, Lg/frq;->TERMINATED:Lg/frq;

    invoke-virtual {v1, v0}, Lg/sv;->j(Lg/frq;)Z

    return-void
.end method
