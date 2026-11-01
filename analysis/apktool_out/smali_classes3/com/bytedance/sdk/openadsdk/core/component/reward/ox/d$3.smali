.class Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->dq:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    return-void
.end method

.method public dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 2

    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->dq:Lorg/json/JSONObject;

    const-string v0, "event_template"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "uchain"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ju()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kx()V

    sget-object p1, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Lorg/json/JSONObject;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "reward_dialog_callback"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/bytedance/sdk/component/no/dq/d$dq;

    invoke-direct {p3, p2}, Lcom/bytedance/sdk/component/no/dq/d$dq;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/no/dq/d$dq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/component/no/dq/d$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq()Lcom/bytedance/sdk/component/no/dq/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/d;->dq()V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "exit_watch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "continue_watch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->d()V

    :cond_4
    :goto_0
    return-void
.end method
