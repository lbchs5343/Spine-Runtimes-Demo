.class Lcom/bytedance/msdk/ox/p/mp$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/mp;->dq(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/p/mp;

.field final synthetic dq:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/mp;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/mp$2;->d:Lcom/bytedance/msdk/ox/p/mp;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/mp$2;->dq:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/mp$2;->d:Lcom/bytedance/msdk/ox/p/mp;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/mp$2;->dq:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/p/mp;->dq(Lcom/bytedance/msdk/ox/p/mp;Landroid/view/ViewGroup;)V

    return-void
.end method
