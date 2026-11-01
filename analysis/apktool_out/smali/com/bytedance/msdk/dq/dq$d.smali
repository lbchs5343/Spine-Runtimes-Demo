.class Lcom/bytedance/msdk/dq/dq$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/msdk/dq/dq;

.field private ia:Z

.field private iw:Ljava/lang/String;

.field private mn:J

.field private ox:Lcom/bytedance/msdk/d/s;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/bytedance/msdk/api/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/d/s;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/dq/dq$d;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    iput-object p4, p0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    iput-object p5, p0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iput-object p6, p0, Lcom/bytedance/msdk/dq/dq$d;->iw:Ljava/lang/String;

    iput-wide p7, p0, Lcom/bytedance/msdk/dq/dq$d;->mn:J

    iput-boolean p9, p0, Lcom/bytedance/msdk/dq/dq$d;->ia:Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/dq$d;)Lcom/bytedance/msdk/d/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v1, Lcom/bytedance/msdk/core/no/ox;

    invoke-direct {v1}, Lcom/bytedance/msdk/core/no/ox;-><init>()V

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v2, v2, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/no/ox;->d(I)Lcom/bytedance/msdk/core/no/ox;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget v3, v3, Lcom/bytedance/msdk/dq/dq;->s:I

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/no/ox;->dq(I)Lcom/bytedance/msdk/core/no/ox;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/dq;->s(Lcom/bytedance/msdk/dq/dq;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/no/ox;->ox(I)Lcom/bytedance/msdk/core/no/ox;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/dq;->p(Lcom/bytedance/msdk/dq/dq;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/no/ox;->p(I)Lcom/bytedance/msdk/core/no/ox;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/dq;->ox(Lcom/bytedance/msdk/dq/dq;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/no/ox;->s(I)Lcom/bytedance/msdk/core/no/ox;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v3}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/no/ox;->d(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/ox;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v3}, Lcom/bytedance/msdk/dq/dq;->gh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/no/ox;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/ox;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/dq;->d(Lcom/bytedance/msdk/dq/dq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/no/ox;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/ox;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->d:Ljava/lang/String;

    const-string v3, "adload_ads"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_a

    const-string v2, "adload_ad"

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "failed"

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TTMediationSDK"

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->ij()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    move-object v14, v4

    goto :goto_0

    :cond_1
    move-object v14, v4

    move-object v15, v14

    :goto_0
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->s(Lcom/bytedance/msdk/dq/dq;)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    iget-boolean v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ia:Z

    if-eqz v2, :cond_2

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v6, v2, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v7, v2, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->mn(Lcom/bytedance/msdk/dq/dq;)I

    move-result v8

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->ia(Lcom/bytedance/msdk/dq/dq;)I

    move-result v9

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->kk(Lcom/bytedance/msdk/dq/dq;)I

    move-result v10

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->r()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->iw(Lcom/bytedance/msdk/dq/dq;)J

    move-result-wide v12

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->iw:Ljava/lang/String;

    move-object/from16 v16, v5

    iget-wide v4, v0, Lcom/bytedance/msdk/dq/dq$d;->mn:J

    move-wide/from16 v17, v4

    move-object/from16 v5, v16

    move-object/from16 v16, v2

    invoke-static/range {v5 .. v18}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v5, v4, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v6, v4, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/dq;->mn(Lcom/bytedance/msdk/dq/dq;)I

    move-result v20

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/dq;->ia(Lcom/bytedance/msdk/dq/dq;)I

    move-result v21

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/dq;->kk(Lcom/bytedance/msdk/dq/dq;)I

    move-result v22

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v4}, Lcom/bytedance/msdk/dq/dq;->r()Ljava/lang/String;

    move-result-object v23

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/dq/dq;->iw(Lcom/bytedance/msdk/dq/dq;)J

    move-result-wide v24

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-static/range {v17 .. v25}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;J)V

    :goto_1
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/bytedance/msdk/d/p;->d:Z

    const-string v4, ",msg="

    const-string v5, "] AdType["

    const-string v6, "AdNetWorkName["

    const-string v7, "fill_fail"

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v8}, Lcom/bytedance/msdk/dq/dq;->o(Lcom/bytedance/msdk/dq/dq;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v6}, Lcom/bytedance/msdk/dq/dq;->cd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] AdUnitId["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v6}, Lcom/bytedance/msdk/dq/dq;->d(Lcom/bytedance/msdk/dq/dq;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v6, v5, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v8, v8, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v8}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v8

    iget-object v9, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget v10, v9, Lcom/bytedance/msdk/dq/dq;->s:I

    iget-object v9, v9, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v8, v10, v9}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] \u8bf7\u6c42\u5931\u8d25 (loadSort="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v5}, Lcom/bytedance/msdk/dq/dq;->p(Lcom/bytedance/msdk/dq/dq;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",showSort="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v5}, Lcom/bytedance/msdk/dq/dq;->ox(Lcom/bytedance/msdk/dq/dq;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "),error="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget v5, v5, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget-object v4, v4, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v8}, Lcom/bytedance/msdk/dq/dq;->o(Lcom/bytedance/msdk/dq/dq;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v6}, Lcom/bytedance/msdk/dq/dq;->cd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v6, v5, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v8, v8, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v8}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v8

    iget-object v9, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget v10, v9, Lcom/bytedance/msdk/dq/dq;->s:I

    iget-object v9, v9, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v8, v10, v9}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] \u8bf7\u6c42\u5931\u8d25 error="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget v5, v5, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget-object v4, v4, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v2, v2, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget v4, v4, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    iget-object v4, v4, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v5, v5, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "errorCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " errorCodeList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ox;->dq()Lcom/bytedance/msdk/core/kk/ox;

    move-result-object v3

    iget-object v5, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v5, v5, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v6, v6, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v7, v7, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2, v4}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v6, v2}, Lcom/bytedance/msdk/core/kk/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    invoke-interface {v2, v3, v1}, Lcom/bytedance/msdk/dq/dq$dq;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    return-void

    :cond_5
    const-string v1, "ad_video_cache"

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/dq;->no(Lcom/bytedance/msdk/dq/dq;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/dq;->no(Lcom/bytedance/msdk/dq/dq;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/dq;->no(Lcom/bytedance/msdk/dq/dq;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    :cond_6
    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/d/s;)V

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->s:Lcom/bytedance/msdk/api/dq;

    if-eqz v1, :cond_7

    iget v1, v1, Lcom/bytedance/msdk/api/dq;->dq:I

    const/16 v2, 0x753a

    if-ne v1, v2, :cond_7

    invoke-static {}, Lcom/bytedance/msdk/dq/dq;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/bytedance/msdk/dq/dq$d$1;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/dq/dq$d$1;-><init>(Lcom/bytedance/msdk/dq/dq$d;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;J)V

    return-void

    :cond_7
    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/d/s;->kk(Z)V

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/dq;->d(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/d/s;)V

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v3, v2, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, v2, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v1, v3, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;)V

    :cond_8
    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/msdk/dq/dq$dq;->m_()V

    return-void

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->o(Lcom/bytedance/msdk/dq/dq;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "fill"

    invoke-static {v2, v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onAdVideoCache-----ttAd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0xc8321

    const/16 v5, 0x4e20

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v10, v2

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    const/16 v8, 0x4e20

    goto :goto_5

    :cond_c
    const v8, 0xc8321

    :goto_5
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v9, v4

    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    if-eqz v3, :cond_d

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v4, v3}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/d/s;)V

    if-nez v9, :cond_d

    move-object v9, v3

    goto :goto_6

    :cond_e
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->mn()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object v7, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v11, v0, Lcom/bytedance/msdk/dq/dq$d;->iw:Ljava/lang/String;

    iget-wide v12, v0, Lcom/bytedance/msdk/dq/dq$d;->mn:J

    invoke-static/range {v7 .. v13}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V

    goto :goto_9

    :cond_10
    :goto_7
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/bytedance/msdk/d/s;

    if-eqz v13, :cond_11

    iget-object v11, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v15, v0, Lcom/bytedance/msdk/dq/dq$d;->iw:Ljava/lang/String;

    iget-wide v3, v0, Lcom/bytedance/msdk/dq/dq$d;->mn:J

    const/4 v14, 0x1

    move-wide/from16 v16, v3

    move v12, v8

    invoke-static/range {v11 .. v17}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V

    goto :goto_8

    :cond_12
    :goto_9
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v4, v3, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v5, v3, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/dq;->iw(Lcom/bytedance/msdk/dq/dq;)J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;J)V

    :cond_13
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->p:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Lcom/bytedance/msdk/dq/dq$dq;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->ox()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v3}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/core/ox/ox;->ox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    if-eqz v2, :cond_15

    const/16 v7, 0x4e20

    goto :goto_a

    :cond_15
    const v7, 0xc8321

    :goto_a
    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/d/s;)V

    iget-object v8, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    iget-object v6, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v10, v0, Lcom/bytedance/msdk/dq/dq$d;->iw:Ljava/lang/String;

    iget-wide v11, v0, Lcom/bytedance/msdk/dq/dq$d;->mn:J

    const/4 v9, 0x1

    invoke-static/range {v6 .. v12}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v4, v3, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v5, v3, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/dq;->iw(Lcom/bytedance/msdk/dq/dq;)J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;J)V

    :cond_16
    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->ox:Lcom/bytedance/msdk/d/s;

    invoke-interface {v2, v3, v1}, Lcom/bytedance/msdk/dq/dq$dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/ox;)V

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->ox()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v3}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/core/ox/ox;->ox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method
