.class Lcom/bytedance/msdk/s/ox/d$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq;

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic ia:Ljava/lang/String;

.field final synthetic ig:Ljava/lang/String;

.field final synthetic iw:I

.field final synthetic kk:J

.field final synthetic mn:I

.field final synthetic mp:J

.field final synthetic no:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic p:Lcom/bytedance/msdk/core/no/no;

.field final synthetic q:Lcom/bytedance/msdk/s/ox/d;

.field final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$15;->q:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$15;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p3, p0, Lcom/bytedance/msdk/s/ox/d$15;->d:Lcom/bytedance/msdk/api/dq;

    iput-object p4, p0, Lcom/bytedance/msdk/s/ox/d$15;->ox:Lcom/bytedance/msdk/api/dq/d;

    iput-object p5, p0, Lcom/bytedance/msdk/s/ox/d$15;->p:Lcom/bytedance/msdk/core/no/no;

    iput p6, p0, Lcom/bytedance/msdk/s/ox/d$15;->s:I

    iput p7, p0, Lcom/bytedance/msdk/s/ox/d$15;->iw:I

    iput p8, p0, Lcom/bytedance/msdk/s/ox/d$15;->mn:I

    iput-object p9, p0, Lcom/bytedance/msdk/s/ox/d$15;->ia:Ljava/lang/String;

    iput-wide p10, p0, Lcom/bytedance/msdk/s/ox/d$15;->kk:J

    iput-object p12, p0, Lcom/bytedance/msdk/s/ox/d$15;->o:Ljava/lang/String;

    iput-object p13, p0, Lcom/bytedance/msdk/s/ox/d$15;->no:Ljava/lang/String;

    iput-object p14, p0, Lcom/bytedance/msdk/s/ox/d$15;->ig:Ljava/lang/String;

    move-wide p1, p15

    iput-wide p1, p0, Lcom/bytedance/msdk/s/ox/d$15;->mp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/msdk/s/ox/d$15;->q:Lcom/bytedance/msdk/s/ox/d;

    iget-object v2, v0, Lcom/bytedance/msdk/s/ox/d$15;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v3, v0, Lcom/bytedance/msdk/s/ox/d$15;->d:Lcom/bytedance/msdk/api/dq;

    iget-object v4, v0, Lcom/bytedance/msdk/s/ox/d$15;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v5, v0, Lcom/bytedance/msdk/s/ox/d$15;->p:Lcom/bytedance/msdk/core/no/no;

    iget v6, v0, Lcom/bytedance/msdk/s/ox/d$15;->s:I

    iget v7, v0, Lcom/bytedance/msdk/s/ox/d$15;->iw:I

    iget v8, v0, Lcom/bytedance/msdk/s/ox/d$15;->mn:I

    iget-object v9, v0, Lcom/bytedance/msdk/s/ox/d$15;->ia:Ljava/lang/String;

    iget-wide v10, v0, Lcom/bytedance/msdk/s/ox/d$15;->kk:J

    iget-object v12, v0, Lcom/bytedance/msdk/s/ox/d$15;->o:Ljava/lang/String;

    iget-object v13, v0, Lcom/bytedance/msdk/s/ox/d$15;->no:Ljava/lang/String;

    iget-object v14, v0, Lcom/bytedance/msdk/s/ox/d$15;->ig:Ljava/lang/String;

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lcom/bytedance/msdk/s/ox/d$15;->mp:J

    move-wide/from16 v17, v1

    move-object v1, v15

    move-object/from16 v2, v16

    move-wide/from16 v15, v17

    invoke-static/range {v1 .. v16}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
