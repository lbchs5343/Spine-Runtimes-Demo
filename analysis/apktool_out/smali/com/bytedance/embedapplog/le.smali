.class public Lcom/bytedance/embedapplog/le;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/embedapplog/ds;",
        ">;"
    }
.end annotation


# static fields
.field private static d:Lcom/bytedance/embedapplog/le;

.field private static mp:J


# instance fields
.field public dq:Landroid/app/Application;

.field private ia:Landroid/os/Handler;

.field private ig:Lcom/bytedance/embedapplog/wp;

.field private iw:Lcom/bytedance/embedapplog/vw;

.field private kk:Lcom/bytedance/embedapplog/e;

.field private mn:Lcom/bytedance/embedapplog/c;

.field private no:Landroid/os/Handler;

.field private o:Lcom/bytedance/embedapplog/util/dq;

.field private ox:Lcom/bytedance/embedapplog/gh;

.field private p:Lcom/bytedance/embedapplog/u;

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public static dq()V
    .locals 7

    sget-object v0, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/embedapplog/le;->mp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sput-wide v0, Lcom/bytedance/embedapplog/le;->mp:J

    sget-object v0, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/embedapplog/le;->dq([Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/embedapplog/ds;)V
    .locals 7

    sget-object v0, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Init comes First!"

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/h;->dq(Lcom/bytedance/embedapplog/ds;)V

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/bytedance/embedapplog/ds;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v1, v0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    rem-int/lit8 p0, v2, 0xa

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, v0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xfa

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dq([Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Init comes First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private dq([Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/bytedance/embedapplog/ds;->dq(Ljava/lang/String;)Lcom/bytedance/embedapplog/ds;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-virtual {p1, v1}, Lcom/bytedance/embedapplog/u;->dq(Ljava/util/ArrayList;)Z

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/u;->fw()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x64

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_1
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/embedapplog/ds;

    iget-object v5, p0, Lcom/bytedance/embedapplog/le;->kk:Lcom/bytedance/embedapplog/e;

    invoke-virtual {v5, v4, p1}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;Ljava/util/ArrayList;)Z

    move-result v5

    or-int/2addr v2, v5

    instance-of v5, v4, Lcom/bytedance/embedapplog/bu;

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;)Z

    move-result v0

    const/4 v3, 0x1

    move v3, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->iw:Lcom/bytedance/embedapplog/vw;

    invoke-virtual {v1, p1}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/util/ArrayList;)V

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/bytedance/embedapplog/yo;->d()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/bytedance/embedapplog/yo;->dq()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/u;->k()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    if-eqz p2, :cond_b

    :cond_7
    invoke-direct {p0}, Lcom/bytedance/embedapplog/le;->no()V

    return-void

    :cond_8
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/bytedance/embedapplog/le;->dq:Landroid/app/Application;

    const-class v2, Lcom/bytedance/embedapplog/collector/Collector;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v2, p2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_4
    if-ge v0, p2, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/embedapplog/ds;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/ds;->s()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const p2, 0x4b000

    if-lt v3, p2, :cond_a

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_a
    const-string p2, "EMBED_K_DATA"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    iget-object p2, p0, Lcom/bytedance/embedapplog/le;->dq:Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static iw()Lcom/bytedance/embedapplog/le;
    .locals 2

    sget-object v0, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/embedapplog/le;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/embedapplog/le;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/le;-><init>()V

    sput-object v1, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/embedapplog/le;->d:Lcom/bytedance/embedapplog/le;

    return-object v0
.end method

.method private no()V
    .locals 4

    sget-boolean v0, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packAndSend once, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->kk:Lcom/bytedance/embedapplog/e;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/e;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hadUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->kk:Lcom/bytedance/embedapplog/e;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/e;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->ig:Lcom/bytedance/embedapplog/wp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/r;->ia()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->ia:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->ig:Lcom/bytedance/embedapplog/wp;

    invoke-static {}, Lcom/bytedance/embedapplog/yo;->dq()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/wp;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->ia:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/bytedance/embedapplog/le;->ig:Lcom/bytedance/embedapplog/wp;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->ox:Lcom/bytedance/embedapplog/gh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/embedapplog/gh;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/gh;-><init>(Lcom/bytedance/embedapplog/le;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/le;->ox:Lcom/bytedance/embedapplog/gh;

    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->ia:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->ox:Lcom/bytedance/embedapplog/gh;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/r;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/embedapplog/le;->ox:Lcom/bytedance/embedapplog/gh;

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/embedapplog/ds;

    check-cast p2, Lcom/bytedance/embedapplog/ds;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/embedapplog/le;->dq(Lcom/bytedance/embedapplog/ds;Lcom/bytedance/embedapplog/ds;)I

    move-result p1

    return p1
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->dq:Landroid/app/Application;

    return-object v0
.end method

.method public dq(Lcom/bytedance/embedapplog/ds;Lcom/bytedance/embedapplog/ds;)I
    .locals 3

    iget-wide v0, p1, Lcom/bytedance/embedapplog/ds;->d:J

    iget-wide p1, p2, Lcom/bytedance/embedapplog/ds;->d:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Landroid/app/Application;Lcom/bytedance/embedapplog/u;Lcom/bytedance/embedapplog/c;Lcom/bytedance/embedapplog/cd;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/embedapplog/le;->dq:Landroid/app/Application;

    new-instance p1, Lcom/bytedance/embedapplog/vw;

    invoke-direct {p1, p0}, Lcom/bytedance/embedapplog/vw;-><init>(Lcom/bytedance/embedapplog/le;)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/le;->iw:Lcom/bytedance/embedapplog/vw;

    iput-object p2, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    iput-object p3, p0, Lcom/bytedance/embedapplog/le;->mn:Lcom/bytedance/embedapplog/c;

    new-instance p1, Lcom/bytedance/embedapplog/e;

    iget-object p3, p0, Lcom/bytedance/embedapplog/le;->mn:Lcom/bytedance/embedapplog/c;

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-direct {p1, p3, v0}, Lcom/bytedance/embedapplog/e;-><init>(Lcom/bytedance/embedapplog/c;Lcom/bytedance/embedapplog/u;)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/le;->kk:Lcom/bytedance/embedapplog/e;

    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->dq:Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "bd_tracker_w"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p2}, Lcom/bytedance/embedapplog/u;->ia()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/embedapplog/wi;->dq(Z)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v0, :cond_c

    const-wide/32 v5, 0x337f9800

    const/4 v7, 0x6

    if-eq v1, v2, :cond_8

    const/4 v2, 0x0

    if-eq v1, v4, :cond_7

    const/4 v4, 0x5

    if-eq v1, v4, :cond_6

    if-eq v1, v7, :cond_3

    const/4 p1, 0x7

    if-eq v1, p1, :cond_2

    const/16 p1, 0x59

    if-eq v1, p1, :cond_0

    invoke-static {v3}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->mn:Lcom/bytedance/embedapplog/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/c;->s()V

    :cond_1
    return v0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/embedapplog/e;->s()Lcom/bytedance/embedapplog/e$dq;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v3, v2}, Lcom/bytedance/embedapplog/le;->dq([Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/embedapplog/r;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/r;->iw()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/r;->mn()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/bytedance/embedapplog/le;->ia:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {v4, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    invoke-direct {p0}, Lcom/bytedance/embedapplog/le;->o()V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->ig:Lcom/bytedance/embedapplog/wp;

    invoke-virtual {p1, v0}, Lcom/bytedance/embedapplog/wp;->dq(Z)V

    return v0

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/bytedance/embedapplog/le;->dq([Ljava/lang/String;Z)V

    return v0

    :cond_7
    invoke-direct {p0, v3, v2}, Lcom/bytedance/embedapplog/le;->dq([Ljava/lang/String;Z)V

    return v0

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/bytedance/embedapplog/k;

    invoke-direct {v1, p0}, Lcom/bytedance/embedapplog/k;-><init>(Lcom/bytedance/embedapplog/le;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/embedapplog/i;

    invoke-direct {v1, p0}, Lcom/bytedance/embedapplog/i;-><init>(Lcom/bytedance/embedapplog/le;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/embedapplog/wp;

    invoke-direct {v1, p0}, Lcom/bytedance/embedapplog/wp;-><init>(Lcom/bytedance/embedapplog/le;)V

    iput-object v1, p0, Lcom/bytedance/embedapplog/le;->ig:Lcom/bytedance/embedapplog/wp;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/r;

    instance-of v2, v1, Lcom/bytedance/embedapplog/wp;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/bytedance/embedapplog/le;->ig:Lcom/bytedance/embedapplog/wp;

    invoke-static {}, Lcom/bytedance/embedapplog/yo;->dq()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/embedapplog/wp;->dq(Z)V

    :cond_a
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/r;->mn()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-gez v4, :cond_9

    iget-object v4, p0, Lcom/bytedance/embedapplog/le;->ia:Landroid/os/Handler;

    iget-object v8, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {v8, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->ig:Lcom/bytedance/embedapplog/wp;

    invoke-virtual {p1, v0}, Lcom/bytedance/embedapplog/wp;->dq(Z)V

    invoke-direct {p0}, Lcom/bytedance/embedapplog/le;->o()V

    return v0

    :cond_c
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/u;->le()Z

    move-result p1

    sput-boolean p1, Lcom/bytedance/embedapplog/jo;->dq:Z

    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->mn:Lcom/bytedance/embedapplog/c;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/c;->iw()Z

    move-result p1

    const-wide/16 v5, 0x3e8

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/u;->fw()Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "bd_tracker_n"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bytedance/embedapplog/le;->ia:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    const-string p1, "net|worker start"

    invoke-static {p1, v3}, Lcom/bytedance/embedapplog/jo;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_e
    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    :goto_1
    invoke-static {}, Lcom/bytedance/embedapplog/h;->dq()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "engine:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;)V

    return v0
.end method

.method public ia()Lcom/bytedance/embedapplog/util/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->o:Lcom/bytedance/embedapplog/util/dq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->t()Lcom/bytedance/embedapplog/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ia;->no()Lcom/bytedance/embedapplog/util/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/le;->o:Lcom/bytedance/embedapplog/util/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/d;->dq(I)Lcom/bytedance/embedapplog/util/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/le;->o:Lcom/bytedance/embedapplog/util/dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->o:Lcom/bytedance/embedapplog/util/dq;

    return-object v0
.end method

.method public kk()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->no:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public mn()Lcom/bytedance/embedapplog/e;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->kk:Lcom/bytedance/embedapplog/e;

    return-object v0
.end method

.method public ox()Lcom/bytedance/embedapplog/vw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->iw:Lcom/bytedance/embedapplog/vw;

    return-object v0
.end method

.method public p()Lcom/bytedance/embedapplog/u;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->p:Lcom/bytedance/embedapplog/u;

    return-object v0
.end method

.method public s()Lcom/bytedance/embedapplog/c;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/le;->mn:Lcom/bytedance/embedapplog/c;

    return-object v0
.end method
