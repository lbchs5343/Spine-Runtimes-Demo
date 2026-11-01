.class public Lcom/bytedance/embedapplog/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/e$dq;
    }
.end annotation


# static fields
.field private static final iw:Ljava/util/concurrent/atomic/AtomicLong;

.field private static jy:Lcom/bytedance/embedapplog/e$dq;


# instance fields
.field private final d:Lcom/bytedance/embedapplog/c;

.field private final dq:Lcom/bytedance/embedapplog/u;

.field private ia:I

.field private ig:I

.field private kk:J

.field private mn:J

.field private mp:Ljava/lang/String;

.field private no:J

.field private volatile o:Z

.field private ox:Lcom/bytedance/embedapplog/bu;

.field private p:Lcom/bytedance/embedapplog/bu;

.field private q:Lcom/bytedance/embedapplog/jw;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/embedapplog/e;->iw:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/c;Lcom/bytedance/embedapplog/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/embedapplog/e;->kk:J

    iput-object p1, p0, Lcom/bytedance/embedapplog/e;->d:Lcom/bytedance/embedapplog/c;

    iput-object p2, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    return-void
.end method

.method private declared-synchronized dq(Lcom/bytedance/embedapplog/ds;Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/ds;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ds;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/bytedance/embedapplog/e$dq;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lcom/bytedance/embedapplog/ds;->d:J

    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/e;->s:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/embedapplog/e;->iw:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-wide v3, p0, Lcom/bytedance/embedapplog/e;->kk:J

    iput-boolean p3, p0, Lcom/bytedance/embedapplog/e;->o:Z

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/bytedance/embedapplog/e;->no:J

    iput-wide v5, p0, Lcom/bytedance/embedapplog/e;->mn:J

    sget-boolean v0, Lcom/bytedance/embedapplog/jo;->d:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "startSession, "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/bytedance/embedapplog/e;->s:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", hadUi:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " data:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/embedapplog/e;->mp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v8}, Lcom/bytedance/embedapplog/u;->d()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/bytedance/embedapplog/e;->mp:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v8}, Lcom/bytedance/embedapplog/u;->ox()I

    move-result v8

    iput v8, p0, Lcom/bytedance/embedapplog/e;->ig:I

    :cond_2
    iget-object v8, p0, Lcom/bytedance/embedapplog/e;->mp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iput-object v7, p0, Lcom/bytedance/embedapplog/e;->mp:Ljava/lang/String;

    iput v6, p0, Lcom/bytedance/embedapplog/e;->ig:I

    goto :goto_2

    :cond_3
    iget v8, p0, Lcom/bytedance/embedapplog/e;->ig:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/bytedance/embedapplog/e;->ig:I

    :goto_2
    iget-object v8, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    iget v9, p0, Lcom/bytedance/embedapplog/e;->ig:I

    invoke-virtual {v8, v7, v9}, Lcom/bytedance/embedapplog/u;->dq(Ljava/lang/String;I)V

    iput v0, p0, Lcom/bytedance/embedapplog/e;->ia:I

    iget-wide v7, p1, Lcom/bytedance/embedapplog/ds;->d:J

    iput-wide v7, p0, Lcom/bytedance/embedapplog/e;->mn:J

    :cond_4
    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/bytedance/embedapplog/jw;

    invoke-direct {p1, v0}, Lcom/bytedance/embedapplog/jw;-><init>(Z)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->s:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/embedapplog/e;->p()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/embedapplog/ds;->ox:J

    iget-wide v0, p0, Lcom/bytedance/embedapplog/e;->kk:J

    iput-wide v0, p1, Lcom/bytedance/embedapplog/ds;->d:J

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/e;->o:Z

    xor-int/2addr v0, v6

    iput-boolean v0, p1, Lcom/bytedance/embedapplog/jw;->q:Z

    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->d:Lcom/bytedance/embedapplog/c;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->ox()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/jw;->mp:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->d:Lcom/bytedance/embedapplog/c;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->d()I

    move-result v0

    iput v0, p1, Lcom/bytedance/embedapplog/jw;->ig:I

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->iw:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->kk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->mn:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->ia:Ljava/lang/String;

    :cond_5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/bytedance/embedapplog/e;->q:Lcom/bytedance/embedapplog/jw;

    sget-boolean p2, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "gen launch, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hadUi:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static dq(Lcom/bytedance/embedapplog/ds;)Z
    .locals 1

    instance-of v0, p0, Lcom/bytedance/embedapplog/bu;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bytedance/embedapplog/bu;

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/bu;->o()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p()J
    .locals 2

    sget-object v0, Lcom/bytedance/embedapplog/e;->iw:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public static s()Lcom/bytedance/embedapplog/e$dq;
    .locals 3

    sget-object v0, Lcom/bytedance/embedapplog/e;->jy:Lcom/bytedance/embedapplog/e$dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/embedapplog/e$dq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/e$dq;-><init>(Lcom/bytedance/embedapplog/e$1;)V

    sput-object v0, Lcom/bytedance/embedapplog/e;->jy:Lcom/bytedance/embedapplog/e$dq;

    :cond_0
    sget-object v0, Lcom/bytedance/embedapplog/e;->jy:Lcom/bytedance/embedapplog/e$dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/embedapplog/ds;->d:J

    sget-object v0, Lcom/bytedance/embedapplog/e;->jy:Lcom/bytedance/embedapplog/e$dq;

    return-object v0
