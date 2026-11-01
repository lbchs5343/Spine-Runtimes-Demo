.class Lcom/bytedance/sdk/openadsdk/core/c$11;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c;->mp(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/c;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/c$11;->dq:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/openadsdk/core/c;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/openadsdk/core/c;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->dq:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Lcom/bytedance/sdk/openadsdk/core/c;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/d/q;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/d/q;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(I)V

    :try_start_0
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->dq:Lorg/json/JSONObject;

    const-string v4, "isRenderSuc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->dq:Lorg/json/JSONObject;

    const-string v5, "AdSize"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "height"

    const-string v6, "width"

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_0

    :catch_0
    const/16 v5, 0x65

    goto/16 :goto_3

    :cond_1
    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->dq:Lorg/json/JSONObject;

    const-string v11, "videoInfo"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Lcom/bytedance/sdk/openadsdk/core/c;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    const-string v13, "x"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-string v15, "y"

    move/from16 v17, v3

    const/16 v16, 0x65

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    move-wide/from16 v18, v9

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v15, v4}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/c;Lorg/json/JSONObject;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "borderRadiusTopLeft"

    move-wide/from16 v20, v7

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v15, "borderRadiusTopRight"

    move-wide/from16 v22, v5

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v15, "borderRadiusBottomLeft"

    move-wide/from16 v24, v9

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v15, "borderRadiusBottomRight"

    move-wide/from16 v26, v2

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->fn()Z

    move-result v4

    if-eqz v4, :cond_2

    double-to-float v4, v7

    invoke-static {v12, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(F)V

    double-to-float v4, v5

    invoke-static {v12, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(F)V

    double-to-float v4, v9

    invoke-static {v12, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->ox(F)V

    double-to-float v2, v2

    invoke-static {v12, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/d/q;->p(F)V

    goto :goto_1

    :cond_2
    double-to-float v4, v7

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(F)V

    double-to-float v4, v5

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(F)V

    double-to-float v4, v9

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->ox(F)V

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/d/q;->p(F)V

    goto :goto_1

    :cond_3
    move-wide/from16 v26, v2

    move-wide/from16 v22, v5

    move-wide/from16 v20, v7

    move-wide/from16 v24, v9

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->fn()Z

    move-result v2

    if-eqz v2, :cond_4

    double-to-float v2, v13

    invoke-static {v12, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/d/q;->ox(D)V

    move-wide/from16 v2, v26

    double-to-float v2, v2

    invoke-static {v12, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/d/q;->p(D)V

    move-wide/from16 v4, v24

    double-to-float v2, v4

    invoke-static {v12, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/d/q;->s(D)V

    move-wide/from16 v6, v22

    double-to-float v2, v6

    invoke-static {v12, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(FF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(FF)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/d/q;->iw(D)V

    goto :goto_2

    :cond_4
    move-wide/from16 v6, v22

    move-wide/from16 v4, v24

    move-wide/from16 v2, v26

    invoke-virtual {v1, v13, v14}, Lcom/bytedance/sdk/component/adexpress/d/q;->ox(D)V

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/d/q;->p(D)V

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/component/adexpress/d/q;->s(D)V

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/component/adexpress/d/q;->iw(D)V

    goto :goto_2

    :cond_5
    move/from16 v17, v3

    move-wide/from16 v20, v7

    move-wide/from16 v18, v9

    const/16 v16, 0x65

    :goto_2
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->dq:Lorg/json/JSONObject;

    const-string v3, "msg"

    invoke-static/range {v16 .. v16}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->dq:Lorg/json/JSONObject;

    const-string v4, "code"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x65

    :try_start_2
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v4, v17

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(Z)V

    move-wide/from16 v7, v20

    invoke-virtual {v1, v7, v8}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(D)V

    move-wide/from16 v7, v18

    invoke-virtual {v1, v7, v8}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(D)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/openadsdk/core/c;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/d/no;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/adexpress/d/no;->dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_1
    :goto_3
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(I)V

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/c$11;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/openadsdk/core/c;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/d/no;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/adexpress/d/no;->dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V

    :cond_6
    :goto_4
    return-void
.end method
