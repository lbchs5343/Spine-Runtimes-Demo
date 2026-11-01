.class final Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;ZLcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->d:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    const-string v0, "MetaResourceCacheManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->mn()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->mn()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;->dq(ZLjava/lang/Object;)V

    :cond_0
    const-string p1, "onResponse: RewardFullVideo preload success "

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->d:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq(ZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;->dq(ZLjava/lang/Object;)V

    :cond_2
    const-string p1, "onResponse: RewardFullVideo preload fail "

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->d:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq(ZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;->dq(ZLjava/lang/Object;)V

    :cond_0
    const-string p1, "MetaResourceCacheManager"

    const-string v0, "onFailure: RewardFullVideo preload fail "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->d:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-wide/16 v4, -0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq(ZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    return-void
.end method
