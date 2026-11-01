.class public Lcom/bytedance/msdk/s/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/s/d$dq;
    }
.end annotation


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/s/d;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/d$dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/s/d;->d:Ljava/util/List;

    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/s/d;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/s/d;->dq:Lcom/bytedance/msdk/s/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/s/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/s/d;->dq:Lcom/bytedance/msdk/s/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/s/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/s/d;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/s/d;->dq:Lcom/bytedance/msdk/s/d;

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
    sget-object v0, Lcom/bytedance/msdk/s/d;->dq:Lcom/bytedance/msdk/s/d;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/d$dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/s/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "--==-- \u4fdd\u5b58\u5230\u57cb\u70b9\u8f85\u52a9\u6a21\u5757"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/s/d;->d:Ljava/util/List;

    new-instance v1, Lcom/bytedance/msdk/s/d$dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/s/d$dq;-><init>(Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ox()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "--==-- \u6e05\u7a7a\u57cb\u70b9\u8f85\u52a9\u6a21\u5757"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/s/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
