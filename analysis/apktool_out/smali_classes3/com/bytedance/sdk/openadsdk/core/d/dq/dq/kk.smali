.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;


# instance fields
.field protected mn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;->mn:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/util/Map;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->s()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mp()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;->mn:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "is_need_report_click_button"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->iw()Z

    move-result v1

    const-string v4, "key_open_video_detail_page_direct"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v0

    move v9, v1

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d(Z)V

    move v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->ox(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(Ljava/util/Map;ZLjava/lang/String;ZZZ)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;->mn:Z

    return-void
.end method
