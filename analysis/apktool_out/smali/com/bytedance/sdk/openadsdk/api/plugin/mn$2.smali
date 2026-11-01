.class Lcom/bytedance/sdk/openadsdk/api/plugin/mn$2;
.super Lcom/bytedance/pangle/ZeusPluginStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    invoke-direct {p0}, Lcom/bytedance/pangle/ZeusPluginStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onPluginStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state changed, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TTPluginManager"

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x9

    if-ne p2, p3, :cond_0

    const-string p2, "com.byted.pangle"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/mn;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
