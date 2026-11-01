.class Lcom/bytedance/msdk/ox/p/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ox/p/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/p/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no$1;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no$1;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/ox/p/no;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no$1;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/p/no;->d(Lcom/bytedance/msdk/ox/p/no;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no$1;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/p/no;->ox(Lcom/bytedance/msdk/ox/p/no;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no$1;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/p/no;->p(Lcom/bytedance/msdk/ox/p/no;)V

    return-void
.end method
