.class public Lcom/bytedance/msdk/ox/ox/dq/no;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/dq/dq;


# instance fields
.field private final dq:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/bytedance/msdk/ox/ox/dq/no;->dq:J

    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/d;
    .locals 2

    const/4 v0, -0x4

    invoke-static {p3, p2, v0, v0}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/no;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/bytedance/msdk/core/no/d;

    invoke-direct {p2}, Lcom/bytedance/msdk/core/no/d;-><init>()V

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/no/d;->p(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/no/d;->q(I)V

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/msdk/core/no/d;->p(J)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/msdk/core/no/d;->s(J)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/msdk/core/no/d;->iw(J)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/msdk/core/no/d;->mn(J)V

    invoke-virtual {p2, p3}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/util/List;)V

    return-object p2
.end method

.method private dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/d;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    invoke-interface {p1, p2}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/no;Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/no;Lcom/bytedance/msdk/ox/s/dq/d;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V
    .locals 7

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v0

    iget-object v4, v0, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 3

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->ji()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->n()Lcom/bytedance/msdk/api/p/no;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "TTMediationSDK"

    const-string v2, "\u6267\u884c\u5f00\u542f\u5f00\u5c4f\u515c\u5e95..............."

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->n()Lcom/bytedance/msdk/api/p/no;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/no;)V

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/no;)V
    .locals 7

    const-string v0, "TTMediationSDK"

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "settings config.......AdUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u5f00\u5c4f\u5e7f\u544a\u8d70\u4e86\u5f00\u53d1\u8005\u81ea\u5b9a\u4e49\u515c\u5e95\u65b9\u6848   adnName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->dq()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x4

    invoke-static {p3, v1}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u8d70\u4e86\u5f00\u53d1\u8005\u81ea\u5b9a\u4e49\u5f00\u5c4f\u515c\u5e95\uff0c\u6570\u636e\u4e3a: getAdNetworkFlatFromId = "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->dq()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getAppId = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getAppKey = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getAdNetworkSlotId = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0xcd15b

    if-nez p3, :cond_1

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->ox()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->p()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    move-object v2, p0

    move-object v4, p2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->dq()I

    move-result p3

    invoke-static {p3}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/bytedance/msdk/api/p/no;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2, v0}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    new-instance p3, Lcom/bytedance/msdk/iw/dq/s;

    invoke-direct {p3, p4}, Lcom/bytedance/msdk/iw/dq/s;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    invoke-virtual {p3, p4}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/api/p/no;)V

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->d()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/no$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/msdk/ox/ox/dq/no$1;-><init>(Lcom/bytedance/msdk/ox/ox/dq/no;Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p4, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    move-object v3, p1

    move-object v4, p2

    const/4 p1, 0x1

    if-ne p3, p1, :cond_6

    invoke-static {p4}, Lcom/bytedance/msdk/iw/dq/o;->d(Lcom/bytedance/msdk/api/p/no;)Lcom/bytedance/msdk/iw/dq/o;

    move-result-object p1

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/no$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/msdk/ox/ox/dq/no$2;-><init>(Lcom/bytedance/msdk/ox/ox/dq/no;Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v1}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/dq/dq/ox;)V

    return-void

    :cond_6
    move-object v2, p0

    const/4 p1, 0x7

    if-ne p3, p1, :cond_7

    new-instance p1, Lcom/bytedance/msdk/iw/dq/mn;

    invoke-direct {p1, p4}, Lcom/bytedance/msdk/iw/dq/mn;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/api/p/no;)V

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 p1, 0x6

    if-ne p3, p1, :cond_8

    new-instance p1, Lcom/bytedance/msdk/iw/dq/d;

    invoke-direct {p1, p4}, Lcom/bytedance/msdk/iw/dq/d;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/api/p/no;)V

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 p1, 0x4

    if-ne p3, p1, :cond_9

    new-instance p1, Lcom/bytedance/msdk/iw/dq/ia;

    invoke-direct {p1, p4}, Lcom/bytedance/msdk/iw/dq/ia;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/api/p/no;)V

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 p1, 0x8

    if-ne p3, p1, :cond_a

    new-instance p1, Lcom/bytedance/msdk/iw/dq/ig;

    invoke-direct {p1, p4}, Lcom/bytedance/msdk/iw/dq/ig;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/api/p/no;)V

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const/16 p1, 0x9

    if-ne p3, p1, :cond_b

    new-instance p1, Lcom/bytedance/msdk/iw/dq/iw;

    invoke-direct {p1, p4}, Lcom/bytedance/msdk/iw/dq/iw;-><init>(Lcom/bytedance/msdk/api/p/no;)V

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/no$3;

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/msdk/ox/ox/dq/no$3;-><init>(Lcom/bytedance/msdk/ox/ox/dq/no;Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v1}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/dq/dq/ox;)V

    return-void

    :cond_b
    invoke-direct {p0, v4, v0}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :goto_0
    invoke-direct {p0, v4, v0}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
