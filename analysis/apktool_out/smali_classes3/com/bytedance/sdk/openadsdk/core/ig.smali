.class public Lcom/bytedance/sdk/openadsdk/core/ig;
.super Ljava/lang/Object;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private final dq:Landroid/content/Context;

.field private iw:Landroid/view/View;

.field private mn:Ljava/lang/String;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field private p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

.field private s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rewarded_video"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->mn:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->iw:Landroid/view/View;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->mn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->mn:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result p3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->mn:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    :cond_1
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->mn:Ljava/lang/String;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p3, p1, p2, p4, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->iw:Landroid/view/View;

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    const-class p4, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->mn:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->iw:Landroid/view/View;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    return-void
.end method


# virtual methods
.method public dq(ILcom/bytedance/sdk/openadsdk/core/r/k;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iget v1, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget v1, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->d:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget v1, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->ox:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget v1, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->p:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->jy:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/core/r/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Landroid/util/SparseArray;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/k;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->iw:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/k;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig;->iw:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_3
    :goto_0
    return-void
.end method
