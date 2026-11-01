.class Lcom/bytedance/msdk/s/ox/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic ia:Ljava/util/Map;

.field final synthetic iw:Ljava/lang/String;

.field final synthetic kk:Lcom/bytedance/msdk/s/ox/d;

.field final synthetic mn:I

.field final synthetic ox:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;JLcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$1;->kk:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$1;->dq:Lcom/bytedance/msdk/s/p;

    iput-wide p3, p0, Lcom/bytedance/msdk/s/ox/d$1;->d:J

    iput-object p5, p0, Lcom/bytedance/msdk/s/ox/d$1;->ox:Lcom/bytedance/msdk/api/dq/d;

    iput-object p6, p0, Lcom/bytedance/msdk/s/ox/d$1;->p:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/bytedance/msdk/s/ox/d$1;->s:Z

    iput-object p8, p0, Lcom/bytedance/msdk/s/ox/d$1;->iw:Ljava/lang/String;

    iput p9, p0, Lcom/bytedance/msdk/s/ox/d$1;->mn:I

    iput-object p10, p0, Lcom/bytedance/msdk/s/ox/d$1;->ia:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/msdk/s/ox/d$1;->dq:Lcom/bytedance/msdk/s/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/msdk/s/ox/d$1;->d:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    iget-object v3, p0, Lcom/bytedance/msdk/s/ox/d$1;->kk:Lcom/bytedance/msdk/s/ox/d;

    iget-object v4, p0, Lcom/bytedance/msdk/s/ox/d$1;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v5, p0, Lcom/bytedance/msdk/s/ox/d$1;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v6, p0, Lcom/bytedance/msdk/s/ox/d$1;->p:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/bytedance/msdk/s/ox/d$1;->s:Z

    iget-object v8, p0, Lcom/bytedance/msdk/s/ox/d$1;->iw:Ljava/lang/String;

    iget v9, p0, Lcom/bytedance/msdk/s/ox/d$1;->mn:I

    iget-object v10, p0, Lcom/bytedance/msdk/s/ox/d$1;->ia:Ljava/util/Map;

    invoke-static/range {v3 .. v10}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method
