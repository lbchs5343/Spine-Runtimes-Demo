.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o;->ia(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o;

.field final synthetic dq:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o$2;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/kk;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/o$2;->dq:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/kk;->d()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/kk;->ox()V

    return-void
.end method
