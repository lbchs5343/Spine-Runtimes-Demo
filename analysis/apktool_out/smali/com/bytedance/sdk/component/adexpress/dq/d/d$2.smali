.class final Lcom/bytedance/sdk/component/adexpress/dq/d/d$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dq/d/d;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/dq/ox/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dq/ox/d;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/d$2;->dq:Lcom/bytedance/sdk/component/adexpress/dq/ox/d;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->dq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/iw;->dq()Lcom/bytedance/sdk/component/adexpress/dq/d/iw;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/d$2;->dq:Lcom/bytedance/sdk/component/adexpress/dq/ox/d;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/dq/d/iw;->dq(Lcom/bytedance/sdk/component/adexpress/dq/ox/d;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
