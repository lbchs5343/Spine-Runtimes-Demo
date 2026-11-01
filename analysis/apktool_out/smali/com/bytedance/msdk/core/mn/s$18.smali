.class Lcom/bytedance/msdk/core/mn/s$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/dq/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->mp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/msdk/core/mn/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$18;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/s$18;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/core/mn/s$18;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$18;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$18;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s$18;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/core/mn/s;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    return-void
.end method
