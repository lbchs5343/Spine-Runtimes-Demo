.class Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/d/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Object;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Z

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/d/p;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->iw:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->ox:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->p:Z

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->s:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/ref/PhantomReference;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->d:Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/p/d/p;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->iw:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/p/d/p;->dq:Ljava/util/HashMap;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/p/d/p$dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->ox:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xq()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/d/p$dq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->iw:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/d/p;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->kk()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->iw:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/d/p;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->s:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$4;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_2
    return-void
.end method
