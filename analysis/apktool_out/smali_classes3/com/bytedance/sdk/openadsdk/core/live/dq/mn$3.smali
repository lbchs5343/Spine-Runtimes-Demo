.class Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/live/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/live/dq/mn;

.field final synthetic ox:Z

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/live/dq/mn;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->iw:Lcom/bytedance/sdk/openadsdk/core/live/dq/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->ox:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->iw:Lcom/bytedance/sdk/openadsdk/core/live/dq/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", schema handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTLiveSDkBridge"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;->dq(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;->dq()V

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->ox:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn$3;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_2
    return-void
.end method
