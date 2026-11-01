.class Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$1;->ox:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$1;->dq:Landroid/content/Context;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$1;->ox:Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$1;->dq:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView$1;->d:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;->dq(Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;Landroid/content/Context;I)V

    return-void
.end method
