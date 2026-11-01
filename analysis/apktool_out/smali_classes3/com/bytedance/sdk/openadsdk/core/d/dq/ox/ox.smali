.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;
    }
.end annotation


# instance fields
.field private ia:Ljava/lang/Double;

.field private iw:Ljava/lang/String;

.field private mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->mn:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")I"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->qi()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;->dq()Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->mn:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "show_send_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->iw:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->mn:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->ia:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    :cond_3
    :goto_0
    return p2
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;

    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->ia:Ljava/lang/Double;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->iw:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->mn:Ljava/util/Map;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->mn:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
