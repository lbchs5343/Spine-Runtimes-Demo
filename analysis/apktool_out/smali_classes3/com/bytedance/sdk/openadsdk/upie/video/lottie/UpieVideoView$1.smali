.class Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;->dq:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lg/hcl;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lg/hcl;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "${"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;->d:Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;->dq:Landroid/content/Context;

    iget v4, p1, Lg/hcl;->e:I

    iget p1, p1, Lg/hcl;->h:I

    invoke-static {v2, v3, v1, v4, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;Landroid/content/Context;Ljava/lang/String;II)V

    :cond_2
    return-object v0
.end method
