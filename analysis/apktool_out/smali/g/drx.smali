.class public abstract Lg/drx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/hy;

.field public static final b:Lg/hy;

.field public static final c:Lg/hy;

.field public static final d:Lg/hy;

.field public static final e:Lg/hy;

.field public static final f:Lg/hy;

.field public static final g:Lg/hy;

.field public static final h:Lg/ggb;

.field public static final i:Lg/hy;

.field public static final j:Lg/hy;

.field public static final k:Lg/hy;

.field public static final l:Lg/hy;

.field public static final m:Lg/hy;

.field public static final n:I

.field public static final o:Lg/hy;

.field public static final p:Lg/hy;

.field public static final q:I

.field public static final r:Lg/hy;

.field public static final s:Lg/hy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/ggb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lg/ggb;-><init>(JLg/ggb;Lg/djo;I)V

    sput-object v0, Lg/drx;->h:Lg/ggb;

    const/16 v0, 0x20

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.bufferedChannel.segmentSize"

    invoke-static {v0, v1, v2}, Lg/dzm;->ai(IILjava/lang/String;)I

    move-result v0

    sput v0, Lg/drx;->n:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    invoke-static {v2, v1, v0}, Lg/dzm;->ai(IILjava/lang/String;)I

    move-result v0

    sput v0, Lg/drx;->q:I

    new-instance v0, Lg/hy;

    const-string v1, "BUFFERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->e:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->g:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->i:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->r:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "POISONED"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->a:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->m:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->o:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->b:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->f:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->l:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->d:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->c:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->k:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->p:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->s:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/drx;->j:Lg/hy;

    return-void
.end method

.method public static final t(Lg/anq;Ljava/lang/Object;Lg/ftl;)Z
    .locals 5

    check-cast p0, Lg/gsn;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg/bff;->a:Lg/hy;

    sget-object v1, Lg/gsn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lg/fkq;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lg/fkq;

    iget v4, p0, Lg/fpm;->k:I

    invoke-static {v3, p1, v4, p2}, Lg/gsn;->p(Lg/fkq;Ljava/lang/Object;ILg/and;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lg/gsn;->w()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lg/gsn;->u()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget p1, p0, Lg/fpm;->k:I

    invoke-virtual {p0, p1}, Lg/gsn;->s(I)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
