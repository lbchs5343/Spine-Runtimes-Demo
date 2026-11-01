.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->dq(Lorg/json/JSONObject;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->d:Lorg/json/JSONObject;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->ox:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->dq:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "ugen_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->s(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mp$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/d/mp$dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cd;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->dq(Lg/dbw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mp$dq;->dq(Z)Lcom/bytedance/sdk/component/adexpress/d/mp$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->ox(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;Landroid/view/ViewGroup;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->p(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/component/adexpress/d/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->ox:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView$2;->dq:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/UGenVideoPanelView;ILjava/lang/String;)V

    return-void
.end method
