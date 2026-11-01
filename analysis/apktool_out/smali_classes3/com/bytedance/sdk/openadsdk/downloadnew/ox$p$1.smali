.class Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/IDialogStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p;->ox(Lcom/ss/android/download/api/model/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/DialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p;

.field final synthetic dq:Lcom/ss/android/download/api/model/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p;Lcom/ss/android/download/api/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p$1;->d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p$1;->dq:Lcom/ss/android/download/api/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p$1;->dq:Lcom/ss/android/download/api/model/d;

    iget-object v0, v0, Lcom/ss/android/download/api/model/d;->ia:Lcom/ss/android/download/api/model/d$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/model/d$d;->ox(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onNegativeBtnClick(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p$1;->dq:Lcom/ss/android/download/api/model/d;

    iget-object v0, v0, Lcom/ss/android/download/api/model/d;->ia:Lcom/ss/android/download/api/model/d$d;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/ss/android/download/api/model/d$d;->d(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onPositiveBtnClick(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$p$1;->dq:Lcom/ss/android/download/api/model/d;

    iget-object v0, v0, Lcom/ss/android/download/api/model/d;->ia:Lcom/ss/android/download/api/model/d$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/model/d$d;->dq(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
