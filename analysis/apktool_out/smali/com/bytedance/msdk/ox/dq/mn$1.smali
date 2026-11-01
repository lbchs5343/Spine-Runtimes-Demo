.class Lcom/bytedance/msdk/ox/dq/mn$1;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/mp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/dq/mn;->i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Object;

.field final synthetic dq:Ljava/lang/Object;

.field final synthetic iw:Lcom/bytedance/msdk/ox/dq/mn;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/lang/Object;

.field final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/mn;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->iw:Lcom/bytedance/msdk/ox/dq/mn;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->dq:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->p:Ljava/lang/Object;

    iput-object p6, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->s:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->dq:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public p()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->p:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/mn$1;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
