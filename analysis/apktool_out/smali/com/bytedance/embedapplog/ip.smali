.class final Lcom/bytedance/embedapplog/ip;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Landroid/content/Context;)Lcom/bytedance/embedapplog/hy;
    .locals 2

    invoke-static {}, Lcom/bytedance/embedapplog/kk;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/bytedance/embedapplog/jn;

    new-instance v0, Lcom/bytedance/embedapplog/no;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/no;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/jn;-><init>(Lcom/bytedance/embedapplog/hy;)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->mn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/embedapplog/no;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/bytedance/embedapplog/no;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/no;-><init>()V

    return-object p0

    :cond_1
    invoke-static {}, Lcom/bytedance/embedapplog/jv;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/embedapplog/jv;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/jv;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/embedapplog/kk;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/bytedance/embedapplog/tv;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/tv;-><init>()V

    return-object p0

    :cond_3
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->ox()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/embedapplog/kk;->p()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance p0, Lcom/bytedance/embedapplog/dk;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/dk;-><init>()V

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/bytedance/embedapplog/kk;->dq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/bytedance/embedapplog/kk;->ox()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->kk()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lcom/bytedance/embedapplog/jn;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/jn;-><init>()V

    return-object p0

    :cond_6
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->ia()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lcom/bytedance/embedapplog/g;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/g;-><init>()V

    return-object p0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/bytedance/embedapplog/kk;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Lcom/bytedance/embedapplog/y;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/y;-><init>()V

    return-object p0

    :cond_8
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->ig()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, Lcom/bytedance/embedapplog/zi;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/zi;-><init>()V

    return-object p0

    :cond_9
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->no()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p0, Lcom/bytedance/embedapplog/sy;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/sy;-><init>()V

    return-object p0

    :cond_a
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->mp()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p0, Lcom/bytedance/embedapplog/er;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/er;-><init>()V

    return-object p0

    :cond_b
    new-instance v0, Lcom/bytedance/embedapplog/x;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/x;->dq(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    new-instance p0, Lcom/bytedance/embedapplog/bf;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bf;-><init>()V

    return-object p0

    :cond_d
    invoke-static {}, Lcom/bytedance/embedapplog/kk;->s()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/bytedance/embedapplog/tv;->ox(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance p0, Lcom/bytedance/embedapplog/tv;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/tv;-><init>()V

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0

    :cond_f
    :goto_0
    new-instance p0, Lcom/bytedance/embedapplog/tv;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/tv;-><init>()V

    return-object p0
.end method
