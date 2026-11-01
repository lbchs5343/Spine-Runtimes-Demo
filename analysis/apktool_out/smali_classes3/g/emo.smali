.class public abstract Lg/emo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Lg/dae;


# instance fields
.field public final e:Lg/gan;

.field public final f:Lg/efr;

.field public volatile g:J


# direct methods
.method public constructor <init>(Lg/gan;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/emo;->e:Lg/gan;

    new-instance v0, Lg/efr;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v0, p0, Lg/emo;->f:Lg/efr;

    return-void
.end method


# virtual methods
.method public abstract c()V
.end method

.method public final h()Landroid/os/Handler;
    .locals 5

    sget-object v0, Lg/emo;->d:Lg/dae;

    if-eqz v0, :cond_0

    sget-object v0, Lg/emo;->d:Lg/dae;

    return-object v0

    :cond_0
    const-class v0, Lg/emo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/emo;->d:Lg/dae;

    if-nez v1, :cond_1

    new-instance v1, Lg/dae;

    iget-object v2, p0, Lg/emo;->e:Lg/gan;

    invoke-interface {v2}, Lg/gan;->zzau()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lg/dae;-><init>(Landroid/os/Looper;IZ)V

    sput-object v1, Lg/emo;->d:Lg/dae;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lg/emo;->d:Lg/dae;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/emo;->g:J

    invoke-virtual {p0}, Lg/emo;->h()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lg/emo;->f:Lg/efr;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(J)V
    .locals 3

    invoke-virtual {p0}, Lg/emo;->i()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lg/emo;->e:Lg/gan;

    invoke-interface {v0}, Lg/gan;->zzav()Lg/cvb;

    move-result-object v0

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/emo;->g:J

    invoke-virtual {p0}, Lg/emo;->h()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lg/emo;->f:Lg/efr;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/emo;->e:Lg/gan;

    invoke-interface {v0}, Lg/gan;->zzay()Lg/bgm;

    move-result-object v0

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Failed to schedule delayed post. time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
