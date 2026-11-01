.class Lcom/bytedance/msdk/core/admanager/o$7$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/o$7;->ia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/o$7;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/o$7;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$7$2;->dq:Lcom/bytedance/msdk/core/admanager/o$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7$2;->dq:Lcom/bytedance/msdk/core/admanager/o$7;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o$7;->dq(Lcom/bytedance/msdk/core/admanager/o$7;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7$2;->dq:Lcom/bytedance/msdk/core/admanager/o$7;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/o$7;->d(Lcom/bytedance/msdk/core/admanager/o$7;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/core/admanager/o$7$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/o$7$2$1;-><init>(Lcom/bytedance/msdk/core/admanager/o$7$2;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/o$7$2;->dq:Lcom/bytedance/msdk/core/admanager/o$7;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/o$7;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7$2;->dq:Lcom/bytedance/msdk/core/admanager/o$7;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/o$7;->mn()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/o$7$2;->dq:Lcom/bytedance/msdk/core/admanager/o$7;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/o$7;->mn()V

    return-void
.end method
