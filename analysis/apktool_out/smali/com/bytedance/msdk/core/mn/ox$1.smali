.class Lcom/bytedance/msdk/core/mn/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/p/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic ox:Lcom/bytedance/msdk/core/mn/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/ox;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/ox$1;->ox:Lcom/bytedance/msdk/core/mn/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/ox$1;->dq:Lcom/bytedance/msdk/api/dq/d;

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/ox$1;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/core/p/d;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox$1;->ox:Lcom/bytedance/msdk/core/mn/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/ox$1;->dq:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox$1;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/msdk/core/mn/ox;->dq(Lcom/bytedance/msdk/core/mn/ox;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Lcom/bytedance/msdk/core/p/d;)V

    return-void
.end method
