.class public Lcom/bytedance/sdk/openadsdk/core/op/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/op/dq;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final mp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private ia:[Ljava/lang/String;

.field private ig:J

.field private iw:Z

.field private kk:J

.field private final mn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private no:J

.field private o:J

.field private final ox:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

.field private final p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

.field private final s:Lcom/bytedance/sdk/openadsdk/core/ox/p;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v7, "-10"

    const-string v8, "-11"

    const-string v0, "-10001"

    const-string v1, "-10008"

    const-string v2, "103111"

    const-string v3, "105002"

    const-string v4, "-5"

    const-string v5, "-2"

    const-string v6, "-15"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mp:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->kk:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->o:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->no:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ig:J

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->d:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->iw:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string v0, ""

    if-eqz p1, :cond_1

    const-wide/32 v1, 0x325aa0

    const-string v3, "cr"

    invoke-virtual {p1, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/ij;

    const-string v2, "vd"

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "err"

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tk"

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v4, v5, p1}, Lcom/bytedance/sdk/openadsdk/core/r/ij;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/r/ij;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ox()V

    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/r/ij;

    const-string v1, "-1"

    invoke-direct {p1, v0, v1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/r/ij;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/op/dq;)Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    return-object p0
.end method

.method private d()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "cr"

    const-wide/32 v3, 0x325aa0

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string v3, "tk"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private dq(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "3"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 v0, 0xc350

    return-wide v0

    :pswitch_2
    const-string v0, "1"

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/32 v0, 0x325aa0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/op/dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->d:Landroid/content/Context;

    return-object p0
.end method

.method private dq(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "code"

    const-string v1, "province"

    const-string v2, "err_code"

    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/op/dq/d;->dq(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, ""

    const-string v3, "6"

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {p1, p4, v3, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ia:[Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->kk:J

    sub-long/2addr p3, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, p3, v4

    if-lez v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->ia()[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ia:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->kk:J

    :cond_3
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ia:[Ljava/lang/String;

    array-length p4, p3

    const/4 v2, 0x2

    if-ne p4, v2, :cond_4

    const/4 p4, 0x1

    aget-object p3, p3, p4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ia:[Ljava/lang/String;

    aget-object p3, p3, p4

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {p4, p3}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string v3, "0"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    move-object p1, p2

    :goto_0
    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/op/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/op/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/op/dq;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/op/dq;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq;

    return-object p0
.end method

.method private dq(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "authurl"

    const-string v1, "code"

    const-string v2, "1"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/op/dq/d;->dq(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :goto_1
    const-string p3, ""

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    const-string p2, "6"

    invoke-virtual {p1, p5, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_3

    :pswitch_2
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, -0x1

    :goto_3
    const-string v3, "0"

    if-eqz v2, :cond_a

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_4

    move-object p1, p3

    goto/16 :goto_6

    :cond_4
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_5

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_4

    :cond_5
    move-object p6, p3

    :goto_4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/api?appid=1554778161154"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p2, :cond_6

    move-object p6, p2

    check-cast p6, Ljava/lang/String;

    :cond_6
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_7

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    :cond_7
    move-object p1, p3

    move-object p3, p6

    goto :goto_6

    :cond_8
    const-string p1, "result"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lorg/json/JSONObject;

    const-string p3, "data"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/s;->dq(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v4, p2, p6}, Lcom/bytedance/sdk/openadsdk/core/op/dq/dq;->dq(Z[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "accessCode"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_5
    move-object p1, p3

    move-object p3, v3

    goto :goto_6

    :cond_9
    move-object v7, p3

    move-object p3, p1

    move-object p1, v7

    goto :goto_6

    :cond_a
    const-string p1, "body"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "resultCode"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p6, "103000"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b

    const-string p2, "token"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    :cond_b
    move-object p1, p3

    move-object p3, p2

    :goto_6
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {p2, p5, p3, p1, p4}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    if-eqz p2, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string p6, "vd"

    invoke-virtual {p2, p6, p5}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string p5, "cr"

    invoke-virtual {p2, p5, p4}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string p4, "err"

    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string p3, "tk"

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dq(Landroid/net/Network;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v7, ""

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xe98a3a

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x359ee82c

    if-eq v2, v3, :cond_2

    const v3, 0x75171abf

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "https://id6.me/gw/preuniq.do"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "https://nisportal.10010.com:9001/api?appid=1554778161154"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const-string v2, "https://msg.cmpassport.com/h5/getMobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-string v3, "1"

    const/4 v6, 0x0

    if-eqz v2, :cond_a

    if-eq v2, v5, :cond_9

    if-eq v2, v4, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_5
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->no:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->no:J

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    if-eqz v10, :cond_6

    const-string v11, "uni_times"

    invoke-virtual {v10, v11, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->no:J

    cmp-long v10, v2, v4

    if-nez v10, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->o:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string v5, "uni_fir_ts"

    invoke-virtual {v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;J)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->o:J

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(JJ)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "2"

    if-eqz v4, :cond_7

    :try_start_2
    iget-wide v10, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->no:J

    const-wide/16 v12, 0x1e

    cmp-long v4, v10, v12

    if-ltz v4, :cond_7

    iget-wide v10, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ig:J

    sub-long/2addr v2, v10

    const-wide/32 v10, 0x2dc6c0

    cmp-long v4, v2, v10

    if-gez v4, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    const-string v2, "7"

    invoke-virtual {v1, v5, v2, v7, v5}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ig:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    if-eqz v4, :cond_8

    const-string v10, "uni_ts"

    invoke-virtual {v4, v10, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;J)V

    :cond_8
    move-object v0, p0

    move-object v2, v1

    move-object v4, v5

    move-object v3, v6

    :goto_3
    move-object v1, p1

    goto :goto_5

    :cond_9
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/op/dq/p;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "3"

    move-object v0, p0

    move-object v5, v3

    move-object v3, v6

    move-object v6, v2

    :goto_4
    move-object v2, v1

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op/dq/p;->dq()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    move-object v0, p0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    :goto_5
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    const-string v2, "6"

    invoke-virtual {v1, v7, v2, v7, v7}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mp:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mp:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/ij;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->iw:Z

    :cond_c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/op/dq;Landroid/net/Network;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Landroid/net/Network;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/op/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->iw:Z

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/op/dq;)Lcom/bytedance/sdk/openadsdk/core/r/ij;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    return-object p0
.end method

.method private ox()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    if-eqz v0, :cond_1

    const-string v1, "uni_fir_ts"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->o:J

    invoke-static {v0, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string v1, "uni_times"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->no:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->s:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    const-string v1, "uni_ts"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ig:J

    return-void

    :cond_0
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->no:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->ig:J

    :cond_1
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/op/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/r/ij;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->iw:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->mn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/op/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/op/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/op/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/ij;

    return-object v0
.end method
