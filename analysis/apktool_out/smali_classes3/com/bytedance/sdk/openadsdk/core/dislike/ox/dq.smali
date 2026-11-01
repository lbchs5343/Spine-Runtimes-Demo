.class public Lcom/bytedance/sdk/openadsdk/core/dislike/ox/dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/p;


# instance fields
.field private final dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/p;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/f/d/d/mn;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->dq()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
