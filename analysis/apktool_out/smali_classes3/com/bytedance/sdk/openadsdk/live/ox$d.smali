.class final Lcom/bytedance/sdk/openadsdk/live/ox$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/live/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field dq:I

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/live/ox;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/live/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->ox:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/live/ox;Lcom/bytedance/sdk/openadsdk/live/ox$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/live/ox$d;-><init>(Lcom/bytedance/sdk/openadsdk/live/ox;)V

    return-void
.end method

.method private dq(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;Z)V
    .locals 4

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->dq:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->ox:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->ox:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    iget-object v2, v1, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Lg/hat;->o(II)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-virtual {v2, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->ox:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {p2, p5}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq(Lcom/bytedance/sdk/openadsdk/live/ox;Z)Ljava/util/Map;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {v2, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private dq(ILjava/lang/String;Z)V
    .locals 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->dq:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->ox:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lg/hat;->o(II)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p2}, Lg/hat;->n(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->ox:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq(Lcom/bytedance/sdk/openadsdk/live/ox;Z)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {v0, p2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/ox$d;->ox:Lcom/bytedance/sdk/openadsdk/live/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq(Lcom/bytedance/sdk/openadsdk/live/ox;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/live/ox$d;ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/live/ox$d;->dq(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/live/ox$d;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/live/ox$d;->dq(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public config()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/live/ox$d;->dq(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.byted.live.lite"

    return-object v0
.end method
