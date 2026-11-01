.class public abstract Lg/bbv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkerWrapper\")"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lg/bbv;->a:Ljava/lang/String;

    return-void
.end method

.method public static final b(Lg/dcy;Lg/cg;Lg/avu;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {v0}, Lg/gsn;->ac()V

    new-instance p2, Lg/cqr;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lg/cqr;-><init>(Lg/dcy;Lg/gsn;I)V

    sget-object v1, Lg/fj;->INSTANCE:Lg/fj;

    invoke-interface {p0, p2, v1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p2, Lg/aqh;

    invoke-direct {p2, p1, p0}, Lg/aqh;-><init>(Lg/cg;Lg/dcy;)V

    invoke-virtual {v0, p2}, Lg/gsn;->y(Lg/and;)V

    invoke-virtual {v0}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lg/bff;->d(Ljava/lang/Object;)V

    throw p0
.end method
