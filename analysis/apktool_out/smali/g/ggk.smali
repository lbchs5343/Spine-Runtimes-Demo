.class public final Lg/ggk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cdj;
.implements Lg/fme;


# instance fields
.field public final b:Lg/aqv;

.field public c:I

.field public d:Landroid/os/PowerManager$WakeLock;

.field public final e:Lg/gxm;

.field public final f:Lg/aci;

.field public g:Z

.field public final h:Lg/jf;

.field public final i:Lg/vn;

.field public final j:Landroid/content/Context;

.field public final k:Lg/bxc;

.field public final l:I

.field public volatile m:Lg/fe;

.field public final n:Lg/cpk;

.field public final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILg/jf;Lg/aci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ggk;->j:Landroid/content/Context;

    iput p2, p0, Lg/ggk;->l:I

    iput-object p3, p0, Lg/ggk;->h:Lg/jf;

    iget-object p1, p4, Lg/aci;->a:Lg/gxm;

    iput-object p1, p0, Lg/ggk;->e:Lg/gxm;

    iput-object p4, p0, Lg/ggk;->f:Lg/aci;

    iget-object p1, p3, Lg/jf;->g:Lg/fxb;

    iget-object p1, p1, Lg/fxb;->bd:Lg/fzn;

    iget-object p2, p3, Lg/jf;->k:Lg/ccc;

    check-cast p2, Lg/gkr;

    iget-object p3, p2, Lg/gkr;->e:Ljava/lang/Object;

    check-cast p3, Lg/aqv;

    iput-object p3, p0, Lg/ggk;->b:Lg/aqv;

    iget-object p3, p2, Lg/gkr;->c:Ljava/lang/Object;

    check-cast p3, Lg/bxc;

    iput-object p3, p0, Lg/ggk;->k:Lg/bxc;

    iget-object p2, p2, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p2, Lg/cpk;

    iput-object p2, p0, Lg/ggk;->n:Lg/cpk;

    new-instance p2, Lg/vn;

    invoke-direct {p2, p1}, Lg/vn;-><init>(Lg/fzn;)V

    iput-object p2, p0, Lg/ggk;->i:Lg/vn;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/ggk;->g:Z

    iput p1, p0, Lg/ggk;->c:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ggk;->o:Ljava/lang/Object;

    return-void
.end method

