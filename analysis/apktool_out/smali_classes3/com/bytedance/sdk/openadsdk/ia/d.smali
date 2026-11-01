.class public Lcom/bytedance/sdk/openadsdk/ia/d;
.super Ljava/lang/Object;


# direct methods
.method public static dq()Lcom/bytedance/sdk/component/iw/jy;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/iw/jy;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ats/AutoService;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/iw/jy;

    return-object v0
.end method

.method private static dq(Lcom/bytedance/sdk/component/iw/o;)Lcom/bytedance/sdk/component/iw/o;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/u;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/ia/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ia/ox;-><init>()V

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/r;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/ji;)Lcom/bytedance/sdk/component/iw/o;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq()Lcom/bytedance/sdk/component/iw/jy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/iw/jy;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/iw/o;->dq(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->ox()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/iw/o;->d(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->mn()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/iw/o;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq(Lcom/bytedance/sdk/component/iw/o;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq()Lcom/bytedance/sdk/component/iw/jy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/iw/jy;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq(Lcom/bytedance/sdk/component/iw/o;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq()Lcom/bytedance/sdk/component/iw/jy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/iw/jy;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
