.class Lcom/bytedance/msdk/core/q/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/q/iw;->dq(Ljava/lang/String;Lcom/bytedance/msdk/core/q/p;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/q/iw;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/q/iw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/q/iw$2;->d:Lcom/bytedance/msdk/core/q/iw;

    iput-object p2, p0, Lcom/bytedance/msdk/core/q/iw$2;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/q/iw$2;->d:Lcom/bytedance/msdk/core/q/iw;

    iget-object v1, p0, Lcom/bytedance/msdk/core/q/iw$2;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/q/iw;->dq(Ljava/lang/String;)V

    return-void
.end method
