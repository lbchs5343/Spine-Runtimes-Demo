.class public Lcom/bytedance/sdk/openadsdk/core/multipro/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/multipro/d$dq;
    }
.end annotation


# static fields
.field public static d:Z

.field public static dq:Z


# direct methods
.method public static d()V
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d$dq;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v2, "is_support_multi_process"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    :cond_0
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->dq:Z

    return-void
.end method

.method public static dq()V
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d$dq;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v2, "is_support_multi_process"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    :cond_0
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->dq:Z

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->d:Z

    return-void
.end method

.method public static ox()Z
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d$dq;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "is_support_multi_process"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->dq:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->d:Z

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->dq:Z

    return v0
.end method
