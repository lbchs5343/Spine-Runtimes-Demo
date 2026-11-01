.class Lcom/bytedance/sdk/component/panglearmor/d/p$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/panglearmor/d/p;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/panglearmor/d/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/panglearmor/d/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->d(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->ox(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->p(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->s(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq(Lcom/bytedance/sdk/component/panglearmor/d/p;[F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/s;->dq()Lcom/bytedance/sdk/component/panglearmor/d/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/panglearmor/d/s;->iw()J

    move-result-wide v5

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/s;->dq()Lcom/bytedance/sdk/component/panglearmor/d/s;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/panglearmor/d/s;->mn()J

    move-result-wide v7

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/s;->dq()Lcom/bytedance/sdk/component/panglearmor/d/s;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/panglearmor/d/s;->ox()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    div-long/2addr v9, v11

    div-long/2addr v9, v11

    long-to-int v10, v9

    const/4 v9, 0x1

    if-lez v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    :goto_0
    const-string v11, "azimuth_unit"

    invoke-virtual {v3, v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "angle_unit"

    invoke-virtual {v3, v11, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq()Lcom/bytedance/sdk/component/panglearmor/d/d;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq(J)Ljava/util/LinkedList;

    move-result-object v11

    const-string v12, "active"

    invoke-static {v11, v10}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq(Ljava/util/LinkedList;I)[I

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq()Lcom/bytedance/sdk/component/panglearmor/d/dq;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq(I)V

    const-string v10, "screen"

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq()Lcom/bytedance/sdk/component/panglearmor/d/dq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox()[I

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "network"

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq()Lcom/bytedance/sdk/component/panglearmor/d/dq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d()[I

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "support_net"

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq()Lcom/bytedance/sdk/component/panglearmor/d/dq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->p()I

    move-result v12

    invoke-virtual {v3, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "sim_status"

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq()Lcom/bytedance/sdk/component/panglearmor/d/dq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->s()I

    move-result v12

    invoke-virtual {v3, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v11, v5, v6, v7, v8}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq(Ljava/util/List;JJ)[[I

    move-result-object v10

    const-string v11, "ax"

    aget-object v12, v10, v4

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "ay"

    aget-object v12, v10, v9

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "az"

    const/4 v12, 0x2

    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq()Lcom/bytedance/sdk/component/panglearmor/d/d;

    move-result-object v10

    const-wide/32 v13, 0xa4cb80

    invoke-virtual {v10, v13, v14}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq(J)Ljava/util/LinkedList;

    move-result-object v10

    invoke-static {v10, v5, v6, v7, v8}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq(Ljava/util/List;JJ)[[I

    move-result-object v10

    const-string v11, "ax3"

    aget-object v13, v10, v4

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "ay3"

    aget-object v13, v10, v9

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "az3"

    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq()Lcom/bytedance/sdk/component/panglearmor/d/d;

    move-result-object v10

    const-wide/32 v13, 0x1499700

    invoke-virtual {v10, v13, v14}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq(J)Ljava/util/LinkedList;

    move-result-object v10

    invoke-static {v10, v5, v6, v7, v8}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq(Ljava/util/List;JJ)[[I

    move-result-object v5

    const-string v6, "ax6"

    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ay6"

    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "az6"

    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "angleAvg"

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timestamp"

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn(Lcom/bytedance/sdk/component/panglearmor/d/p;)Lcom/bytedance/sdk/component/panglearmor/d/p$dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn(Lcom/bytedance/sdk/component/panglearmor/d/p;)Lcom/bytedance/sdk/component/panglearmor/d/p$dq;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/component/panglearmor/d/p$dq;->dq(Lorg/json/JSONObject;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->ia(Lcom/bytedance/sdk/component/panglearmor/d/p;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq(Lcom/bytedance/sdk/component/panglearmor/d/p;Z)Z

    return-void
.end method
