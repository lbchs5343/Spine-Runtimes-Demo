.class public Lcom/bytedance/sdk/openadsdk/core/o/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/o/p$dq;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->p()Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/p$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/p;-><init>()V

    return-void
.end method

.method public static ox()Lcom/bytedance/sdk/openadsdk/core/o/p;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/p$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/o/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/p$1;

    const-string v1, "dl_work"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/p;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public dq()V
    .locals 0

    return-void
.end method
