.class Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/dq;ZLcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->d:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->d:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-wide/16 v6, -0x7

    const-string v8, "preLoadImageFailed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(JZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/component/iw/no;)V
    .locals 8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-wide v2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq:J

    sub-long/2addr v0, v2

    const-string p2, "splash_ad"

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->d:Z

    if-eqz p2, :cond_1

    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->d:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-wide/16 v5, 0x0

    const-string v7, "preLoadImageSuccess"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(JZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
