.class Lcom/bytedance/sdk/openadsdk/core/widget/ig$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/ig;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/ig;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ig$4;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ig$4;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ig;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ig;->d(Lcom/bytedance/sdk/openadsdk/core/widget/ig;)Landroid/content/Context;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ig$4;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ig;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ig;->d(Lcom/bytedance/sdk/openadsdk/core/widget/ig;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ig$4;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ig;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ig;->ox(Lcom/bytedance/sdk/openadsdk/core/widget/ig;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "\u94fe\u63a5\u590d\u5236\u6210\u529f"

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "\u94fe\u63a5\u590d\u5236\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