.method public static p(Lg/ggk;)V
    .locals 8

    iget v0, p0, Lg/ggk;->l:I

    iget-object v1, p0, Lg/ggk;->k:Lg/bxc;

    iget-object v2, p0, Lg/ggk;->j:Landroid/content/Context;

    iget-object v3, p0, Lg/ggk;->h:Lg/jf;

    iget-object v4, p0, Lg/ggk;->e:Lg/gxm;

    iget-object v5, v4, Lg/gxm;->a:Ljava/lang/String;

    iget v5, p0, Lg/ggk;->c:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    iput v6, p0, Lg/ggk;->c:I

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {p0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_STOP_WORK"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4}, Lg/cip;->g(Landroid/content/Intent;Lg/gxm;)V

    new-instance v6, Lg/hdo;

    const/4 v7, 0x7

    invoke-direct {v6, v3, p0, v0, v7}, Lg/hdo;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v6}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v3, Lg/jf;->f:Lg/egu;

    iget-object v6, v4, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lg/egu;->q(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4}, Lg/cip;->g(Landroid/content/Intent;Lg/gxm;)V

    new-instance v2, Lg/hdo;

    const/4 v4, 0x7

    invoke-direct {v2, v3, p0, v0, v4}, Lg/hdo;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static q(Lg/ggk;)V
    .locals 5

    iget v0, p0, Lg/ggk;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lg/ggk;->c:I

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    iget-object v1, p0, Lg/ggk;->e:Lg/gxm;

    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/ggk;->h:Lg/jf;

    iget-object v0, v0, Lg/jf;->f:Lg/egu;

    iget-object v1, p0, Lg/ggk;->f:Lg/aci;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/egu;->r(Lg/aci;Lg/dsp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ggk;->h:Lg/jf;

    iget-object v0, v0, Lg/jf;->e:Lg/adj;

    iget-object v1, p0, Lg/ggk;->e:Lg/gxm;

    iget-object v2, v0, Lg/adj;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lg/adj;->e(Lg/gxm;)V

    new-instance v3, Lg/dws;

    invoke-direct {v3, v0, v1}, Lg/dws;-><init>(Lg/adj;Lg/gxm;)V

    iget-object v4, v0, Lg/adj;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lg/adj;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lg/adj;->b:Lg/fnq;

    iget-object p0, p0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p0}, Lg/ggk;->r()V

    return-void

    :cond_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    iget-object p0, p0, Lg/ggk;->e:Lg/gxm;

    invoke-static {p0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lg/fkj;Lg/bfx;)V
    .locals 1

    instance-of p1, p2, Lg/gpr;

    iget-object p2, p0, Lg/ggk;->b:Lg/aqv;

    if-eqz p1, :cond_0

    new-instance p1, Lg/dki;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lg/dki;-><init>(Lg/ggk;I)V

    invoke-virtual {p2, p1}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Lg/dki;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lg/dki;-><init>(Lg/ggk;I)V

    invoke-virtual {p2, p1}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lg/ggk;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ggk;->m:Lg/fe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/ggk;->m:Lg/fe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/fyw;->_bi(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lg/ggk;->h:Lg/jf;

    iget-object v1, v1, Lg/jf;->e:Lg/adj;

    iget-object v2, p0, Lg/ggk;->e:Lg/gxm;

    invoke-virtual {v1, v2}, Lg/adj;->e(Lg/gxm;)V

    iget-object v1, p0, Lg/ggk;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    iget-object v2, p0, Lg/ggk;->d:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v2, p0, Lg/ggk;->e:Lg/gxm;

    invoke-static {v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/ggk;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lg/ggk;->e:Lg/gxm;

    iget-object v0, v0, Lg/gxm;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/ggk;->j:Landroid/content/Context;

    const-string v2, " ("

    invoke-static {v0, v2}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lg/ggk;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lg/qj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lg/ggk;->d:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    iget-object v2, p0, Lg/ggk;->d:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/ggk;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lg/ggk;->h:Lg/jf;

    iget-object v1, v1, Lg/jf;->g:Lg/fxb;

    iget-object v1, v1, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ggk;->b:Lg/aqv;

    new-instance v1, Lg/dki;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/dki;-><init>(Lg/ggk;I)V

    invoke-virtual {v0, v1}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/fkj;->ab()Z

    move-result v1

    iput-boolean v1, p0, Lg/ggk;->g:Z

    if-nez v1, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/ggk;->b:Lg/aqv;

    new-instance v1, Lg/dki;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/dki;-><init>(Lg/ggk;I)V

    invoke-virtual {v0, v1}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lg/ggk;->i:Lg/vn;

    iget-object v2, p0, Lg/ggk;->n:Lg/cpk;

    invoke-static {v1, v0, v2, p0}, Lg/gx;->b(Lg/vn;Lg/fkj;Lg/cpk;Lg/cdj;)Lg/fe;

    move-result-object v0

    iput-object v0, p0, Lg/ggk;->m:Lg/fe;

    return-void
.end method

.method public final t(Z)V
    .locals 7

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    iget-object v1, p0, Lg/ggk;->e:Lg/gxm;

    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lg/ggk;->r()V

    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    iget v2, p0, Lg/ggk;->l:I

    iget-object v3, p0, Lg/ggk;->h:Lg/jf;

    iget-object v4, p0, Lg/ggk;->k:Lg/bxc;

    iget-object v5, p0, Lg/ggk;->j:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v1}, Lg/cip;->g(Landroid/content/Intent;Lg/gxm;)V

    new-instance v1, Lg/hdo;

    const/4 v6, 0x7

    invoke-direct {v1, v3, p1, v2, v6}, Lg/hdo;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v4, v1}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p1, p0, Lg/ggk;->g:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lg/hdo;

    const/4 v1, 0x7

    invoke-direct {v0, v3, p1, v2, v1}, Lg/hdo;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v4, v0}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
