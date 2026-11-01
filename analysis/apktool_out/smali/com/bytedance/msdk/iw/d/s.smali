.class public Lcom/bytedance/msdk/iw/d/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/iw/d/s$dq;
    }
.end annotation


# direct methods
.method public static d()Lorg/json/JSONObject;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/iw/d/d;->d()Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "duration"

    const-string v4, "status"

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/dq/dq/p;

    invoke-interface {v7}, Lcom/bytedance/msdk/dq/dq/p;->s()J

    move-result-wide v9

    invoke-interface {v7}, Lcom/bytedance/msdk/dq/dq/p;->iw()I

    move-result v11

    cmp-long v12, v9, v5

    if-eqz v12, :cond_0

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v7}, Lcom/bytedance/msdk/dq/dq/p;->mn()V

    goto :goto_0

    :cond_1
    sget-wide v7, Lcom/bytedance/sdk/gromore/init/iw;->iw:J

    const/4 v2, 0x1

    cmp-long v9, v7, v5

    if-lez v9, :cond_2

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-wide v8, Lcom/bytedance/sdk/gromore/init/iw;->iw:J

    invoke-virtual {v7, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "pangle"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sput-wide v5, Lcom/bytedance/sdk/gromore/init/iw;->iw:J

    :cond_2
    sget-wide v7, Lcom/bytedance/sdk/gromore/init/iw;->mn:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-wide v8, Lcom/bytedance/sdk/gromore/init/iw;->mn:J

    invoke-virtual {v7, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "fusion"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sput-wide v5, Lcom/bytedance/sdk/gromore/init/iw;->mn:J

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/iw/d/dq;->p()Lcom/bytedance/msdk/core/iw/dq;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/iw/d/dq;->p()Lcom/bytedance/msdk/core/iw/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/iw/dq;->dq()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/iw/d/dq;->p()Lcom/bytedance/msdk/core/iw/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/iw/dq;->dq()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/iw/d/dq;->p()Lcom/bytedance/msdk/core/iw/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/iw/dq;->dq()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->s()J

    move-result-wide v9

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->iw()I

    move-result v11

    cmp-long v12, v9, v5

    if-eqz v12, :cond_4

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->mn()V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_6

    return-object v0

    :cond_6
    return-object v1

    :catchall_0
    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 16

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v2, 0x2127

    const/16 v3, 0x2126

    const/16 v4, 0x2125

    const/16 v5, 0x2124

    const/16 v6, 0x2123

    const/16 v7, 0x2078

    const/16 v8, 0x211f

    const/16 v9, 0x2120

    const/16 v10, 0x1f5a

    const/16 v11, 0x1f59

    const/16 v12, 0x1f58

    const/16 v13, 0x1f57

    const/16 v14, 0x2077

    if-eqz p0, :cond_0

    new-instance v15, Lcom/bytedance/msdk/iw/d/s$dq;

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->q()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/bytedance/msdk/iw/d/s$dq;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;)V

    invoke-virtual {v0, v14, v15}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ox()Z

    move-result v1

    invoke-virtual {v0, v13, v1}, Lg/hat;->i(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->dq()Z

    move-result v1

    invoke-virtual {v0, v12, v1}, Lg/hat;->i(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->s()Z

    move-result v1

    invoke-virtual {v0, v11, v1}, Lg/hat;->i(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d()Z

    move-result v1

    invoke-virtual {v0, v10, v1}, Lg/hat;->i(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->p()Z

    move-result v1

    invoke-virtual {v0, v9, v1}, Lg/hat;->i(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->iw()Z

    move-result v1

    invoke-virtual {v0, v8, v1}, Lg/hat;->i(IZ)V

    new-instance v1, Lcom/bytedance/msdk/iw/d/iw;

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/bytedance/msdk/iw/d/iw;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;)V

    invoke-virtual {v0, v7, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x216a

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->mp()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->mn()Z

    move-result v1

    const/16 v2, 0x2165

    invoke-virtual {v0, v2, v1}, Lg/hat;->i(IZ)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/msdk/iw/d/s$dq;

    const/4 v15, 0x0

    invoke-direct {v1, v15}, Lcom/bytedance/msdk/iw/d/s$dq;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;)V

    invoke-virtual {v0, v14, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v13, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {v0, v12, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {v0, v11, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {v0, v10, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {v0, v9, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {v0, v8, v1}, Lg/hat;->i(IZ)V

    new-instance v8, Lcom/bytedance/msdk/iw/d/iw;

    invoke-direct {v8, v15}, Lcom/bytedance/msdk/iw/d/iw;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;)V

    invoke-virtual {v0, v7, v8}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v7, Lcom/bytedance/msdk/iw/d/s$1;

    invoke-direct {v7}, Lcom/bytedance/msdk/iw/d/s$1;-><init>()V

    invoke-virtual {v0, v6, v7}, Lg/hat;->m(ILjava/lang/Object;)V

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v6}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v6}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v6}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v2, 0x2165

    invoke-virtual {v0, v2, v1}, Lg/hat;->i(IZ)V

    :goto_0
    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x210a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const/16 v1, 0x210b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x210c

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x210d

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    new-instance v1, Lcom/bytedance/msdk/iw/d/ia;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->ox()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/iw/d/ia;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;)V

    const/16 v2, 0x2076

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x210e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x210f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->iw()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x2110

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x2111

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->ia()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const/16 v1, 0x2112

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->kk()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const/16 v1, 0x2113

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->o()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lg/hat;->i(IZ)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->l()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->no()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/o;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    return-void
.end method

.method public static dq(Lg/hat;)V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->l()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->no()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/iw/d/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    const/16 v2, 0x211b

    invoke-virtual {p0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->q()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/s;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    const/16 v1, 0x2109

    invoke-virtual {p0, v1, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->no()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lg/hat;->i(IZ)V

    return-void
.end method
