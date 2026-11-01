.class final Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Landroid/content/Context;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->ox:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->p:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->s:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Z)Z

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->dq:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->p()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->ox:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->dq:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->s:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$1;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method
