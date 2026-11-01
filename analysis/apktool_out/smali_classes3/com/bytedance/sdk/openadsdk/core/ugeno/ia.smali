.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;


# instance fields
.field private d:Lg/dlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dlv;"
        }
    .end annotation
.end field

.field private dq:Landroid/content/Context;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->dq:Landroid/content/Context;

    return-void
.end method

.method private d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 3

    new-instance v0, Lg/ajp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/ajp;-><init>(Landroid/content/Context;)V

    new-instance v2, Lg/dmm;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/dmm;->a:Landroid/content/Context;

    iput-object v2, v0, Lg/ajp;->a:Lg/dmm;

    iget-object v1, v2, Lg/dmm;->b:Lorg/json/JSONObject;

    iput-object v1, v0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lg/ajp;->n(Lorg/json/JSONObject;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->d:Lg/dlv;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lg/ajp;->s(Lg/cyx;)V

    invoke-virtual {v0, p2}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->d:Lg/dlv;

    if-nez p1, :cond_2

    const/4 p1, -0x1

    const-string p2, "UGenWidget is null"

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(Lg/dlv;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    return-void
.end method

.method public dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    return-void
.end method

.method public dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p2, p1, Lg/fzc;->c:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    iget-object p1, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    const/4 p3, -0x1

    goto :goto_1

    :sswitch_0
    const-string p2, "openAppPolicy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "downloadEvent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "closeDialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x2

    goto :goto_1

    :sswitch_3
    const-string p2, "openAppFunctionDesc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :sswitch_4
    const-string p2, "openAppPermission"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;->p(Landroid/app/Dialog;)V

    return-void

    :pswitch_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;->dq(Landroid/app/Dialog;)V

    return-void

    :pswitch_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;->ox(Landroid/app/Dialog;)V

    return-void

    :pswitch_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;->s(Landroid/app/Dialog;)V

    return-void

    :pswitch_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;->d(Landroid/app/Dialog;)V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca7475a -> :sswitch_4
        -0x1b5c2c60 -> :sswitch_3
        -0xfeb92a0 -> :sswitch_2
        0x78cef2 -> :sswitch_1
        0x49c19b89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
