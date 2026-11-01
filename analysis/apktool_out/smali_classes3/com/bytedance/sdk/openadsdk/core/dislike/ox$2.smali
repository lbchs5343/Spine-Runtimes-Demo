.class Lcom/bytedance/sdk/openadsdk/core/dislike/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dislike/ox;->dq(Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ox;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox$2;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox$2;->dq:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
