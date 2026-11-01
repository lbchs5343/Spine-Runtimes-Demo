.class public Lcom/bytedance/msdk/ox/ox/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/d/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/ox/ox/d/dq$dq;)V
    .locals 16

    invoke-interface/range {p1 .. p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->d()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v10, Lcom/bytedance/msdk/api/dq;

    const v3, 0xcd168

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->s()Z

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v7

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v8

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v9

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v4

    iget-boolean v13, v4, Lcom/bytedance/msdk/core/no/o;->s:Z

    const/4 v14, 0x0

    const-string v4, ""

    const/4 v6, 0x2

    const-wide/16 v11, -0x1

    invoke-static/range {v2 .. v14}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v6

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v7

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string v8, ""

    move-object v4, v2

    move-object v2, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v15}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v10, v2

    move-object v2, v4

    invoke-virtual {v0, v10, v2}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq;)V

    return-void
.end method
