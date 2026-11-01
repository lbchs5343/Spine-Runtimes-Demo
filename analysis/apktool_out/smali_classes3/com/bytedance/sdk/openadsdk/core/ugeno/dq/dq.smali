.class public abstract Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mj()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/adexpress/d/mp;)Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/d;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    instance-of p0, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->op()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/d/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/d/dq;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq/dq;-><init>()V

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result p1

    return p1
.end method

.method private static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v0

    :cond_1
    const/16 v1, 0xa

    if-lez v0, :cond_2

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-lez p0, :cond_3

    if-ge p0, v1, :cond_3

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    if-lez v0, :cond_0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/core/r/j;II)Ljava/lang/String;
.end method
