.class public final Lg/sk;
.super Lg/fpm;
.source "SourceFile"

# interfaces
.implements Lg/qz;
.implements Lg/bdp;


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lg/cpk;

.field public final d:Lg/w;

.field public e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, Lg/sk;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/sk;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lg/cpk;Lg/w;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lg/fpm;-><init>(I)V

    iput-object p1, p0, Lg/sk;->c:Lg/cpk;

    iput-object p2, p0, Lg/sk;->d:Lg/w;

    sget-object p1, Lg/baf;->q:Lg/hy;

    iput-object p1, p0, Lg/sk;->e:Ljava/lang/Object;

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object p1

    invoke-static {p1}, Lg/gs;->al(Lg/boj;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lg/sk;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final _z(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lg/sk;->d:Lg/w;

    invoke-interface {v0}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v1

    invoke-static {p1}, Lg/sl;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, Lg/wh;

    invoke-direct {v4, v2, v3}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v2, p0, Lg/sk;->c:Lg/cpk;

    invoke-virtual {v2, v1}, Lg/cpk;->w(Lg/boj;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Lg/sk;->e:Ljava/lang/Object;

    iput v3, p0, Lg/fpm;->k:I

    invoke-virtual {v2, v1, p0}, Lg/cpk;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lg/fla;->b()Lg/bkg;

    move-result-object v1

    iget-wide v5, v1, Lg/bkg;->l:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    iput-object v4, p0, Lg/sk;->e:Ljava/lang/Object;

    iput v3, p0, Lg/fpm;->k:I

    invoke-virtual {v1, p0}, Lg/bkg;->q(Lg/fpm;)V

    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg/bkg;->s(Z)V

    :try_start_0
    invoke-interface {v0}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v2

    iget-object v3, p0, Lg/sk;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lg/gs;->ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Lg/bry;->_z(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lg/bkg;->r()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v1}, Lg/bkg;->o()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v3}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Lg/fpm;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lg/bkg;->o()V

    throw p1
.end method

.method public final f()Lg/qz;
    .locals 2

    iget-object v0, p0, Lg/sk;->d:Lg/w;

    invoke-static {v0}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/sk;->d:Lg/w;

    invoke-interface {v0}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/sk;->e:Ljava/lang/Object;

    sget-object v1, Lg/baf;->q:Lg/hy;

    iput-object v1, p0, Lg/sk;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    instance-of p2, p1, Lg/fwh;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lg/fwh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public final j()Lg/bdp;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/sk;->c:Lg/cpk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/sk;->d:Lg/w;

    invoke-static {v1}, Lg/fso;->ax(Lg/bdp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
