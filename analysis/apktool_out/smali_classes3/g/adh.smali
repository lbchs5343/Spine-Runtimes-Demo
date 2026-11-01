.class public final Lg/adh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lg/ezv;

.field public final synthetic b:Z

.field public c:Z

.field public final synthetic d:Z

.field public e:Z

.field public f:Lg/fm;

.field public final g:Ljava/util/concurrent/Executor;

.field public final synthetic h:Lg/ero;

.field public final synthetic i:Ljava/io/File;

.field public j:Z

.field public final synthetic k:I

.field public l:Z

.field public volatile m:Lg/ezv;


# direct methods
.method public constructor <init>(Lg/ero;Landroid/content/Context;Ljava/io/File;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/adh;->h:Lg/ero;

    iput-object p3, p0, Lg/adh;->i:Ljava/io/File;

    iput p4, p0, Lg/adh;->k:I

    iput-boolean p5, p0, Lg/adh;->b:Z

    iput-boolean p6, p0, Lg/adh;->d:Z

    sget-object p1, Lg/ezv;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lg/adh;->j:Z

    iput-boolean p3, p0, Lg/adh;->l:Z

    const/4 p4, 0x1

    iput-boolean p4, p0, Lg/adh;->c:Z

    iput-boolean p3, p0, Lg/adh;->e:Z

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iput-object p1, p0, Lg/adh;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 4

    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lg/adh;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lg/adh;->e:Z

    :cond_0
    iget-object v0, p0, Lg/adh;->a:Lg/ezv;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lg/adh;->m:Lg/ezv;

    return-void

    :cond_1
    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    iget-object v3, v0, Lg/ezv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lg/ezv;->i:Lg/ely;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    iput-object v0, p0, Lg/adh;->a:Lg/ezv;

    :cond_2
    iput-object v2, p0, Lg/adh;->m:Lg/ezv;

    :cond_3
    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lg/adh;->a:Lg/ezv;

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/adh;->m:Lg/ezv;

    iget-object v1, p0, Lg/adh;->g:Ljava/util/concurrent/Executor;

    iget-object v2, v0, Lg/ezv;->e:Lg/egx;

    sget-object v3, Lg/egx;->PENDING:Lg/egx;

    if-eq v2, v3, :cond_2

    sget-object v1, Lg/ftp;->a:[I

    iget-object v0, v0, Lg/ezv;->e:Lg/egx;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Lg/egx;->RUNNING:Lg/egx;

    iput-object v2, v0, Lg/ezv;->e:Lg/egx;

    iget-object v2, v0, Lg/ezv;->h:Lg/gzm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/ezv;->i:Lg/ely;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final p()Lg/atp;
    .locals 15

    iget-object v0, p0, Lg/adh;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lg/adh;->h:Lg/ero;

    iget v2, p0, Lg/adh;->k:I

    iget-boolean v3, p0, Lg/adh;->b:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    array-length v5, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/epx;

    invoke-direct {v6, v2, v3}, Lg/epx;-><init>(IZ)V

    new-instance v2, Lg/atp;

    new-instance v3, Lg/dtd;

    new-instance v7, Lg/bze;

    invoke-direct {v7, v1}, Lg/bze;-><init>(Lg/cuz;)V

    invoke-direct {v3, v7, v6}, Lg/dtd;-><init>(Lg/bze;Lg/epx;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-class v1, Ljava/io/File;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, v2, Lg/atp;->d:[Ljava/lang/Object;

    iput-object v3, v2, Lg/atp;->e:Lg/brr;

    iput v4, v2, Lg/atp;->a:I

    const/4 v3, -0x1

    if-nez v0, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    array-length v5, v0

    :goto_1
    iput v5, v2, Lg/atp;->f:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    array-length v7, v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v0, v8

    iget-object v10, p0, Lg/adh;->a:Lg/ezv;

    if-eqz v10, :cond_2

    goto/16 :goto_c

    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v2, Lg/atp;->h:I

    add-int/2addr v10, v6

    iput v10, v2, Lg/atp;->h:I

    iget-boolean v10, p0, Lg/adh;->d:Z

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    new-instance v10, Lg/eih;

    invoke-direct {v10, v9}, Lg/eih;-><init>(Ljava/io/File;)V

    iget-object v9, p0, Lg/adh;->h:Lg/ero;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v11, v10, Lg/eih;->directory:Z

    if-nez v11, :cond_4

    iget v11, v9, Lg/cuz;->k:I

    if-eqz v11, :cond_4

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    iget-boolean v9, v9, Lg/cuz;->h:Z

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v5, v2, Lg/atp;->g:[Ljava/lang/Object;

    const-string v7, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    if-nez v5, :cond_1f

    array-length v5, v0

    if-nez v5, :cond_7

    goto/16 :goto_c

    :cond_7
    array-length v5, v0

    if-ge v5, v6, :cond_8

    goto/16 :goto_c

    :cond_8
    array-length v5, v0

    if-nez v5, :cond_9

    const/4 v8, 0x0

    goto :goto_8

    :cond_9
    iget-object v5, v2, Lg/atp;->e:Lg/brr;

    invoke-static {v0, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_4
    array-length v10, v0

    if-ge v5, v10, :cond_10

    aget-object v10, v0, v5

    iget-object v11, v2, Lg/atp;->e:Lg/brr;

    aget-object v12, v0, v9

    invoke-virtual {v11, v12, v10}, Lg/brr;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-nez v11, :cond_e

    move v11, v9

    :goto_5
    if-ge v11, v8, :cond_b

    iget-object v12, v2, Lg/atp;->e:Lg/brr;

    aget-object v13, v0, v11

    invoke-virtual {v12, v13, v10}, Lg/brr;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_b
    const/4 v11, -0x1

    :goto_6
    if-eq v11, v3, :cond_c

    aput-object v10, v0, v11

    goto :goto_7

    :cond_c
    if-eq v8, v5, :cond_d

    aput-object v10, v0, v8

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    if-eq v8, v5, :cond_f

    aput-object v10, v0, v8

    :cond_f
    add-int/lit8 v9, v8, 0x1

    move v14, v9

    move v9, v8

    move v8, v14

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    :goto_8
    iget v3, v2, Lg/atp;->a:I

    if-nez v3, :cond_11

    iput-object v0, v2, Lg/atp;->d:[Ljava/lang/Object;

    iput v8, v2, Lg/atp;->a:I

    iget-object v0, v2, Lg/atp;->e:Lg/brr;

    invoke-interface {v0, v4, v8}, Lg/etl;->e(II)V

    return-object v2

    :cond_11
    iget-object v3, v2, Lg/atp;->e:Lg/brr;

    instance-of v5, v3, Lg/bdl;

    if-nez v5, :cond_15

    iget-object v9, v2, Lg/atp;->g:[Ljava/lang/Object;

    if-nez v9, :cond_14

    if-eqz v5, :cond_12

    goto :goto_9

    :cond_12
    iget-object v7, v2, Lg/atp;->j:Lg/bdl;

    if-nez v7, :cond_13

    new-instance v7, Lg/bdl;

    invoke-direct {v7, v3}, Lg/bdl;-><init>(Lg/brr;)V

    iput-object v7, v2, Lg/atp;->j:Lg/bdl;

    :cond_13
    iget-object v3, v2, Lg/atp;->j:Lg/bdl;

    iput-object v3, v2, Lg/atp;->e:Lg/brr;

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_9
    iget-object v3, v2, Lg/atp;->d:[Ljava/lang/Object;

    iput-object v3, v2, Lg/atp;->g:[Ljava/lang/Object;

    iput v4, v2, Lg/atp;->i:I

    iget v3, v2, Lg/atp;->a:I

    iput v3, v2, Lg/atp;->b:I

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0xa

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v2, Lg/atp;->d:[Ljava/lang/Object;

    iput v4, v2, Lg/atp;->c:I

    :cond_16
    :goto_a
    iget v1, v2, Lg/atp;->i:I

    iget v3, v2, Lg/atp;->b:I

    if-lt v1, v3, :cond_17

    if-ge v4, v8, :cond_19

    :cond_17
    if-ne v1, v3, :cond_18

    sub-int/2addr v8, v4

    iget-object v1, v2, Lg/atp;->d:[Ljava/lang/Object;

    iget v3, v2, Lg/atp;->c:I

    invoke-static {v0, v4, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v2, Lg/atp;->c:I

    add-int/2addr v0, v8

    iput v0, v2, Lg/atp;->c:I

    iget v1, v2, Lg/atp;->a:I

    add-int/2addr v1, v8

    iput v1, v2, Lg/atp;->a:I

    iget-object v1, v2, Lg/atp;->e:Lg/brr;

    sub-int/2addr v0, v8

    invoke-interface {v1, v0, v8}, Lg/etl;->e(II)V

    goto :goto_b

    :cond_18
    if-ne v4, v8, :cond_1c

    sub-int/2addr v3, v1

    iget-object v0, v2, Lg/atp;->g:[Ljava/lang/Object;

    iget-object v4, v2, Lg/atp;->d:[Ljava/lang/Object;

    iget v6, v2, Lg/atp;->c:I

    invoke-static {v0, v1, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v2, Lg/atp;->c:I

    add-int/2addr v0, v3

    iput v0, v2, Lg/atp;->c:I

    :cond_19
    :goto_b
    const/4 v0, 0x0

    iput-object v0, v2, Lg/atp;->g:[Ljava/lang/Object;

    if-nez v5, :cond_1b

    iget-object v0, v2, Lg/atp;->e:Lg/brr;

    instance-of v1, v0, Lg/bdl;

    if-eqz v1, :cond_1a

    check-cast v0, Lg/bdl;

    iget-object v0, v0, Lg/bdl;->b:Lg/gxt;

    invoke-virtual {v0}, Lg/gxt;->j()V

    :cond_1a
    iget-object v0, v2, Lg/atp;->e:Lg/brr;

    iget-object v1, v2, Lg/atp;->j:Lg/bdl;

    if-ne v0, v1, :cond_1b

    iget-object v0, v1, Lg/bdl;->a:Lg/brr;

    iput-object v0, v2, Lg/atp;->e:Lg/brr;

    :cond_1b
    :goto_c
    return-object v2

    :cond_1c
    iget-object v3, v2, Lg/atp;->g:[Ljava/lang/Object;

    aget-object v1, v3, v1

    aget-object v3, v0, v4

    iget-object v7, v2, Lg/atp;->e:Lg/brr;

    invoke-virtual {v7, v1, v3}, Lg/brr;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1d

    iget-object v1, v2, Lg/atp;->d:[Ljava/lang/Object;

    iget v7, v2, Lg/atp;->c:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lg/atp;->c:I

    aput-object v3, v1, v7

    iget v1, v2, Lg/atp;->a:I

    add-int/2addr v1, v6

    iput v1, v2, Lg/atp;->a:I

    add-int/lit8 v4, v4, 0x1

    iget-object v1, v2, Lg/atp;->e:Lg/brr;

    invoke-interface {v1, v7, v6}, Lg/etl;->e(II)V

    goto :goto_a

    :cond_1d
    if-nez v7, :cond_1e

    iget-object v7, v2, Lg/atp;->e:Lg/brr;

    invoke-virtual {v7, v1, v3}, Lg/brr;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, v2, Lg/atp;->d:[Ljava/lang/Object;

    iget v9, v2, Lg/atp;->c:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v2, Lg/atp;->c:I

    aput-object v3, v7, v9

    add-int/lit8 v4, v4, 0x1

    iget v7, v2, Lg/atp;->i:I

    add-int/2addr v7, v6

    iput v7, v2, Lg/atp;->i:I

    iget-object v7, v2, Lg/atp;->e:Lg/brr;

    invoke-virtual {v7, v1, v3}, Lg/brr;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, v2, Lg/atp;->e:Lg/brr;

    iget v9, v2, Lg/atp;->c:I

    sub-int/2addr v9, v6

    invoke-virtual {v7, v1, v3}, Lg/brr;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v9, v6, v1}, Lg/brr;->h(IILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_1e
    iget-object v3, v2, Lg/atp;->d:[Ljava/lang/Object;

    iget v7, v2, Lg/atp;->c:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v2, Lg/atp;->c:I

    aput-object v1, v3, v7

    iget v1, v2, Lg/atp;->i:I

    add-int/2addr v1, v6

    iput v1, v2, Lg/atp;->i:I

    goto/16 :goto_a

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lg/erl;->au(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
