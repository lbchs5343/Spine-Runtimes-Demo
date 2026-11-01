.class public Lcom/bytedance/msdk/core/kk/iw;
.super Ljava/lang/Object;


# direct methods
.method public static d(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(J)J
    .locals 12

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    const-wide/32 v2, 0x36ee80

    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Ljava/util/Date;-><init>(IIIIII)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v5

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v8

    const/16 v9, 0x1e

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Ljava/util/Date;-><init>(IIIIII)V

    move-object v3, v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v8

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Ljava/util/Date;-><init>(IIIIII)V

    move-object v3, v5

    :goto_0
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/msdk/core/kk/iw;->dq(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static dq(JJ)J
    .locals 4

    new-instance v0, Ljava/util/Date;

    add-long/2addr p2, p0

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p3, "old time "

    const-string v3, " new time = "

    invoke-static {p0, p1, p3, v3}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u6beb\u79d2 = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTMediationSDK_IntervalEffectiveTime"

    invoke-static {p1, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method
