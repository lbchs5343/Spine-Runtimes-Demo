.class public final Lg/crv;
.super Lg/cw;
.source "SourceFile"


# instance fields
.field public final synthetic j:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v0, 0x1

    iput v0, p0, Lg/crv;->j:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "repeatIntervalTimeUnit"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lc/b/d;

    invoke-direct {p0, v1}, Lg/cw;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v1, Lg/fkj;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    if-gez v0, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    if-gez v0, :cond_2

    move-wide v2, v4

    :cond_2
    cmp-long v0, v6, v4

    if-gez v0, :cond_3

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v4, v6

    :goto_1
    iput-wide v4, v1, Lg/fkj;->a:J

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iget-wide v6, v1, Lg/fkj;->a:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_6

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    iget-wide v6, v1, Lg/fkj;->a:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_9

    if-gez v0, :cond_7

    move-wide v2, v4

    goto :goto_2

    :cond_7
    cmp-long v0, v2, v6

    if-lez v0, :cond_8

    move-wide v2, v6

    :cond_8
    :goto_2
    iput-wide v2, v1, Lg/fkj;->p:J

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is less than minimum 300000."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/crv;->j:I

    invoke-direct {p0, p1}, Lg/cw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final h()Lg/dze;
    .locals 4

    iget v0, p0, Lg/crv;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v0, Lg/fkj;

    iget-boolean v1, v0, Lg/fkj;->s:Z

    if-nez v1, :cond_0

    new-instance v1, Lg/dqj;

    iget-object v2, p0, Lg/cw;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    iget-object v3, p0, Lg/cw;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2, v0, v3}, Lg/dze;-><init>(Ljava/util/UUID;Lg/fkj;Ljava/util/LinkedHashSet;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeriodicWorkRequests cannot be expedited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lg/gmw;

    iget-object v1, p0, Lg/cw;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    iget-object v2, p0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v2, Lg/fkj;

    iget-object v3, p0, Lg/cw;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, v2, v3}, Lg/dze;-><init>(Ljava/util/UUID;Lg/fkj;Ljava/util/LinkedHashSet;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
