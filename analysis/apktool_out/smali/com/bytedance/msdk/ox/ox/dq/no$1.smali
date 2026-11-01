.class Lcom/bytedance/msdk/ox/ox/dq/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/s/dq/d;

.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/dq/dq$dq;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Lcom/bytedance/msdk/ox/ox/dq/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/dq/no;Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->s:Lcom/bytedance/msdk/ox/ox/dq/no;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->dq:Lcom/bytedance/msdk/ox/ox/dq/dq$dq;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    iput-object p4, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->s:Lcom/bytedance/msdk/ox/ox/dq/no;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->dq:Lcom/bytedance/msdk/ox/ox/dq/dq$dq;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->ox:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/no$1;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/ox/ox/dq/no;->dq(Lcom/bytedance/msdk/ox/ox/dq/no;Lcom/bytedance/msdk/ox/ox/dq/dq$dq;Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
