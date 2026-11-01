.class Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ox(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

.field final synthetic p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iput p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;->dq:I

    iput-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ox()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->cd:Ljava/util/Set;

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$7;->dq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
