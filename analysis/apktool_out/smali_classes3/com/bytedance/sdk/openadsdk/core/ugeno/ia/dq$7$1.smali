.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vr()Lcom/bytedance/sdk/openadsdk/core/r/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vr()Lcom/bytedance/sdk/openadsdk/core/r/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/q;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
