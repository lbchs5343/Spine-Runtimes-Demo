.class Lcom/bytedance/msdk/mn/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/mn/dq/dq;->d(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/mn/dq/dq;

.field final synthetic dq:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/mn/dq/dq;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/mn/dq/dq$2;->d:Lcom/bytedance/msdk/mn/dq/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/mn/dq/dq$2;->dq:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/d;->dq()Lcom/bytedance/msdk/mn/ox/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/mn/dq/dq$2;->dq:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/mn/ox/d;->dq(Lorg/json/JSONArray;)V

    return-void
.end method
