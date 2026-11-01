.class Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cd:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;

    if-eqz v1, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;->d(ZJJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cd:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;->dq(Z)V

    :cond_1
    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cd:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;

    if-eqz v1, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;->dq(ZJJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cd:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;

    if-eqz v1, :cond_1

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;->dq(ZJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cd:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;->dq(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ox(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cd:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;J)J

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;

    if-eqz v1, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$d;->ox(ZJJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
