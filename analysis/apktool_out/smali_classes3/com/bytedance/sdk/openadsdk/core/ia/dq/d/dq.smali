.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/dq/dq/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/component/no/d/d;
.end annotation


# instance fields
.field private d:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "title"
    .end annotation
.end field

.field private dq:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "url"
    .end annotation
.end field

.field private ox:Landroid/content/Context;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "context"
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
    .locals 2
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

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/dq;->ox:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/dq;->dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/dq;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
