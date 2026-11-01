.class public final Lg/gfi;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lg/fth;

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(Lg/fth;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lg/gfi;->b:Lg/fth;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sget-object p2, Lg/fth;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lg/gfi;->c:J

    iput-object p4, p0, Lg/gfi;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lg/gfi;->d:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_0

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lg/fth;Ljava/util/concurrent/Callable;Z)V
    .locals 3

    iput-object p1, p0, Lg/gfi;->b:Lg/fth;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p2, Lg/fth;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lg/gfi;->c:J

    const-string p2, "Task exception on worker thread"

    iput-object p2, p0, Lg/gfi;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lg/gfi;->d:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long v2, v0, p2

    if-nez v2, :cond_0

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lg/gfi;

    iget-boolean v0, p1, Lg/gfi;->d:Z

    iget-boolean v1, p0, Lg/gfi;->d:Z

    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lg/gfi;->c:J

    iget-wide v2, p0, Lg/gfi;->c:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    if-lez p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    iget-object p1, p0, Lg/gfi;->b:Lg/fth;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->a:Lg/dvb;

    const-string v0, "Two tasks share the same index. index"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final setException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lg/gfi;->b:Lg/fth;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    iget-object v1, p0, Lg/gfi;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
