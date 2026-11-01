.class Lcom/bytedance/msdk/core/p/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/jy/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/p/mn;->dq(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/core/p/ox;Lcom/bytedance/msdk/core/p/s$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/p/ox;

.field final synthetic dq:J

.field final synthetic ox:[I

.field final synthetic p:Lcom/bytedance/msdk/core/p/s$dq;

.field final synthetic s:Lcom/bytedance/msdk/core/p/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/p/mn;JLcom/bytedance/msdk/core/p/ox;[ILcom/bytedance/msdk/core/p/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/p/mn$1;->s:Lcom/bytedance/msdk/core/p/mn;

    iput-wide p2, p0, Lcom/bytedance/msdk/core/p/mn$1;->dq:J

    iput-object p4, p0, Lcom/bytedance/msdk/core/p/mn$1;->d:Lcom/bytedance/msdk/core/p/ox;

    iput-object p5, p0, Lcom/bytedance/msdk/core/p/mn$1;->ox:[I

    iput-object p6, p0, Lcom/bytedance/msdk/core/p/mn$1;->p:Lcom/bytedance/msdk/core/p/s$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/msdk/core/p/mn$1;->s:Lcom/bytedance/msdk/core/p/mn;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/p/mn$1;->dq:J

    iget-object v3, p0, Lcom/bytedance/msdk/core/p/mn$1;->ox:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/bytedance/msdk/core/p/mn$1;->d:Lcom/bytedance/msdk/core/p/ox;

    iget-object v5, v4, Lcom/bytedance/msdk/core/p/ox;->dq:Lcom/bytedance/msdk/api/dq/d;

    iget-object v6, p0, Lcom/bytedance/msdk/core/p/mn$1;->p:Lcom/bytedance/msdk/core/p/s$dq;

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/msdk/core/p/mn;->dq(Lcom/bytedance/msdk/core/p/mn;JILcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/s$dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/ia;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/core/p/mn$1;->s:Lcom/bytedance/msdk/core/p/mn;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/p/mn$1;->dq:J

    iget-object v3, p0, Lcom/bytedance/msdk/core/p/mn$1;->d:Lcom/bytedance/msdk/core/p/ox;

    move-object v4, v3

    iget-object v3, v4, Lcom/bytedance/msdk/core/p/ox;->dq:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, v4, Lcom/bytedance/msdk/core/p/ox;->p:Lcom/bytedance/msdk/core/no/d;

    iget-object v5, p0, Lcom/bytedance/msdk/core/p/mn$1;->ox:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v7, p0, Lcom/bytedance/msdk/core/p/mn$1;->p:Lcom/bytedance/msdk/core/p/s$dq;

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/msdk/core/p/mn;->dq(Lcom/bytedance/msdk/core/p/mn;JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;ILcom/bytedance/msdk/core/no/ia;Lcom/bytedance/msdk/core/p/s$dq;)V

    return-void
.end method
