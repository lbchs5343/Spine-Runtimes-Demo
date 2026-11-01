.class public Lcom/bytedance/msdk/ox/ox/d/dq/p;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/dq/d;)Lcom/bytedance/msdk/ox/dq/dq;
    .locals 1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->jy()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/d/d;->kx()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/mn;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/mn;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne v0, p0, :cond_6

    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    if-ne v0, p0, :cond_1

    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :cond_1
    const/4 p0, 0x7

    if-ne v0, p0, :cond_2

    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :pswitch_5
    const/4 p0, 0x4

    if-ne v0, p0, :cond_3

    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/o;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/o;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :cond_3
    const/4 p0, 0x5

    if-ne v0, p0, :cond_4

    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/s;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :cond_4
    const/4 p0, 0x3

    if-ne v0, p0, :cond_5

    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/o;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/o;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/mn;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/mn;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/dq/d;)Lcom/bytedance/msdk/ox/dq/dq;
    .locals 1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->jy()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->kx()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/iw;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/iw;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_6

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ox;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ox;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    if-ne v0, p1, :cond_1

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :cond_1
    const/4 p1, 0x7

    if-ne v0, p1, :cond_2

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/mn;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :pswitch_5
    const/4 p1, 0x4

    if-ne v0, p1, :cond_3

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/p;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/p;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :cond_3
    const/4 p1, 0x5

    if-ne v0, p1, :cond_4

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ox;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ox;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :cond_4
    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/p;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/p;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/ia;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/iw;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/iw;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :pswitch_8
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V

    return-object p1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
