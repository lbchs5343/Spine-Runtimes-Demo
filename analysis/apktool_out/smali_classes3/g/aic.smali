.class public final Lg/aic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dyt;


# instance fields
.field public final a:Lg/dzu;

.field public final b:J

.field public final c:J

.field public final d:Lg/ecd;

.field public final e:I


# direct methods
.method public constructor <init>(Lg/ecd;ILg/dzu;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aic;->d:Lg/ecd;

    iput p2, p0, Lg/aic;->e:I

    iput-object p3, p0, Lg/aic;->a:Lg/dzu;

    iput-wide p4, p0, Lg/aic;->b:J

    iput-wide p6, p0, Lg/aic;->c:J

    return-void
.end method

.method public static f(Lg/fbd;Lg/adw;I)Lg/csf;
    .locals 3

    invoke-virtual {p1}, Lg/adw;->getTelemetryConfiguration()Lg/csf;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lg/csf;->getMethodInvocationTelemetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lg/csf;->getMethodInvocationMethodKeyAllowlist()[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lg/csf;->getMethodInvocationMethodKeyDisallowlist()[I

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget v2, v0, v1

    if-ne v2, p2, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget v2, v0, v1

    if-ne v2, p2, :cond_4

    :cond_3
    :goto_2
    iget p0, p0, Lg/fbd;->e:I

    invoke-virtual {p1}, Lg/csf;->getMaxMethodInvocationsLogged()I

    move-result p2

    if-ge p0, p2, :cond_5

    return-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onComplete(Lg/ci;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/aic;->d:Lg/ecd;

    invoke-virtual {v1}, Lg/ecd;->v()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lg/cbn;->d()Lg/cbn;

    move-result-object v1

    iget-object v1, v1, Lg/cbn;->c:Lg/fzo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/fzo;->getMethodInvocationTelemetryEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_1
    iget-object v2, v0, Lg/aic;->d:Lg/ecd;

    iget-object v3, v0, Lg/aic;->a:Lg/dzu;

    iget-object v2, v2, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fbd;

    if-eqz v2, :cond_b

    iget-object v3, v2, Lg/fbd;->l:Lg/cqh;

    instance-of v4, v3, Lg/adw;

    if-eqz v4, :cond_b

    check-cast v3, Lg/adw;

    iget-wide v4, v0, Lg/aic;->b:J

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v4, v7

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lg/adw;->getGCoreServiceId()I

    move-result v20

    const/16 v5, 0x64

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lg/fzo;->getMethodTimingTelemetryEnabled()Z

    move-result v10

    and-int/2addr v4, v10

    invoke-virtual {v1}, Lg/fzo;->getBatchPeriodMillis()I

    move-result v10

    invoke-virtual {v1}, Lg/fzo;->getMaxMethodInvocationsInBatch()I

    move-result v11

    invoke-virtual {v1}, Lg/fzo;->getVersion()I

    move-result v1

    invoke-virtual {v3}, Lg/adw;->hasConnectionInfo()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v3}, Lg/adw;->isConnecting()Z

    move-result v12

    if-nez v12, :cond_4

    iget v4, v0, Lg/aic;->e:I

    invoke-static {v2, v3, v4}, Lg/aic;->f(Lg/fbd;Lg/adw;I)Lg/csf;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lg/csf;->getMethodTimingTelemetryEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lg/aic;->b:J

    cmp-long v11, v3, v7

    if-lez v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v2}, Lg/csf;->getMaxMethodInvocationsLogged()I

    move-result v11

    move v4, v6

    :cond_4
    move v2, v10

    move v3, v11

    goto :goto_2

    :cond_5
    const/16 v10, 0x1388

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const/16 v3, 0x64

    :goto_2
    iget-object v6, v0, Lg/aic;->d:Lg/ecd;

    invoke-virtual/range {p1 .. p1}, Lg/ci;->a()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_6

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v9, p1

    check-cast v9, Lg/chw;

    iget-boolean v9, v9, Lg/chw;->e:Z

    if-eqz v9, :cond_7

    const/16 v12, 0x64

    :goto_3
    const/4 v13, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lg/ci;->b()Ljava/lang/Exception;

    move-result-object v5

    instance-of v9, v5, Lg/dmw;

    if-eqz v9, :cond_9

    check-cast v5, Lg/dmw;

    iget-object v5, v5, Lg/dmw;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getConnectionResult()Lg/nk;

    move-result-object v5

    if-nez v5, :cond_8

    move v12, v9

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lg/nk;->getErrorCode()I

    move-result v5

    move v13, v5

    move v12, v9

    goto :goto_4

    :cond_9
    const/16 v9, 0x65

    const/16 v12, 0x65

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_a

    iget-wide v7, v0, Lg/aic;->b:J

    iget-wide v4, v0, Lg/aic;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v4

    long-to-int v11, v14

    move-wide v14, v7

    move-wide/from16 v16, v9

    move/from16 v21, v11

    goto :goto_5

    :cond_a
    move-wide v14, v7

    move-wide/from16 v16, v14

    const/16 v21, -0x1

    :goto_5
    iget v11, v0, Lg/aic;->e:I

    new-instance v10, Lg/brg;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lg/brg;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v14, v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lg/bkf;

    move v13, v1

    move/from16 v16, v3

    move-object v12, v10

    invoke-direct/range {v11 .. v16}, Lg/bkf;-><init>(Lg/brg;IJI)V

    iget-object v1, v6, Lg/ecd;->q:Lg/dae;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    :goto_6
    return-void
.end method
