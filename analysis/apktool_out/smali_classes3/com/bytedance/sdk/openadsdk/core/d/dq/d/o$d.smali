.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/h$ox<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/r/io;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

.field private final p:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/io;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->p:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWechatLink failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WechatClickHandler"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/io;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/io;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->p:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->d()V

    :cond_1
    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->dq(Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "scheme"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/io;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/io;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V

    return-void

    :cond_0
    const/16 p1, 0x25d

    const-string v0, " scheme is null!"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->dq(ILjava/lang/String;)V

    return-void
.end method
