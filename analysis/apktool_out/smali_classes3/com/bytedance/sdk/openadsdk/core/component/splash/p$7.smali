.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "splash_card_close_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "splash_ad"

    const-string v2, "splash_card_close"

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;->d()V

    return-void
.end method
