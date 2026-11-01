.class public Lcom/bytedance/sdk/openadsdk/core/ir/i;
.super Ljava/lang/Object;


# direct methods
.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ig;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ig;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->o(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    return p0
.end method

.method public static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 p0, 0x4

    if-eq v1, p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ig;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0
.end method

.method public static kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    return p0
.end method

.method private static no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    return p0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/t;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ig;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0
.end method
