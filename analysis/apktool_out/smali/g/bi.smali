.class public final synthetic Lg/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field public final synthetic a:Lg/dwa;

.field public final synthetic b:Lg/cxy;

.field public final synthetic c:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Lg/cxy;Ljava/util/UUID;Lg/dwa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bi;->b:Lg/cxy;

    iput-object p2, p0, Lg/bi;->c:Ljava/util/UUID;

    iput-object p3, p0, Lg/bi;->a:Lg/dwa;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/bi;->b:Lg/cxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/bi;->c:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v1, p0, Lg/bi;->a:Lg/dwa;

    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/cxy;->b:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lg/gac;->an()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lg/fkj;->q:Lg/gys;

    sget-object v4, Lg/gys;->RUNNING:Lg/gys;

    if-ne v3, v4, :cond_0

    new-instance v3, Lg/bkd;

    invoke-direct {v3, v2, v1}, Lg/bkd;-><init>(Ljava/lang/String;Lg/dwa;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Lg/gkr;

    move-result-object v1

    iget-object v2, v1, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Lg/gac;->al()V

    invoke-virtual {v2}, Lg/gac;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v1, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v1, Lg/sw;

    invoke-virtual {v1, v3}, Lg/sw;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lg/gac;->am()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Lg/gac;->am()V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Lg/gac;->ah()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lg/gac;->am()V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_3
    const-string v1, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget-object v3, Lg/cxy;->a:Ljava/lang/String;

    const-string v4, "Error updating Worker progress"

    invoke-virtual {v2, v3, v4, v1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lg/gac;->am()V

    throw v1
.end method
