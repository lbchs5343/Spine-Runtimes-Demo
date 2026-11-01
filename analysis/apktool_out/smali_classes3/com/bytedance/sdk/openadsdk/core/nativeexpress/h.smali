.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/widget/SSWebView$d;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->ox:Lcom/bytedance/sdk/openadsdk/core/c;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)Lcom/bytedance/sdk/openadsdk/core/c;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->ox:Lcom/bytedance/sdk/openadsdk/core/c;

    return-object p0
.end method

.method private dq()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dq(I)V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->dq()Z

    move-result v0

    const-string v1, "wv:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xeasy"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->dq:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;I)V

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Ljava/lang/ref/WeakReference;Lcom/bytedance/sdk/openadsdk/core/d/ox;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->ox:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(I)V

    :cond_2
    :goto_0
    return-void
.end method
