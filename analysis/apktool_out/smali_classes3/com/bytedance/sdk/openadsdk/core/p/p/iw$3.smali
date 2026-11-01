.class Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/p/iw;->dq(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/p/iw;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/iw;)Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/iw;)Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;->dq:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$3;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
