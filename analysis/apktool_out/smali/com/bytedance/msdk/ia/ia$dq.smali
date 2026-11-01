.class Lcom/bytedance/msdk/ia/ia$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ia/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ia/ia;


# direct methods
.method private constructor <init>(Lcom/bytedance/msdk/ia/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ia/ia$dq;->dq:Lcom/bytedance/msdk/ia/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/ia/ia;Lcom/bytedance/msdk/ia/ia$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ia/ia$dq;-><init>(Lcom/bytedance/msdk/ia/ia;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/ia/ia$dq;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lg/xo;->i(Landroid/content/Context;)Lg/dez;

    move-result-object v2

    iget-object v2, v2, Lg/dez;->a:Ljava/lang/String;

    const-string v3, "gaid-"

    const-string v4, "getAdvertisingId: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/msdk/ia/ia;->dq(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lg/xo;->i(Landroid/content/Context;)Lg/dez;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ia/ia$dq;->dq:Lcom/bytedance/msdk/ia/ia;

    iget-object v2, v2, Lg/dez;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/bytedance/msdk/ia/ia;->dq(Lcom/bytedance/msdk/ia/ia;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mGAId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/ia/ia$dq;->dq:Lcom/bytedance/msdk/ia/ia;

    invoke-static {v3}, Lcom/bytedance/msdk/ia/ia;->dq(Lcom/bytedance/msdk/ia/ia;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , get gaid consume time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertisingIdHelper"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ia/ia$dq;->dq:Lcom/bytedance/msdk/ia/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/ia;->dq(Lcom/bytedance/msdk/ia/ia;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
