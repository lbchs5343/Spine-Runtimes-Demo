.class Lcom/bytedance/msdk/core/mn/s$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/mn/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$8;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$8;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->p()V

    return-void
.end method
