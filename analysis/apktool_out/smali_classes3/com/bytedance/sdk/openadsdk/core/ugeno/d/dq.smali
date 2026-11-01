.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;
.super Lg/bgh;

# interfaces
.implements Lg/dbw;


# instance fields
.field private kk:Lcom/bytedance/sdk/component/utils/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lg/bgh;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/bytedance/sdk/component/utils/i;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lcom/bytedance/sdk/component/utils/i;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;)Lg/dlv;
    .locals 0

    iget-object p0, p0, Lg/bgh;->d:Lg/dlv;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;)Lg/eyj;
    .locals 0

    iget-object p0, p0, Lg/bgh;->dq:Lg/eyj;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/bgh;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;)Lg/csh;
    .locals 0

    iget-object p0, p0, Lg/bgh;->ox:Lg/csh;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;)Lg/eyj;
    .locals 0

    iget-object p0, p0, Lg/bgh;->dq:Lg/eyj;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(Lg/tr;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    :cond_1
    return-void
.end method

.method public varargs dq([Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lg/bgh;->d:Lg/dlv;

    invoke-virtual {p1, p0}, Lg/dlv;->dq(Lg/dbw;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/utils/i;

    iget-object v0, p0, Lg/bgh;->ia:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lcom/bytedance/sdk/component/utils/i;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    :cond_0
    iget-object p1, p0, Lg/bgh;->d:Lg/dlv;

    invoke-virtual {p1}, Lg/dlv;->c()Lg/dmm;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lg/dmm;->c:Ljava/util/HashMap;

    if-eqz p1, :cond_3

    const-string v0, "shake_value"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(F)V

    :cond_1
    const-string v0, "calculation_method"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(I)V

    :cond_2
    const-string v0, "shake_interact_conf"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/utils/i;->ox(Lorg/json/JSONObject;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bgh;->d:Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(Lcom/bytedance/sdk/component/utils/i$dq;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/dq;->kk:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    :cond_0
    return-void
.end method
