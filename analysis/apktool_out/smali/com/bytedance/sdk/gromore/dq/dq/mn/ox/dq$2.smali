.class Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->d:Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->ox(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq()V

    :cond_0
    return-void
.end method

.method public dq(JJIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    move-wide p4, p3

    move-wide p2, p1

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz p1, :cond_0

    move-object p6, p7

    move-object p7, p8

    invoke-virtual/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->d(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/ox/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
