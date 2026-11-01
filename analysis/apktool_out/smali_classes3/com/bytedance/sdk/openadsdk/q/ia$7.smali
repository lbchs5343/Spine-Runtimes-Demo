.class Lcom/bytedance/sdk/openadsdk/q/ia$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/q/ia;->ce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/q/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/q/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->kk(Lcom/bytedance/sdk/openadsdk/q/ia;)J

    move-result-wide v0

    const-string v2, "\u70b9\u51fb\u70ed\u533a\u5361\u6b7b"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->kk(Lcom/bytedance/sdk/openadsdk/q/ia;)J

    move-result-wide v0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/q/ia;->o(Lcom/bytedance/sdk/openadsdk/q/ia;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/q/ia;->no(Lcom/bytedance/sdk/openadsdk/q/ia;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v0, v6

    if-gtz v8, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->n()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Lcom/bytedance/sdk/openadsdk/q/ia;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(Lcom/bytedance/sdk/openadsdk/q/ia;J)J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$7;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/q/ia;->d(ILjava/lang/String;)V

    return-void
.end method
