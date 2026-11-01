.class Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILcom/bytedance/sdk/component/ox/dq/s;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:I

.field final synthetic iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/dq/ox;

.field final synthetic p:I

.field final synthetic s:Z


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/component/ox/dq/ox;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iput p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->dq:I

    iput-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->ox:Lcom/bytedance/sdk/component/ox/dq/ox;

    iput p6, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->p:I

    iput-boolean p7, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->s:Z

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ox()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->kk:Lcom/bytedance/sdk/component/ox/d/dq/s/mp;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->dq:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->ox:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->p:I

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->s:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/ox/d/dq/s/mp;->dq(ILcom/bytedance/sdk/component/ox/dq/s;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->f:Lcom/bytedance/sdk/component/ox/d/dq/s/o;

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->dq:I

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/o;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->s:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->cd:Ljava/util/Set;

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$6;->dq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
