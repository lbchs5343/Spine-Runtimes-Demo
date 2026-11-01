.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;
.super Lg/dlv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/dlv;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg/dlv;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lg/dlv;->ia:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dq(IIIZ)V
    .locals 1

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;->dq(III)V

    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;->setCanSkip(Z)V

    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "boxFinishImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "boxImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object p1

    iget-object p1, p1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v0, p0, Lg/dlv;->ig:Lg/dmm;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;)V

    invoke-interface {p1, v0, p2, v1}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    goto :goto_1

    :pswitch_1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->d:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->ox:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->p:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->dq:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;->setBoxImage(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object p1

    iget-object p1, p1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v0, p0, Lg/dlv;->ig:Lg/dmm;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;)V

    invoke-interface {p1, v0, p2, v1}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    :goto_1
    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->dq:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->ox:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->p:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7afbddb0 -> :sswitch_5
        -0x5305c081 -> :sswitch_4
        -0x4bf6736d -> :sswitch_3
        0x36452d -> :sswitch_2
        0x58705dc -> :sswitch_1
        0x2f843dbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic ox()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/CycleCountDownView;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 0

    invoke-super {p0}, Lg/dlv;->p()V

    return-void
.end method
