.class public final Lg/dbk;
.super Lg/cpk;
.source "SourceFile"

# interfaces
.implements Lg/fjt;


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final h:Lg/cpk;

.field public final j:I

.field public final synthetic k:Lg/fjt;

.field public final l:Lg/ckn;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/dbk;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/dbk;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lg/cpk;I)V
    .locals 0

    invoke-direct {p0}, Lg/cpk;-><init>()V

    iput-object p1, p0, Lg/dbk;->h:Lg/cpk;

    iput p2, p0, Lg/dbk;->j:I

    instance-of p2, p1, Lg/fjt;

    if-eqz p2, :cond_0

    check-cast p1, Lg/fjt;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lg/grp;->a:Lg/fjt;

    :cond_1
    iput-object p1, p0, Lg/dbk;->k:Lg/fjt;

    new-instance p1, Lg/ckn;

    invoke-direct {p1}, Lg/ckn;-><init>()V

    iput-object p1, p0, Lg/dbk;->l:Lg/ckn;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dbk;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(JLg/gsn;)V
    .locals 1

    iget-object v0, p0, Lg/dbk;->k:Lg/fjt;

    invoke-interface {v0, p1, p2, p3}, Lg/fjt;->d(JLg/gsn;)V

    return-void
.end method

.method public final g(Lg/boj;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lg/dbk;->l:Lg/ckn;

    invoke-virtual {p1, p2}, Lg/ckn;->c(Ljava/lang/Runnable;)Z

    sget-object p1, Lg/dbk;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lg/dbk;->j:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lg/dbk;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg/dbk;->m()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lg/gfh;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lg/dbk;->h:Lg/cpk;

    invoke-virtual {p1, p0, p2}, Lg/cpk;->g(Lg/boj;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Lg/boj;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lg/dbk;->l:Lg/ckn;

    invoke-virtual {p1, p2}, Lg/ckn;->c(Ljava/lang/Runnable;)Z

    sget-object p1, Lg/dbk;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lg/dbk;->j:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lg/dbk;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg/dbk;->m()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lg/gfh;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lg/dbk;->h:Lg/cpk;

    invoke-virtual {p1, p0, p2}, Lg/cpk;->i(Lg/boj;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Lg/dbk;->l:Lg/ckn;

    invoke-virtual {v0}, Lg/ckn;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/dbk;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dbk;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lg/dbk;->l:Lg/ckn;

    invoke-virtual {v2}, Lg/ckn;->e()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method

.method public final n()Z
    .locals 4

    iget-object v0, p0, Lg/dbk;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dbk;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lg/dbk;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
