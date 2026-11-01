.class Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox;->dq(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/download/api/config/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox;

.field final synthetic dq:Lcom/ss/android/download/api/config/r;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox;Lcom/ss/android/download/api/config/r;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox$1;->d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox$1;->dq:Lcom/ss/android/download/api/config/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox$1;->dq:Lcom/ss/android/download/api/config/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/r;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$ox$1;->dq:Lcom/ss/android/download/api/config/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/r;->dq()V

    :cond_0
    return-void
.end method
