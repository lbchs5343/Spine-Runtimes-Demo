.class public Lcom/bytedance/sdk/openadsdk/core/ji$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field final d:J

.field final dq:I

.field public final ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

.field final iw:I

.field final kk:Ljava/lang/String;

.field final mn:Ljava/lang/String;

.field final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final ox:J

.field final p:I

.field final s:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/dq;JJLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/r/dq;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->p:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->s:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->mn:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->kk:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->iw:I

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->d:J

    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ox:J

    iput-object p12, p0, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public static dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "did"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "processing_time_ms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "s_receive_ts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "s_send_ts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v1, "status_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/d;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;J)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/r/dq;

    const-string v9, "request_after"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->dq(J)V

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/dq;JJLjava/util/ArrayList;)V

    return-object v2

    :cond_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;

    invoke-direct/range {v2 .. v14}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/dq;JJLjava/util/ArrayList;)V

    return-object v2
.end method
