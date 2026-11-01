.class public Lcom/bytedance/msdk/core/kk/mp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/kk/mp$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/kk/mp;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/core/kk/mp$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/kk/mp;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/core/kk/mp;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp$dq;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    return-object v0
.end method

.method private dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ia;->dq()Lcom/bytedance/msdk/core/kk/ia;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/core/kk/ia;->dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;I)V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ia;->dq()Lcom/bytedance/msdk/core/kk/ia;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/core/kk/ia;->dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/kk/mp;Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/kk/mp;->dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/mp;->d:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/mp;->dq:Ljava/util/Map;

    return-void
.end method

.method public d(Lcom/bytedance/msdk/core/kk/kk;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/o;->dq()Lcom/bytedance/msdk/core/kk/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/kk/o;->dq(Lcom/bytedance/msdk/core/kk/kk;)V

    return-void
.end method

.method public d(Lcom/bytedance/msdk/core/kk/mn;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ia;->dq()Lcom/bytedance/msdk/core/kk/ia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/kk/ia;->dq(Lcom/bytedance/msdk/core/kk/mn;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/kk/mp$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/kk/mp$1;-><init>(Lcom/bytedance/msdk/core/kk/mp;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mp;->dq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/o;->dq()Lcom/bytedance/msdk/core/kk/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/core/kk/o;->dq(Ljava/lang/String;J)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/kk;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/core/kk/mp;->s(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "TTMediationSDK_IntervalShowControl"

    if-nez v1, :cond_1

    const-string p1, "pacing \u89c4\u5219\u4e3a\u7a7a\u76f4\u63a5\u5b58\u50a8"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "pacing ruleId \u4e3a\u7a7a \u6e05\u7a7a\u672c\u5730\u6570\u636e "

    invoke-static {v3, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/kk/mp;->p(Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "pacing ruleId \u4e00\u81f4 ruleId = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u65e0\u9700\u5904\u7406"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "pacing ruleId\u4e0d\u4e00\u81f4\uff0c\u7f13\u5b58\u65b0\u89c4\u5219 old ruleId = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  new ruleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pacing \u5220\u9664 ritId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/kk/mp;->p(Ljava/lang/String;)V

    return v2
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/mn;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/core/kk/mp;->o(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "TTMediationSDK_IntervalShowControl"

    if-nez v1, :cond_1

    const-string p1, "freqctl \u89c4\u5219\u4e3a\u7a7a\u76f4\u63a5\u5b58\u50a8"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "freqctl version \u4e3a\u7a7a \u6e05\u7a7a\u672c\u5730\u6570\u636e "

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/p;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/kk/mp;->kk(Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/p;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "freqctl version \u4e00\u81f4 version = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/p;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u65e0\u9700\u5904\u7406"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "freqctl version\u4e0d\u4e00\u81f4\uff0c\u7f13\u5b58\u65b0\u89c4\u5219 old version = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/p;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  new version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public ia(Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/kk/mp;->o(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/p;->ia()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/kk/s;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkFreqctl date = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " item.getEffectiveTime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->p()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TTMediationSDK_IntervalShowControl"

    invoke-static {v5, v4}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->p()J

    move-result-wide v6

    const/4 v8, 0x0

    cmp-long v9, v3, v6

    if-gtz v9, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result v3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->dq()I

    move-result v4

    const-string v6, " count = "

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkFreqctl \u672a\u5230\u4e0a\u7ebf\u53ef\u4ee5\u5c55\u793a ruleId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkFreqctl \u5230\u4e86\u4e0a\u7ebf\u4e0d\u53ef\u4ee5\u5c55\u793a ruleId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mp;->d:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v8}, Lcom/bytedance/msdk/core/kk/mp;->dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/bytedance/msdk/core/kk/iw;->dq(J)J

    move-result-wide v6

    invoke-direct {p0, v0, v3, v6, v7}, Lcom/bytedance/msdk/core/kk/mp;->dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkFreqctl \u6709\u6548\u671f\u5916\u8ba1\u6570\u9700\u8981\u6e050\uff0c\u8fc7\u671f\u65f6\u95f4\u9700\u8981\u66f4\u65b0 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public iw(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mp;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public kk(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ia;->dq()Lcom/bytedance/msdk/core/kk/ia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/kk/ia;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/kk/mp$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/kk/mp$2;-><init>(Lcom/bytedance/msdk/core/kk/mp;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ia;->dq()Lcom/bytedance/msdk/core/kk/ia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/kk/ia;->d(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object p1

    return-object p1
.end method

.method public ox(Ljava/lang/String;)Z
    .locals 12

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/kk/mp;->s(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->ia()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->ig()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->no()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->no()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->kk()J

    move-result-wide v8

    add-long/2addr v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkPacing currentTime = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/bytedance/msdk/core/kk/iw;->d(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " showTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/bytedance/msdk/core/kk/iw;->d(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pacingBean.getPacing() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->kk()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " pacingTime = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/bytedance/msdk/core/kk/iw;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TTMediationSDK_IntervalShowControl"

    invoke-static {v6, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v2, v8

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mp;->dq:Ljava/util/Map;

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/o;->dq()Lcom/bytedance/msdk/core/kk/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/kk/o;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/o;->dq()Lcom/bytedance/msdk/core/kk/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/kk/o;->d(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;

    move-result-object p1

    return-object p1
.end method
