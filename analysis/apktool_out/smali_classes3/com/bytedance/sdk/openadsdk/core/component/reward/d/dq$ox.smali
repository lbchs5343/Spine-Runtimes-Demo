.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ox"
.end annotation


# instance fields
.field private d:Z

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->d:Z

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->d:Z

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->d:Z

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->dq(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->dq(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->ia(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(I)V

    return-void
.end method
