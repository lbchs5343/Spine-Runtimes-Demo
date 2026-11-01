.class public abstract Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field protected d:Landroid/content/Context;

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

.field protected p:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
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
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    return-void
.end method
