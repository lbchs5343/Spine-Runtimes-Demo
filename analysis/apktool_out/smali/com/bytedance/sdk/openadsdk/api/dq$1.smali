.class Lcom/bytedance/sdk/openadsdk/api/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/dq;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lg/hat;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/api/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq;Landroid/content/Context;Lg/hat;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/api/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$1;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/dq$1;->d:Lg/hat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/api/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$1;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$1;->d:Lg/hat;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/dq;->d(Landroid/content/Context;Lg/hat;)V

    return-void
.end method
