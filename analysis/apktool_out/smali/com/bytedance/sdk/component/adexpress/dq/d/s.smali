.class public Lcom/bytedance/sdk/component/adexpress/dq/d/s;
.super Lcom/bytedance/sdk/component/adexpress/dq/d/ox;


# static fields
.field private static volatile d:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

.field private static dq:Ljava/io/File;


# instance fields
.field private ia:Ljava/util/concurrent/atomic/AtomicLong;

.field private iw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mn:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->s:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ia:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ia()V

    return-void
.end method

.method public static d()Lcom/bytedance/sdk/component/adexpress/dq/d/s;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->d:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->d:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->d:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

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
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->d:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/adexpress/dq/d/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private ia()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;

    const-string v1, "init"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dq/d/s;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/p/p;->d(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void
.end method

.method private kk()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ia:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->iw()V

    :cond_0
    return-void
.end method

.method public static mn()Ljava/io/File;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->dq:Ljava/io/File;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/p;->dq()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "tt_tmpl_pkg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "template"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->dq:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TemplateManager"

    const-string v2, "getTemplateDir error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->dq:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public dq()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->mn()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public dq(Z)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->ox()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->d()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->iw()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->d(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ia:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->d()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dq/d/s$2;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dq/d/s;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->s()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq$d;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->s()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq$d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->s()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq$d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->dq(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->dq()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    move v5, v3

    :goto_1
    if-nez v3, :cond_b

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->d(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_8
    move-object v4, v1

    :goto_2
    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_a
    move v5, v0

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->ox()V

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->d(Ljava/util/List;)V

    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ox()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ia:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->kk()V

    return-void

    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p1, 0x6d

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->dq(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_e
    :goto_5
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->dq()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->dq(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->s()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq$d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq$d;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->getResources()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/ox;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public iw()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->dq(Z)V

    return-void
.end method

.method public ox()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->d()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->iw()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->p()V

    :cond_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->s:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->s:Z

    return v0
.end method

.method public s()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->d()Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;

    move-result-object v0

    return-object v0
.end method
