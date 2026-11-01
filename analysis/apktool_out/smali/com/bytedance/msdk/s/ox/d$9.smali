.class Lcom/bytedance/msdk/s/ox/d$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic iw:Lcom/bytedance/msdk/s/ox/d;

.field final synthetic ox:Lcom/bytedance/msdk/d/s;

.field final synthetic p:J

.field final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$9;->iw:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$9;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p3, p0, Lcom/bytedance/msdk/s/ox/d$9;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p4, p0, Lcom/bytedance/msdk/s/ox/d$9;->ox:Lcom/bytedance/msdk/d/s;

    iput-wide p5, p0, Lcom/bytedance/msdk/s/ox/d$9;->p:J

    iput-object p7, p0, Lcom/bytedance/msdk/s/ox/d$9;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/msdk/s/ox/d$9;->iw:Lcom/bytedance/msdk/s/ox/d;

    iget-object v1, p0, Lcom/bytedance/msdk/s/ox/d$9;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v2, p0, Lcom/bytedance/msdk/s/ox/d$9;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/s/ox/d$9;->ox:Lcom/bytedance/msdk/d/s;

    iget-wide v4, p0, Lcom/bytedance/msdk/s/ox/d$9;->p:J

    iget-object v6, p0, Lcom/bytedance/msdk/s/ox/d$9;->s:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JLjava/lang/String;)V

    return-void
.end method
