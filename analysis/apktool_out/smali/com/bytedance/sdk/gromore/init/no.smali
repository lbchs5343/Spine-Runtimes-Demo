.class public Lcom/bytedance/sdk/gromore/init/no;
.super Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d/d;


# instance fields
.field private dq:Lcom/bytedance/msdk/core/admanager/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/ia;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/no;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/init/no;)Lcom/bytedance/msdk/core/admanager/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/init/no;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/no;->dq:Lcom/bytedance/msdk/core/admanager/ia;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/init/no$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/gromore/init/no$1;-><init>(Lcom/bytedance/sdk/gromore/init/no;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/core/admanager/ia;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/mn/s;)V

    return-void

    :cond_0
    const-string p1, "TMe"

    const-string p2, "adm \u53c2\u6570\u9519\u8bef \u6216\u8005 nativeAdManager is null"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/gromore/init/no;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    return-void
.end method
