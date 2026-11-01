.class public final Lcom/bytedance/sdk/openadsdk/core/ir/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ir/n$d;,
        Lcom/bytedance/sdk/openadsdk/core/ir/n$dq;
    }
.end annotation


# static fields
.field private static volatile dq:Z


# direct methods
.method public static d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/fw;->dq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/fw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/n$dq;->dq:Lcom/bytedance/sdk/component/mn/p$dq;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/mn/p$dq;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;Z)Lcom/bytedance/sdk/component/mn/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/n$d;->dq:Lcom/bytedance/sdk/component/mn/p$dq;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(Z)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/mn/p$dq;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object p0

    return-object p0
.end method

.method public static dq()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq:Z

    return-void
.end method

.method public static synthetic ox()Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->p()Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    return-object v0
.end method

.method private static p()Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ix()I

    new-instance v1, Lcom/bytedance/sdk/component/mn/p$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/mn/p$dq;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(I)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ne()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/mn/p$dq;->d(I)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/mn/p$dq;->d(Z)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    return-object v0
.end method
