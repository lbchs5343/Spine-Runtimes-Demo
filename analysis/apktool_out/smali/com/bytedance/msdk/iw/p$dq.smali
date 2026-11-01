.class Lcom/bytedance/msdk/iw/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/iw/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private volatile d:Z

.field private final dq:Landroid/os/Handler;

.field private final ia:J

.field private final iw:I

.field private kk:I

.field private final mn:Lorg/json/JSONObject;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Ljava/lang/String;

.field private final p:J

.field private final s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJIILorg/json/JSONObject;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJII",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/iw/p$dq;->d:Z

    iput v0, p0, Lcom/bytedance/msdk/iw/p$dq;->kk:I

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    :goto_0
    iput-wide p2, p0, Lcom/bytedance/msdk/iw/p$dq;->ia:J

    iput-object p1, p0, Lcom/bytedance/msdk/iw/p$dq;->ox:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/msdk/iw/p$dq;->p:J

    iput p6, p0, Lcom/bytedance/msdk/iw/p$dq;->s:I

    iput p7, p0, Lcom/bytedance/msdk/iw/p$dq;->iw:I

    iput-object p8, p0, Lcom/bytedance/msdk/iw/p$dq;->mn:Lorg/json/JSONObject;

    iput-object p9, p0, Lcom/bytedance/msdk/iw/p$dq;->o:Ljava/util/Map;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/msdk/iw/p$dq;->dq:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/iw/p$dq;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/iw/p$dq;->kk:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/msdk/iw/p$dq;->kk:I

    return v0
.end method

.method private dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/iw/p$dq;->dq:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/msdk/iw/p$dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/iw/p$dq$1;-><init>(Lcom/bytedance/msdk/iw/p$dq;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized dq(I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/iw/p$dq;->dq:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/bytedance/msdk/iw/p$dq;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/msdk/iw/p$dq;->d:Z

    if-ne p1, v0, :cond_1

    const-string p1, "TMe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==-- \u6700\u7ec8\u4e0a\u62a5\uff1aeventType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/iw/p$dq;->ox:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/msdk/iw/p$dq;->kk:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", did: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/msdk/iw/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string p1, "TMe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==-- \u6700\u7ec8\u4e0a\u62a5\uff1aeventType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/iw/p$dq;->ox:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u4eceapplog\u56de\u8c03\u4e2d\u4e0a\u62a5, did: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/msdk/iw/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/msdk/iw/p$dq;->ox:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x31c0546f

    if-eq v1, v2, :cond_4

    const v2, 0x1018f5f5

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "sdk_init"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const-string v1, "sdk_init_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, -0x1

    :goto_2
    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v1, p0, Lcom/bytedance/msdk/iw/p$dq;->p:J

    iget v3, p0, Lcom/bytedance/msdk/iw/p$dq;->s:I

    iget v4, p0, Lcom/bytedance/msdk/iw/p$dq;->iw:I

    iget-wide v5, p0, Lcom/bytedance/msdk/iw/p$dq;->ia:J

    iget-object v7, p0, Lcom/bytedance/msdk/iw/p$dq;->mn:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/bytedance/msdk/iw/p$dq;->o:Ljava/util/Map;

    invoke-static/range {v1 .. v8}, Lcom/bytedance/msdk/s/iw;->dq(JIIJLorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    iget-wide v0, p0, Lcom/bytedance/msdk/iw/p$dq;->ia:J

    invoke-static {v0, v1}, Lcom/bytedance/msdk/s/iw;->dq(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/iw/p$dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/iw/p$dq;->dq()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/iw/p$dq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/iw/p$dq;->dq(I)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/iw/p$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/iw/p$dq;->kk:I

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/iw/p$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/iw/p$dq;->ox:Ljava/lang/String;

    return-object p0
.end method
