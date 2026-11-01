.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p;
.super Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d/dq;


# instance fields
.field private dq:Lcom/bytedance/msdk/ox/p/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p;->dq:Lcom/bytedance/msdk/ox/p/mn;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p;)Lcom/bytedance/msdk/ox/p/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p;->dq:Lcom/bytedance/msdk/ox/p/mn;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p;->dq:Lcom/bytedance/msdk/ox/p/mn;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/ox/p/mn;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/ox/ox;)V

    return-void

    :cond_0
    const-string p1, "TMe"

    const-string p2, "adm \u53c2\u6570\u9519\u8bef \u6216\u8005 drawTokenInfo is null"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/p;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V

    return-void
.end method
