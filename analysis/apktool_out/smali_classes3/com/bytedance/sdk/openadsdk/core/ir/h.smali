.class public Lcom/bytedance/sdk/openadsdk/core/ir/h;
.super Ljava/lang/Object;


# direct methods
.method public static final d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-object v0
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dq(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dq(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static final dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const/16 v2, 0x140

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const/16 v2, 0x280

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const-string v2, "defaultUser"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->p(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    return-object v0
.end method

.method public static dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->mn(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p0

    return-object p0
.end method

.method public static dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    :cond_0
    cmpl-float v0, v1, v3

    if-gtz v0, :cond_1

    cmpl-float v0, v2, v3

    if-lez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x3ff4cccccccccccdL    # 1.3

    mul-double v3, v3, v5

    double-to-int v0, v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v3

    int-to-double v3, v3

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    cmpl-float v6, v1, v2

    if-lez v6, :cond_2

    if-lez v3, :cond_3

    int-to-float v0, v4

    cmpl-float v3, v1, v0

    if-lez v3, :cond_3

    int-to-float v2, v5

    move v1, v0

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    int-to-float v0, v4

    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    int-to-float v1, v5

    move v2, v0

    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->mn(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p0

    return-object p0
.end method

.method public static dq(ILjava/lang/String;FF)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->mn(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 8

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;-><init>()V

    const-string v2, "mAdId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mCreativeId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mExt"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mCodeId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mUserData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->kk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mIsAutoPlay"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mImgAcceptedWidth"

    const/16 v4, 0x280

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "mImgAcceptedHeight"

    const/16 v5, 0x140

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mExpressViewAcceptedWidth"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v2, "mExpressViewAcceptedHeight"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mSupportDeepLink"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mAdCount"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mMediaExtra"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mUserID"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mOrientation"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->p(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mNativeAdType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->s(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mExternalABVid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->no(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq([I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mAdLoadSeq"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->iw(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mPrimeRit"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mBidAdm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ia(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mRewardAmount"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ia(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const-string v2, "mRewardName"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->o(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mAdId"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mCreativeId"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mExt"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->iw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mCodeId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mUserData"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mIsAutoPlay"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ia()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "mImgAcceptedWidth"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mImgAcceptedHeight"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mExpressViewAcceptedWidth"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "mExpressViewAcceptedHeight"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "mSupportDeepLink"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mp()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "mSupportRenderControl"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->q()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget p1, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x170c

    if-lt p1, v1, :cond_0

    const-string p1, "mSupportIconStyle"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->bl()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "mAdCount"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->jy()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mMediaExtra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mUserID"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mOrientation"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->cd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mNativeAdType"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->gh()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mExternalABVid"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->r()[I

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mAdLoadSeq"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->i()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mPrimeRit"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->le()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mBidAdm"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mRewardAmount"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ji()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mRewardName"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dq(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