.end method


# virtual methods
.method public d(Lcom/bytedance/embedapplog/ds;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->ia:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/bytedance/embedapplog/dq;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->iw:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->kk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->mn:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->s:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/embedapplog/e;->p()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/embedapplog/ds;->ox:J

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/e;->o:Z

    return v0
.end method

.method public declared-synchronized dq(JJ)Landroid/os/Bundle;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/e;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/embedapplog/e;->mn:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long v0, p1, v0

    cmp-long v2, v0, p3

    if-lez v2, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "session_no"

    iget v0, p0, Lcom/bytedance/embedapplog/e;->ig:I

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "send_times"

    iget v0, p0, Lcom/bytedance/embedapplog/e;->ia:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/embedapplog/e;->ia:I

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "current_duration"

    iget-wide v0, p0, Lcom/bytedance/embedapplog/e;->mn:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p4, "session_start_time"

    iget-wide v0, p0, Lcom/bytedance/embedapplog/e;->kk:J

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/ds;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/bytedance/embedapplog/e;->mn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    :goto_0
    monitor-exit p0

    return-object p3

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method public dq(Lcom/bytedance/embedapplog/ds;Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/ds;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ds;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/bytedance/embedapplog/bu;

    invoke-static {p1}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;)Z

    move-result v1

    iget-wide v2, p0, Lcom/bytedance/embedapplog/e;->kk:J

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, v2, v4

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/bytedance/embedapplog/e;->o:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, v8}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/bytedance/embedapplog/e;->no:J

    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/bytedance/embedapplog/ds;->d:J

    iget-object v9, p0, Lcom/bytedance/embedapplog/e;->dq:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v9}, Lcom/bytedance/embedapplog/u;->k()J

    move-result-wide v9

    add-long/2addr v9, v2

    cmp-long v2, v4, v9

    if-lez v2, :cond_2

    invoke-static {}, Lcom/bytedance/embedapplog/yo;->d()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/bytedance/embedapplog/yo;->dq()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/bytedance/embedapplog/e;->kk:J

    iget-wide v4, p1, Lcom/bytedance/embedapplog/ds;->d:J

    const-wide/32 v9, 0x6ddd00

    add-long/2addr v4, v9

    cmp-long v9, v2, v4

    if-lez v9, :cond_3

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/e;->dq(Lcom/bytedance/embedapplog/ds;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/bytedance/embedapplog/bu;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/bu;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-wide v6, p0, Lcom/bytedance/embedapplog/e;->no:J

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lcom/bytedance/embedapplog/bu;->mp:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/bytedance/embedapplog/e;->p:Lcom/bytedance/embedapplog/bu;

    const-wide/16 v1, 0x1f4

    if-eqz p2, :cond_5

    iget-wide v3, v0, Lcom/bytedance/embedapplog/ds;->d:J

    iget-wide v5, p2, Lcom/bytedance/embedapplog/ds;->d:J

    sub-long/2addr v3, v5

    iget-wide v5, p2, Lcom/bytedance/embedapplog/bu;->ig:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_5

    iget-object p2, p2, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    iput-object p2, v0, Lcom/bytedance/embedapplog/bu;->mp:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/bytedance/embedapplog/e;->ox:Lcom/bytedance/embedapplog/bu;

    if-eqz p2, :cond_a

    iget-wide v3, v0, Lcom/bytedance/embedapplog/ds;->d:J

    iget-wide v5, p2, Lcom/bytedance/embedapplog/ds;->d:J

    sub-long/2addr v3, v5

    iget-wide v5, p2, Lcom/bytedance/embedapplog/bu;->ig:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_a

    iget-object p2, p2, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    iput-object p2, v0, Lcom/bytedance/embedapplog/bu;->mp:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-wide v1, p1, Lcom/bytedance/embedapplog/ds;->d:J

    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/bytedance/embedapplog/e;->dq(JJ)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "play_session"

    invoke-static {v2, v1}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iget-wide v1, v0, Lcom/bytedance/embedapplog/ds;->d:J

    iput-wide v1, p0, Lcom/bytedance/embedapplog/e;->no:J

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/bu;->no()Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object v0, p0, Lcom/bytedance/embedapplog/e;->ox:Lcom/bytedance/embedapplog/bu;

    goto :goto_1

    :cond_8
    iput-object v0, p0, Lcom/bytedance/embedapplog/e;->p:Lcom/bytedance/embedapplog/bu;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/embedapplog/e;->ox:Lcom/bytedance/embedapplog/bu;

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lcom/bytedance/embedapplog/e$dq;

    if-nez v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/e;->d(Lcom/bytedance/embedapplog/ds;)V

    return v8
.end method

.method public ox()Z
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/embedapplog/e;->no:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
