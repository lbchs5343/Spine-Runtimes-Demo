.class public Lcom/bytedance/sdk/component/mn/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/mn/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private volatile d:Ljava/lang/String;

.field private volatile dq:Landroid/content/Context;

.field private volatile ia:I

.field private volatile iw:Lcom/bytedance/sdk/component/mn/dq/ox;

.field private volatile mn:Z

.field private volatile ox:I

.field private volatile p:Z

.field private volatile s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Lcom/bytedance/sdk/component/mn/dq;
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/mn/p$dq;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/p$dq;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/mn/ox/dq/dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/p$dq;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->dq:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/mn/ox/d/d;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    return-object v0
.end method

.method private ox()Lcom/bytedance/sdk/component/mn/dq;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/p$dq;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/mn/p$dq;->s:Z

    iget v3, p0, Lcom/bytedance/sdk/component/mn/p$dq;->ia:I

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/mn/d/dq/dq;->dq(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->mn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/mn/p$dq;->mn:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/mn/p$dq;->d()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public d(I)Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->ia:I

    return-object p0
.end method

.method public d(Z)Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->s:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/mn/dq;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/mn/p$dq;->ox:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/mn/p$dq;->d()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/mn/p$dq;->ox()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->p:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/component/mn/dq/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/mn/dq/d;-><init>(Lcom/bytedance/sdk/component/mn/dq;)V

    new-instance v0, Lcom/bytedance/sdk/component/mn/dq/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/mn/dq/dq;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/mn/dq/d;->dq(Lcom/bytedance/sdk/component/mn/dq/ox;)V

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->iw:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/bytedance/sdk/component/mn/dq/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/mn/dq/d;-><init>(Lcom/bytedance/sdk/component/mn/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/p$dq;->iw:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/mn/dq/d;->dq(Lcom/bytedance/sdk/component/mn/dq/ox;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public dq(I)Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->ox:I

    return-object p0
.end method

.method public dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->dq:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/mn/ox;->dq(Landroid/content/Context;)V

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/component/mn/p$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/mn/p$dq;->p:Z

    return-object p0
.end method
