.class Lcom/bytedance/msdk/core/mn/s$12;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/mn/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$12;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$12;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/mn/s;->dq(Landroid/os/Message;)V

    return-void
.end method
