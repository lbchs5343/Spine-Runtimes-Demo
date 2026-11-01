.class Lcom/bytedance/msdk/iw/d/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/d/dq;->ox(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/iw/d/dq;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/iw/d/dq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/dq$5;->d:Lcom/bytedance/msdk/iw/d/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/iw/d/dq$5;->dq:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$5;->d:Lcom/bytedance/msdk/iw/d/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/iw/d/dq$5;->dq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/iw/d/dq;->dq(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$5;->d:Lcom/bytedance/msdk/iw/d/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/iw/d/dq$5;->dq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/iw/d/dq;->d(Landroid/content/Context;)V

    return-void
.end method
