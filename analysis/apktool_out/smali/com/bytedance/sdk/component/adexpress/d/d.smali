.class public Lcom/bytedance/sdk/component/adexpress/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/o;


# instance fields
.field private d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

.field private dq:Landroid/content/Context;

.field private iw:I

.field private ox:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private p:Lcom/bytedance/sdk/component/adexpress/d/ia;

.field private s:Lcom/bytedance/sdk/component/adexpress/d/mp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/p/ia;Lcom/bytedance/sdk/component/adexpress/d/ia;Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/adexpress/d/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/p/ia;Lcom/bytedance/sdk/component/adexpress/d/ia;Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/p/ia;Lcom/bytedance/sdk/component/adexpress/d/ia;Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->s:Lcom/bytedance/sdk/component/adexpress/d/mp;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->ox:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->p:Lcom/bytedance/sdk/component/adexpress/d/ia;

    if-eqz p8, :cond_0

    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    goto :goto_0

    :cond_0
    move-object p6, p2

    move-object p2, p1

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-direct/range {p1 .. p7}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/p/ia;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->p:Lcom/bytedance/sdk/component/adexpress/d/ia;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/ia;)V

    instance-of p1, p5, Lcom/bytedance/sdk/component/adexpress/dynamic/p/mn;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->iw:I

    return-void

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->iw:I

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/adexpress/d/d;)Lcom/bytedance/sdk/component/adexpress/d/mp;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->s:Lcom/bytedance/sdk/component/adexpress/d/mp;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/adexpress/d/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->iw:I

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/adexpress/d/d;)Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/adexpress/dynamic/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->iw()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->d()V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->d(Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->s:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->iw:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/kk;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/d/d$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/d/d$1;-><init>(Lcom/bytedance/sdk/component/adexpress/d/d;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dq/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V

    const/4 p1, 0x1

    return p1
.end method
