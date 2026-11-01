.class public Lcom/bytedance/msdk/ox/ox/dq/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/dq/dq;


# instance fields
.field private dq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    return-void
.end method

.method private dq(Ljava/lang/String;I)D
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->ce()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/ox/s/dq/d;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v5, p4

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bytedance/msdk/core/s/d/p;->d(Ljava/lang/String;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/bytedance/msdk/api/dq/d;->dq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/msdk/api/dq/d;->d(I)V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/lit8 v10, v0, 0x1

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v0

    iget-object v11, v0, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v0, v3}, Lcom/bytedance/msdk/ox/mn/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/bytedance/msdk/core/s/d/p;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/core/s/d/d;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/bytedance/msdk/core/s/d/d;->iw()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Lcom/bytedance/msdk/core/s/d/d;->iw()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    :goto_0
    invoke-virtual {v5, v8}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/core/no/o;)V

    invoke-interface {v4}, Lcom/bytedance/msdk/core/s/d/d;->s()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lj$/util/concurrent/ConcurrentHashMap;)V

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v4

    invoke-virtual {v6}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/msdk/core/s/d/p;->d(Ljava/lang/String;I)I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    iput v2, v1, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    invoke-virtual {v5, v2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(I)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->p()V

    return-void

    :cond_3
    const/4 v9, 0x4

    const/4 v10, 0x3

    const-string v11, "TTMediationSDK"

    if-eq v4, v10, :cond_5

    if-ne v4, v9, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "--==-- \u9884\u7f13\u5b58reqType\u9519\u8bef\uff1areqType = "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {v6}, Lcom/bytedance/msdk/api/dq/d;->ia()I

    move-result v12

    if-ne v12, v2, :cond_6

    const-string v0, "--==-- \u6fc0\u52b1\u518d\u5f97\u60c5\u51b5\uff0c\u4e0d\u8fdb\u884c\u9884\u7f13\u5b58\u8865\u5145\uff0c\u76f4\u63a5\u5bf9\u5916\u7ed9\u51fa\u56de\u8c03"

    invoke-static {v11, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, v1, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    invoke-virtual {v5, v8}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(I)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->p()V

    return-void

    :cond_6
    invoke-static {v7}, Lcom/bytedance/msdk/core/s/d/p;->iw(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const-wide/16 v16, -0x1

    cmp-long v2, v12, v16

    if-eqz v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/core/no/d;->p()J

    move-result-wide v12

    cmp-long v2, v14, v12

    if-gez v2, :cond_7

    const-string v0, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u65e0\u9700\u53d1\u8d77\uff0c\u65f6\u95f4\u95f4\u9694\u4e0d\u591f\uff0cinterval\uff1a"

    const-string v2, ", config interval: "

    invoke-static {v14, v15, v0, v2}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/core/no/d;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v10, v1, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    invoke-virtual {v5, v10}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(I)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->p()V

    return-void

    :cond_7
    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    :cond_8
    move-object v8, v0

    invoke-virtual {v6}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    invoke-direct {v1, v7, v0}, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq(Ljava/lang/String;I)D

    move-result-wide v2

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/bytedance/msdk/d/s;->w()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v8}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v12

    cmpg-double v0, v12, v2

    if-gez v0, :cond_9

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v9

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v0, Lcom/bytedance/msdk/ox/ox/dq/ia$1;

    move-wide/from16 v18, v2

    move v2, v4

    move-wide/from16 v3, v18

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/ox/ox/dq/ia$1;-><init>(Lcom/bytedance/msdk/ox/ox/dq/ia;IDLcom/bytedance/msdk/ox/s/dq/d;)V

    move v3, v2

    move-object v4, v6

    move-object v2, v7

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    move-object v0, v9

    move-object v1, v10

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/core/s/d/p;->dq(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/s/d/p$ox;)V

    return-void

    :cond_9
    move-object v7, v1

    const-string v0, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u65e0\u9700\u53d1\u8d77\uff0c\u5df2\u7ecf\u547d\u4e2d\u6700\u4f18"

    invoke-static {v11, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, v7, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    invoke-virtual {v5, v9}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(I)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/dq/d;->p()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/ia;Ljava/lang/String;ZILjava/util/List;IDLcom/bytedance/msdk/ox/s/dq/d;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq(Ljava/lang/String;ZILjava/util/List;IDLcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method

.method private dq(Ljava/lang/String;ZILjava/util/List;IDLcom/bytedance/msdk/ox/s/dq/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;ID",
            "Lcom/bytedance/msdk/ox/s/dq/d;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    const/16 p1, 0x2713

    if-ne p3, p1, :cond_0

    const/16 p1, 0x9

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    goto :goto_1

    :cond_0
    const/16 p1, 0x2766

    if-ne p3, p1, :cond_5

    const/16 p1, 0x8

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    if-ne p5, p1, :cond_4

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide p1

    cmpl-double p3, p1, p6

    if-ltz p3, :cond_3

    const/4 p1, 0x6

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x7

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x3

    if-ne p5, p1, :cond_5

    const/4 p1, 0x5

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    :cond_5
    :goto_1
    iget p1, p0, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq:I

    invoke-virtual {p8, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(I)V

    invoke-virtual {p8, p4}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/util/List;)V

    const-string p1, "TTMediationSDK"

    const-string p2, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u7ed3\u675f\uff0c\u5bf9\u5916\u7ed9\u51fa\u56de\u8c03"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p8}, Lcom/bytedance/msdk/ox/s/dq/d;->p()V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/s/dq/d;)Z
    .locals 3

    invoke-virtual {p3}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)Z

    move-result p2

    const-string v0, "TTMediationSDK"

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/s/d/p;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/s/d/ig;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--==-- hit cache!!! -----"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--==-- not hit cache!!! -----"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 5

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v2

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/bytedance/msdk/core/s/d/p;->ox(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/s/dq/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/bytedance/msdk/ox/s/dq/d;->ox(Z)V

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object p1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/bytedance/msdk/ox/ox/dq/ia;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;)V

    :cond_2
    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method
