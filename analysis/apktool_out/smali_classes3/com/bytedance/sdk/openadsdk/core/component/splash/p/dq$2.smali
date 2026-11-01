.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Z

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->dq:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->d(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->dq:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-lez p3, :cond_1

    const-wide/16 p1, 0x64

    mul-long p3, v4, p1

    div-long/2addr p3, v2

    long-to-int p1, p3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->d:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->d:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->dq:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-lez p3, :cond_1

    const-wide/16 p1, 0x64

    mul-long p3, v4, p1

    div-long/2addr p3, v2

    long-to-int p1, p3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->d:Ljava/lang/String;

    const/4 p3, 0x3

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public dq(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->dq:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->d:Ljava/lang/String;

    const/4 p2, 0x5

    const/16 p3, 0x64

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->dq:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->d:Ljava/lang/String;

    const/4 p2, 0x6

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public ox(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;->ox(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->dq:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-lez p3, :cond_1

    const-wide/16 p1, 0x64

    mul-long p3, v4, p1

    div-long/2addr p3, v2

    long-to-int p1, p3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;->d:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method
