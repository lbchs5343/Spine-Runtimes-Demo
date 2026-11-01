.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/fw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/dq/dq/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/component/no/d/d;
.end annotation


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "reward_dialog_callback"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/fw;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->d()V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    return v0
.end method
