.class public Lcom/bytedance/msdk/ox/ox/dq/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0xcd15d

    return p1

    :pswitch_1
    const p1, 0xcd167

    return p1

    :pswitch_2
    const p1, 0xcd15e

    return p1

    :pswitch_3
    const p1, 0xcd165

    return p1

    :pswitch_4
    const p1, 0xcd164

    return p1

    :pswitch_5
    const p1, 0xcd163

    return p1

    :pswitch_6
    const p1, 0xcd162

    return p1

    :pswitch_7
    const p1, 0xcd161

    return p1

    :pswitch_8
    const p1, 0xcd160

    return p1

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


# virtual methods
.method public d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 3

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->iw()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "TTMediationSDK"

    const-string v1, "\u8c03\u7528\u8fc7\u9500\u6bc1\u65b9\u6cd5_destroy()\uff01\uff01\uff01"

    invoke-static {p1, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v1, 0xa054

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->mp()Lcom/bytedance/msdk/ox/s/dq/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 v1, 0x271a

    const-string v2, "Ad load timeout!"

    invoke-direct {p1, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 9

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v4, 0xcd15f

    invoke-static {v4}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/f/ox;->dq(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/ox/ox/dq/s;->dq(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/bytedance/msdk/ox/ox/dq/s;->dq(I)I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->d()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->iw()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v5, 0xa054

    invoke-static {v5}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    :cond_3
    const-string v5, "TTMediationSDK"

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v2, "Context\u4e3anull\uff01\uff01\uff01"

    invoke-static {v5, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v6, 0xa02d

    invoke-static {v6}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v6, 0xcd15a

    const-string v7, "\u5e7f\u544a\u4f4did\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v6, v7}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    :cond_5
    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_6
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "settings config.......\u6ca1\u6709settings config\u914d\u7f6e\u4fe1\u606f,AdUnitId = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v5, 0xcd168

    invoke-static {v5}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v4}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v6

    const-string v7, "settings config.......\u6ce8\u610f\uff0cAdUnitId = "

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u6ca1\u6709\u5bf9\u5e94\u7684waterfall\u914d\u7f6e\u4fe1\u606f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;I)V

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u7684\u914d\u7f6e\u4fe1\u606f\u4e3a null \uff01\uff01"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v5, 0xad76

    const-string v6, "\u5e7f\u544a\u4f4dID\u4e0d\u5408\u6cd5"

    invoke-direct {v2, v5, v6}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;I)V

    :goto_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bytedance/msdk/core/f/d;->d(I)V

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->vf()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/bytedance/msdk/ox/mn/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v5, 0xcd16c

    const-string v6, "\u672c\u6b21\u8bf7\u6c42\u672a\u5305\u542b\u805a\u5408\u5e7f\u544a\u4f4d\u5934\u5c42\u8bbe\u4ef7\u6700\u9ad8\u7684\u4ee3\u7801\u4f4d\uff0c\u5bfc\u81f4\u805a\u5408\u8bf7\u6c42\u5931\u8d25\uff1b\u8bf7\u8c03\u6574\u8bf7\u6c42\uff0c\u786e\u4fdd\u5305\u542b\u805a\u5408\u5e7f\u544a\u4f4d\u5934\u5c42\u8bbe\u4ef7\u6700\u9ad8\u7684\u4ee3\u7801\u4f4d\u3002"

    invoke-direct {v2, v5, v6}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    :cond_a
    move-object v7, v2

    if-eqz v7, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v3

    :cond_b
    move-object v2, v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object p1

    iget-object v4, p1, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    iget v5, v7, Lcom/bytedance/msdk/api/dq;->dq:I

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v7}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_c
    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method
