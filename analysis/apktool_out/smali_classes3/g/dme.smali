.class public Lg/dme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Lg/dey;


# instance fields
.field public o:Z

.field public p:J

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/dey;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dme;->n:Lg/dey;

    return-void
.end method


# virtual methods
.method public _au()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lg/dme;->o:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lg/dme;->p:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _av(J)Lg/dme;
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lg/dme;->q:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeout < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(J)Lg/dme;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dme;->o:Z

    iput-wide p1, p0, Lg/dme;->p:J

    return-object p0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lg/dme;->o:Z

    return v0
.end method

.method public s()Lg/dme;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dme;->o:Z

    return-object p0
.end method

.method public t()Lg/dme;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/dme;->q:J

    return-object p0
.end method

.method public u()J
    .locals 2

    iget-boolean v0, p0, Lg/dme;->o:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lg/dme;->p:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
