.class Lcom/bytedance/sdk/openadsdk/core/playable/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$3;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$3;->d:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;->dq(Z)V

    :cond_0
    return-void
.end method
