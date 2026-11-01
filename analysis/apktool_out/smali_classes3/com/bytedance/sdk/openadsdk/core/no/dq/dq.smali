.class public Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;
.super Lcom/bytedance/sdk/openadsdk/core/d/p;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/s/dq;
.implements Lcom/bytedance/sdk/openadsdk/core/d/ox;


# instance fields
.field private d:Z

.field private dq:Lcom/bytedance/sdk/component/adexpress/d/no;

.field private ig:I

.field private iw:Landroid/view/View;

.field private no:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/jy;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private volatile s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->s:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ig:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ig:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->iw:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ox(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dq(Landroid/view/View;I)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->dq:Lcom/bytedance/sdk/component/adexpress/d/no;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->p:Z

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v2, v4

    :cond_1
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v0, v3

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "is_compliant_download"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string v4, "convertActionType"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ig:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const v4, 0x7d06ffdb

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7d06ffda

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7d06ffd9

    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;-><init>()V

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    const/4 v8, 0x0

    aget v9, v2, v8

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v7

    aget v2, v2, v1

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    aget v7, v0, v8

    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->p(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->o()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->dq:Lcom/bytedance/sdk/component/adexpress/d/no;

    invoke-interface {v1, p1, p2, v0}, Lcom/bytedance/sdk/component/adexpress/d/no;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V

    :cond_4
    return-void
.end method

.method private ox(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->dq(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string v0, "DynamicClickListener"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private p(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 2

    const v0, 0x7d06ffdc

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "openPlayableLandingPage"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :catchall_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Landroid/view/View;)V

    return-void
.end method

.method public dq()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->s:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->no:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/jy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/jy;->s()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(Landroid/view/View;)V

    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->iw:Landroid/view/View;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->s:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->s:Z

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ox(Landroid/view/View;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->dq:Lcom/bytedance/sdk/component/adexpress/d/no;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "convertActionType"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->ig:I

    return-void
.end method

.method public dq(ZLcom/bytedance/sdk/component/adexpress/dynamic/interact/jy;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->s:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->d:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->no:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/jy;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->p:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no/dq/dq;->p:Ljava/lang/ref/WeakReference;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Ljava/lang/ref/WeakReference;Lcom/bytedance/sdk/openadsdk/core/d/ox;)V

    :cond_0
    return-void
.end method
