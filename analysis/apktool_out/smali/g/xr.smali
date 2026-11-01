.class public final Lg/xr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final c:Lg/hy;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:J

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final e:I

.field public final f:Z

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_next$volatile"

    const-class v2, Lg/xr;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/xr;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_state$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    new-instance v0, Lg/hy;

    const-string v1, "REMOVE_FROZEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/xr;->c:Lg/hy;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/xr;->e:I

    iput-boolean p2, p0, Lg/xr;->f:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lg/xr;->g:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lg/xr;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const v0, 0x3fffffff    # 1.9999999f

    const-string v1, "Check failed."

    if-gt p2, v0, :cond_1

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final h()Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    :cond_0
    sget-object v6, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v7, 0x1000000000000000L

    and-long v4, v2, v7

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_1

    sget-object v0, Lg/xr;->c:Lg/hy;

    return-object v0

    :cond_1
    const-wide/32 v11, 0x3fffffff

    and-long v4, v2, v11

    long-to-int v0, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v13, 0x1e

    shr-long/2addr v4, v13

    long-to-int v5, v4

    iget v4, v1, Lg/xr;->g:I

    and-int/2addr v5, v4

    and-int v13, v0, v4

    const/4 v14, 0x0

    if-ne v5, v13, :cond_2

    goto :goto_0

    :cond_2
    iget-object v15, v1, Lg/xr;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v15, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-boolean v5, v1, Lg/xr;->f:Z

    if-nez v4, :cond_3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v7

    instance-of v7, v4, Lg/clb;

    if-eqz v7, :cond_4

    :goto_0
    return-object v14

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const v7, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v7

    const-wide/32 v7, -0x40000000

    and-long v18, v2, v7

    move-wide/from16 v20, v7

    int-to-long v7, v0

    or-long v18, v18, v7

    sget-object v0, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-wide/from16 v28, v18

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-wide/from16 v4, v28

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v15, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v18

    :cond_5
    move-object/from16 v1, p0

    if-eqz v19, :cond_0

    :cond_6
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v24

    and-long v2, v24, v11

    long-to-int v0, v2

    and-long v2, v24, v16

    cmp-long v4, v2, v9

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lg/xr;->k()Lg/xr;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_7
    and-long v2, v24, v20

    or-long v26, v2, v7

    sget-object v22, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v23, v1

    invoke-virtual/range {v22 .. v27}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    move-object/from16 v2, v23

    if-eqz v1, :cond_8

    iget-object v1, v2, Lg/xr;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v2, v2, Lg/xr;->g:I

    and-int/2addr v0, v2

    invoke-virtual {v1, v0, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, v14

    :goto_2
    if-nez v1, :cond_6

    return-object v18

    :cond_8
    move-object v1, v2

    goto :goto_1
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 14

    :cond_0
    sget-object v0, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/high16 v1, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-eqz v5, :cond_1

    const-wide/high16 v0, 0x2000000000000000L

    and-long/2addr v0, v3

    cmp-long p1, v0, v7

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_1
    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v3

    const/16 v1, 0x1e

    shr-long/2addr v5, v1

    long-to-int v9, v5

    add-int/lit8 v5, v9, 0x2

    iget v10, p0, Lg/xr;->g:I

    and-int/2addr v5, v10

    and-int v6, v2, v10

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lg/xr;->f:Z

    const v6, 0x3fffffff    # 1.9999999f

    iget-object v11, p0, Lg/xr;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v5, :cond_4

    and-int v5, v9, v10

    invoke-virtual {v11, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    const/16 v0, 0x400

    iget v1, p0, Lg/xr;->e:I

    if-lt v1, v0, :cond_3

    sub-int/2addr v9, v2

    and-int v0, v9, v6

    shr-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    add-int/lit8 v2, v9, 0x1

    and-int/2addr v2, v6

    const-wide v5, -0xfffffffc0000001L    # -3.1050369248997324E231

    and-long/2addr v5, v3

    int-to-long v12, v2

    shl-long v1, v12, v1

    or-long/2addr v5, v1

    sget-object v1, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int v1, v9, v10

    invoke-virtual {v11, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, p0

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v2, v4

    cmp-long v4, v2, v7

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lg/xr;->k()Lg/xr;

    move-result-object v1

    iget-object v2, v1, Lg/xr;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, v1, Lg/xr;->g:I

    and-int/2addr v3, v9

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lg/clb;

    if-eqz v5, :cond_6

    check-cast v4, Lg/clb;

    iget v4, v4, Lg/clb;->a:I

    if-ne v4, v9, :cond_6

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final j()Z
    .locals 11

    :cond_0
    sget-object v0, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v4, 0x2000000000000000L

    and-long v6, v2, v4

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmp-long v1, v6, v9

    if-eqz v1, :cond_1

    return v8

    :cond_1
    const-wide/high16 v6, 0x1000000000000000L

    and-long/2addr v6, v2

    cmp-long v1, v6, v9

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    or-long/2addr v4, v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v8
.end method

.method public final k()Lg/xr;
    .locals 11

    :cond_0
    sget-object v0, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v4, 0x1000000000000000L

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    or-long/2addr v4, v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v4

    :goto_0
    sget-object v4, Lg/xr;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/xr;

    if-eqz v5, :cond_2

    return-object v5

    :cond_2
    new-instance v5, Lg/xr;

    iget v6, v1, Lg/xr;->e:I

    mul-int/lit8 v6, v6, 0x2

    iget-boolean v7, v1, Lg/xr;->f:Z

    invoke-direct {v5, v6, v7}, Lg/xr;-><init>(IZ)V

    const-wide/32 v6, 0x3fffffff

    and-long/2addr v6, v2

    long-to-int v7, v6

    const-wide v8, 0xfffffffc0000000L

    and-long/2addr v8, v2

    const/16 v6, 0x1e

    shr-long/2addr v8, v6

    long-to-int v6, v8

    :goto_1
    iget v8, v1, Lg/xr;->g:I

    and-int v9, v7, v8

    and-int/2addr v8, v6

    if-eq v9, v8, :cond_4

    iget-object v8, v1, Lg/xr;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v8, Lg/clb;

    invoke-direct {v8, v7}, Lg/clb;-><init>(I)V

    :cond_3
    iget v9, v5, Lg/xr;->g:I

    and-int/2addr v9, v7

    iget-object v10, v5, Lg/xr;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const-wide v6, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v6, v2

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_0
.end method
