.class Lcom/bytedance/msdk/s/ox/d$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic iw:Lcom/bytedance/msdk/s/ox/d;

.field final synthetic ox:Lcom/bytedance/msdk/api/dq;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$12;->iw:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$12;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p3, p0, Lcom/bytedance/msdk/s/ox/d$12;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p4, p0, Lcom/bytedance/msdk/s/ox/d$12;->ox:Lcom/bytedance/msdk/api/dq;

    iput-object p5, p0, Lcom/bytedance/msdk/s/ox/d$12;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/msdk/s/ox/d$12;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/s/ox/d$12;->iw:Lcom/bytedance/msdk/s/ox/d;

    iget-object v1, p0, Lcom/bytedance/msdk/s/ox/d$12;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v2, p0, Lcom/bytedance/msdk/s/ox/d$12;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/s/ox/d$12;->ox:Lcom/bytedance/msdk/api/dq;

    iget-object v4, p0, Lcom/bytedance/msdk/s/ox/d$12;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/msdk/s/ox/d$12;->s:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
