.class public Lcom/bytedance/sdk/component/adexpress/d/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/o;


# instance fields
.field private d:Lcom/bytedance/sdk/component/adexpress/d/dq;

.field private dq:Landroid/content/Context;

.field private ox:Lcom/bytedance/sdk/component/adexpress/d/mp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/d/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/iw;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/d/iw;->d:Lcom/bytedance/sdk/component/adexpress/d/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/iw;->ox:Lcom/bytedance/sdk/component/adexpress/d/mp;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/adexpress/d/iw;)Lcom/bytedance/sdk/component/adexpress/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/d/iw;->d:Lcom/bytedance/sdk/component/adexpress/d/dq;

    return-object p0
.end method


# virtual methods
.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/iw;->d:Lcom/bytedance/sdk/component/adexpress/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/d/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/ox;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/iw;->ox:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->kk()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/iw;->d:Lcom/bytedance/sdk/component/adexpress/d/dq;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/d/iw$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/d/iw$1;-><init>(Lcom/bytedance/sdk/component/adexpress/d/iw;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/p;->dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V

    const/4 p1, 0x1

    return p1
.end method
