.class Lcom/bytedance/msdk/s/ox/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Lorg/json/JSONObject;

.field final synthetic s:Lcom/bytedance/msdk/s/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$3;->s:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$3;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p3, p0, Lcom/bytedance/msdk/s/ox/d$3;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p4, p0, Lcom/bytedance/msdk/s/ox/d$3;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/msdk/s/ox/d$3;->p:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/s/ox/d$3;->s:Lcom/bytedance/msdk/s/ox/d;

    iget-object v1, p0, Lcom/bytedance/msdk/s/ox/d$3;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v2, p0, Lcom/bytedance/msdk/s/ox/d$3;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/s/ox/d$3;->ox:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/s/ox/d$3;->p:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
