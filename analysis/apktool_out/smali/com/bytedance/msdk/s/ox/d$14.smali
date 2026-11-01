.class Lcom/bytedance/msdk/s/ox/d$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/d/s;

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic ia:I

.field final synthetic ig:J

.field final synthetic iw:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic kk:I

.field final synthetic mn:I

.field final synthetic mp:Lcom/bytedance/msdk/s/ox/d;

.field final synthetic no:J

.field final synthetic o:Ljava/lang/String;

.field final synthetic ox:I

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:J


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$14;->mp:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$14;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p3, p0, Lcom/bytedance/msdk/s/ox/d$14;->d:Lcom/bytedance/msdk/d/s;

    iput p4, p0, Lcom/bytedance/msdk/s/ox/d$14;->ox:I

    iput-object p5, p0, Lcom/bytedance/msdk/s/ox/d$14;->p:Ljava/lang/String;

    iput-wide p6, p0, Lcom/bytedance/msdk/s/ox/d$14;->s:J

    iput-object p8, p0, Lcom/bytedance/msdk/s/ox/d$14;->iw:Lcom/bytedance/msdk/api/dq/d;

    iput p9, p0, Lcom/bytedance/msdk/s/ox/d$14;->mn:I

    iput p10, p0, Lcom/bytedance/msdk/s/ox/d$14;->ia:I

    iput p11, p0, Lcom/bytedance/msdk/s/ox/d$14;->kk:I

    iput-object p12, p0, Lcom/bytedance/msdk/s/ox/d$14;->o:Ljava/lang/String;

    iput-wide p13, p0, Lcom/bytedance/msdk/s/ox/d$14;->no:J

    move-wide p1, p15

    iput-wide p1, p0, Lcom/bytedance/msdk/s/ox/d$14;->ig:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/msdk/s/ox/d$14;->mp:Lcom/bytedance/msdk/s/ox/d;

    iget-object v2, v0, Lcom/bytedance/msdk/s/ox/d$14;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v3, v0, Lcom/bytedance/msdk/s/ox/d$14;->d:Lcom/bytedance/msdk/d/s;

    iget v4, v0, Lcom/bytedance/msdk/s/ox/d$14;->ox:I

    iget-object v5, v0, Lcom/bytedance/msdk/s/ox/d$14;->p:Ljava/lang/String;

    iget-wide v6, v0, Lcom/bytedance/msdk/s/ox/d$14;->s:J

    iget-object v8, v0, Lcom/bytedance/msdk/s/ox/d$14;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget v9, v0, Lcom/bytedance/msdk/s/ox/d$14;->mn:I

    iget v10, v0, Lcom/bytedance/msdk/s/ox/d$14;->ia:I

    iget v11, v0, Lcom/bytedance/msdk/s/ox/d$14;->kk:I

    iget-object v12, v0, Lcom/bytedance/msdk/s/ox/d$14;->o:Ljava/lang/String;

    iget-wide v13, v0, Lcom/bytedance/msdk/s/ox/d$14;->no:J

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lcom/bytedance/msdk/s/ox/d$14;->ig:J

    move-wide/from16 v17, v1

    move-object v1, v15

    move-object/from16 v2, v16

    move-wide/from16 v15, v17

    invoke-static/range {v1 .. v16}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V

    return-void
.end method
