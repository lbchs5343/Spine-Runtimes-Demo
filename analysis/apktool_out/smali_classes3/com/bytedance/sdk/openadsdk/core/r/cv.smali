.class public Lcom/bytedance/sdk/openadsdk/core/r/cv;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:Z

.field private ia:I

.field private iw:Z

.field private mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

.field private ox:I

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "splash_card"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->iw:Z

    const-string v4, "click_on_close"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->dq:Z

    const-string v4, "card_stay_count_down"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->d:I

    const-string v4, "card_click_area"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ox:I

    const-string v4, "card_text"

    const-string v5, "\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->s:Ljava/lang/String;

    const-string v4, "splash_card_style_id"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ia:I

    const-string v5, "card_top_text"

    if-ne v4, v3, :cond_1

    const-string v3, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "\u70b9\u51fb\u8df3\u8f6c"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p:Ljava/lang/String;

    :cond_2
    :goto_0
    const-string v0, "splash_icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;-><init>()V

    const-string v3, "splash_icon_height"

    const/16 v4, 0x48

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->d(I)V

    const-string v3, "splash_icon_width"

    const/16 v4, 0x36

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->dq(I)V

    const-string v3, "splash_icon_url"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->dq(Ljava/lang/String;)V

    const-string v3, "splash_icon_video_height"

    const/16 v4, 0x7e

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->p(I)V

    const-string v3, "splash_icon_video_width"

    const/16 v4, 0x47

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->ox(I)V

    const-string v3, "video_endcard_show_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->s(I)V

    const-string v3, "video_endcard_text"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->d(Ljava/lang/String;)V

    const-string v3, "icon_show_time"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->iw(I)V

    const-string v1, "is_skip_close"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->dq(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    :cond_3
    :goto_1
    return-void
.end method

.method public static cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->ia()I

    move-result p0

    return p0
.end method

.method public static d()I
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    const-string v2, "splash_card_show_day"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "splash_card_show_count"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    return v4
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jb()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->iw:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->d()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->py()I

    move-result v1

    if-lt v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "if_splash_card"

    const-string v1, "splash_ad"

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "card_show_fail"

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static dq()V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "splash_card_show_day"

    invoke-interface {v1, v3, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "splash_card_show_count"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v0, :cond_0

    move v5, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v1, v3, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    invoke-interface {v1, v4, v5}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jb()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->iw:Z

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->d()I

    move-result v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->py()I

    move-result v3

    if-lt v2, v3, :cond_4

    return v1

    :cond_4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    iget-boolean p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->iw:Z

    return p0
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->s()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/r/ji;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->s()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->lk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    return v0
.end method

.method public static fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->kk()Z

    move-result p0

    return p0
.end method

.method private static gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->d:I

    if-lez p0, :cond_2

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->ox()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u8df3\u8f6c"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    return-object p0

    :cond_1
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jb()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->p()I

    move-result p0

    aput p0, v0, v3

    iget-object p0, v1, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->s()I

    move-result p0

    aput p0, v0, v2

    return-object v0

    :cond_1
    iget-object p0, v1, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->dq()I

    move-result p0

    aput p0, v0, v3

    iget-object p0, v1, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->d()I

    move-result p0

    aput p0, v0, v2

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ox:I

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ia:I

    return p0
.end method

.method public static mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->mn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->ox()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static o(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->dq:Z

    return p0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jb()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jb()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static q(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->iw()I

    move-result p0

    return p0
.end method

.method private static r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->t()Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/cv;

    move-result-object p0

    const-string v0, "\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->s:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "splash_icon_height"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "splash_icon_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "splash_icon_video_height"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "splash_icon_video_width"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "splash_icon_width"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->dq()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_endcard_show_time"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->iw()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_endcard_text"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "icon_show_time"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->ia()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_skip_close"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->mn:Lcom/bytedance/sdk/openadsdk/core/r/dc;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dc;->kk()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "splash_icon"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->iw:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "click_on_close"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->dq:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "card_stay_count_down"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "card_click_area"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ox:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "card_text"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "card_top_text"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "splash_card_style_id"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ia:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "splash_card"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
