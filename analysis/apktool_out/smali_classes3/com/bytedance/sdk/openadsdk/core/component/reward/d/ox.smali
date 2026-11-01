.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

.field private ox:Ljava/lang/String;

.field private p:Z

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    return-void
.end method

.method private d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 3
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fe9c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "click_play_star_level"

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06feb1

    if-ne v0, v1, :cond_2

    const-string v0, "click_play_star_nums"

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffa8

    if-ne v0, v1, :cond_3

    const-string v0, "click_play_source"

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff56

    if-ne v0, v1, :cond_4

    const-string v0, "click_play_logo"

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fec4

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffdb

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fffc

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06febd

    if-ne v0, v1, :cond_6

    const-string v0, "click_video"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->p()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff9d

    if-ne v0, v1, :cond_8

    const-string v0, "fallback_endcard_click"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->p()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_7
    :goto_0
    const-string v0, "click_start_play_bar"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->p()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_8
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private ox(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 8
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->s()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fe9c

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06feb1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffa8

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff56

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fec4

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffdb

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fffc

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff7b

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06febd

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7e06ff9d

    if-ne p1, v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/content/Context;)I

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->iw(Landroid/content/Context;)F

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->mn(Landroid/content/Context;)F

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->s:Landroid/view/View;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->s:Landroid/view/View;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->o()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->ox()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ob()Ljava/util/Map;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v0, "click_other"

    const/4 v4, 0x1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/kk;Ljava/lang/String;ZLjava/util/Map;IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private s()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public d()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$2;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;Lorg/json/JSONObject;)V

    const-string v0, "skip_endcard"

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "reward_full_scene_type"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->bl()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-object p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public dq()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$1;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;Lorg/json/JSONObject;)V

    const-string v0, "skip"

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method

.method public dq(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "callback_extra_key_reward_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "callback_extra_key_reward_valid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "callback_extra_key_error_code"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "callback_extra_key_error_msg"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callback_extra_key_is_server_verify"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz v1, :cond_0

    const-string v4, "reward_arrived_success"

    goto :goto_0

    :cond_0
    const-string v4, "reward_arrived_failed"

    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "isRewardVerify"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isServerCallback"

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "rewardType"

    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    invoke-virtual {v6, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorMsg"

    invoke-virtual {v6, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "reward_data_bundle"

    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "RewardFullEventManager"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$4;

    invoke-direct {v1, p0, v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;Lorg/json/JSONObject;)V

    invoke-static {p1, v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onClickReport error :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RewardFullEventManager"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->s:Landroid/view/View;

    return-void
.end method

.method public dq(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "dialog_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "template_url"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$5;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;Lorg/json/JSONObject;)V

    invoke-static {p2, p3, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->kx()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->bl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reward_full_scene_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(ZIJ)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "scroll_up"

    goto :goto_0

    :cond_0
    const-string p1, "scroll_down"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$dq;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$dq;-><init>(IJLorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method

.method public ox()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->ox:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$3;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;Lorg/json/JSONObject;)V

    const-string v0, "reward_arrived_begin"

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method

.method public p()Lorg/json/JSONObject;
    .locals 5
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->uh()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->jy()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->uh()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->f()I

    move-result v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "duration"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :catchall_0
    const/4 v3, 0x0

    :catchall_1
    return-object v3
.end method
