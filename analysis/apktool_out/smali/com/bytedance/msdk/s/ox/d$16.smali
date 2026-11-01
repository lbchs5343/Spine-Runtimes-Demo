.class Lcom/bytedance/msdk/s/ox/d$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/no/no;

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic iw:Lcom/bytedance/msdk/s/ox/d;

.field final synthetic ox:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic p:I

.field final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$16;->iw:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$16;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p3, p0, Lcom/bytedance/msdk/s/ox/d$16;->d:Lcom/bytedance/msdk/core/no/no;

    iput-object p4, p0, Lcom/bytedance/msdk/s/ox/d$16;->ox:Lcom/bytedance/msdk/api/dq/d;

    iput p5, p0, Lcom/bytedance/msdk/s/ox/d$16;->p:I

    iput p6, p0, Lcom/bytedance/msdk/s/ox/d$16;->s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/s/ox/d$16;->iw:Lcom/bytedance/msdk/s/ox/d;

    iget-object v1, p0, Lcom/bytedance/msdk/s/ox/d$16;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v2, p0, Lcom/bytedance/msdk/s/ox/d$16;->d:Lcom/bytedance/msdk/core/no/no;

    iget-object v3, p0, Lcom/bytedance/msdk/s/ox/d$16;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget v4, p0, Lcom/bytedance/msdk/s/ox/d$16;->p:I

    iget v5, p0, Lcom/bytedance/msdk/s/ox/d$16;->s:I

    invoke-static/range {v0 .. v5}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V

    return-void
.end method
