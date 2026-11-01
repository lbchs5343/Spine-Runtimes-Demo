.class Lcom/bytedance/sdk/openadsdk/core/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c;->d(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/c;

.field final synthetic dq:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c$4;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c$4;->dq:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c$4;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c$4;->dq:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;)V

    return-void
.end method
