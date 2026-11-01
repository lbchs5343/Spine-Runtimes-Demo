.class Lcom/bytedance/msdk/core/admanager/kk$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$1;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$1;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/kk;->dq(Lcom/bytedance/msdk/core/admanager/kk;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$1;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/kk;->d(Lcom/bytedance/msdk/core/admanager/kk;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$1;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/kk;->ox(Lcom/bytedance/msdk/core/admanager/kk;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$1;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/kk;->p(Lcom/bytedance/msdk/core/admanager/kk;)V

    return-void
.end method
