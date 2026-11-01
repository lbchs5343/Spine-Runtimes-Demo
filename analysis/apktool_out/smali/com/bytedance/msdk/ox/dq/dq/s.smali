.class public Lcom/bytedance/msdk/ox/dq/dq/s;
.super Lcom/bytedance/msdk/ox/dq/dq/ia;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/dq/dq/ia;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    const/16 v0, 0x1f62

    invoke-virtual {p1, v0, p0}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class v0, Ljava/lang/Void;

    const/16 v1, 0x1fbf

    invoke-interface {p2, v1, p1, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->ix()V

    :cond_0
    return-void
.end method

.method private ix()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1f46

    const-class v3, Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v3, 0x1f6d

    invoke-interface {v1, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f6e

    invoke-interface {v1, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f70

    invoke-interface {v1, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f71

    invoke-interface {v1, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f72

    invoke-interface {v1, v7}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f73

    invoke-interface {v1, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v8

    const/16 v9, 0x1f74

    invoke-interface {v1, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v9

    const/16 v10, 0x1f75

    const-class v11, Ljava/util/List;

    invoke-interface {v1, v10, v11}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/16 v11, 0x1f76

    invoke-interface {v1, v11}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1f50

    invoke-interface {v1, v12}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v12

    const/16 v14, 0x1f61

    invoke-interface {v1, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v14

    const/16 v15, 0x1f7c

    invoke-interface {v1, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v15

    move/from16 v16, v15

    const/16 v15, 0x1f7d

    invoke-interface {v1, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v14

    const/16 v14, 0x1f92

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-interface {v1, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v10

    const/16 v14, 0x20e4

    invoke-interface {v1, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v14

    move-object/from16 v20, v6

    const/16 v6, 0x20e5

    invoke-interface {v1, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v6

    move-wide/from16 v21, v10

    const/16 v10, 0x1f7b

    invoke-interface {v1, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v10

    const/16 v11, 0x207b

    move/from16 v23, v10

    const-class v10, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v1, v11, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const-wide/16 v10, 0x0

    cmpl-double v24, v12, v10

    if-lez v24, :cond_0

    invoke-virtual {v0, v12, v13}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/d/s;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/d/s;->op(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/d/s;->kx(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/bytedance/msdk/d/s;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/bytedance/msdk/d/s;->gh(I)V

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/d/s;->r(I)V

    invoke-virtual {v0, v15}, Lcom/bytedance/msdk/d/s;->ji(Ljava/lang/String;)V

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->bl(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcom/bytedance/msdk/d/s;->le(I)V

    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/d/s;->k(I)V

    move-wide/from16 v2, v21

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/d/s;->p(D)V

    move-object/from16 v10, v18

    invoke-virtual {v0, v10}, Lcom/bytedance/msdk/d/s;->dq(Ljava/util/List;)V

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->ir(Ljava/lang/String;)V

    move/from16 v2, v17

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    move/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->ig(I)V

    move/from16 v2, v23

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->mp(I)V

    if-eqz v1, :cond_1

    new-instance v2, Lcom/bytedance/msdk/dq/p/dq/p/p;

    invoke-direct {v2, v1}, Lcom/bytedance/msdk/dq/p/dq/p/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->le(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->s()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/d/s;->d(J)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->iw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->k(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->ia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->wp(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->mn()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->s(Ljava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/16 v3, 0x1fc6

    const-string v4, " msg:"

    const/16 v5, 0x1f4f

    const/16 v6, 0x1f4e

    const-string v7, "TTMediationSDK"

    if-ne p1, v3, :cond_0

    invoke-interface {p2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    invoke-interface {p2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1f6a

    const-class v6, Landroid/view/View;

    invoke-interface {p2, v5, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Adn custom feed ad : callNativeRenderFail code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " view"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1fc5

    if-ne p1, v3, :cond_1

    const/16 v1, 0x1f68

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->floatValue(I)F

    move-result v1

    const/16 v3, 0x1f69

    invoke-interface {p2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->floatValue(I)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adn custom feed ad : callNativeRenderSuccess width:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(FF)V

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1fc2

    if-ne p1, v3, :cond_2

    const-string v1, "Adn custom feed ad : callNativeAdClick"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->u()V

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1fb1

    if-ne p1, v3, :cond_3

    const-string v1, "Adn custom feed ad : callNativeAdShow"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->kf()V

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1fd1

    if-ne p1, v3, :cond_4

    const-string v1, "Adn custom feed ad : callNativeVideoStart"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->dn()V

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x1fd2

    if-ne p1, v3, :cond_5

    const-string v1, "Adn custom feed ad : callNativeVideoPause"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->kr()V

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1fd6

    if-ne p1, v3, :cond_6

    const-string v1, "Adn custom feed ad : callNativeVideoResume"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->el()V

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x1fb6

    if-ne p1, v3, :cond_7

    const-string v1, "Adn custom feed ad : callNativeVideoCompleted"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->fa()V

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x1fb5

    if-ne p1, v3, :cond_8

    invoke-interface {p2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    invoke-interface {p2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Adn custom feed ad : callNativeVideoError code:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bytedance/msdk/api/p/dq/d/dq;

    invoke-direct {v3, v1, v2}, Lcom/bytedance/msdk/api/p/dq/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x1fda

    if-ne p1, v3, :cond_9

    const/16 v1, 0x1f88

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v3

    const/16 v1, 0x1f89

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v1

    const-string v5, "Adn custom feed ad : callNativeVideoError current:"

    const-string v6, " duration:"

    invoke-static {v3, v4, v5, v6}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(JJ)V

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x1fd8

    if-ne p1, v3, :cond_a

    const-string v1, "Adn custom feed ad : callNativeOnIdle"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->hg()V

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x1ffb

    const-string v4, " curlBytes:"

    const/16 v5, 0x1f7f

    const/16 v6, 0x1f7e

    if-ne p1, v3, :cond_b

    invoke-interface {p2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v8

    invoke-interface {p2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    const/16 v1, 0x1f80

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    const/16 v1, 0x1f81

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    const-string v1, "Adn custom feed ad : callNativeOnDownloadActive totalBytes:"

    invoke-static {v8, v9, v1, v4}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v5

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-wide v1, v8

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x1fde

    const-string v3, " fileName:"

    const-string v8, " appName:"

    const/16 v9, 0x1f78

    const/16 v10, 0x1f82

    if-ne p1, v0, :cond_c

    invoke-interface {p2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v0

    invoke-interface {p2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    invoke-interface {p2, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "Adn custom feed ad : callNativeOnDownloadPaused totalBytes:"

    invoke-static {v0, v1, v9, v4}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v5

    move-object v5, v10

    move-object v6, v2

    move-wide v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/ox/dq/dq/s;->d(JJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x1fdd

    if-ne p1, v0, :cond_d

    invoke-interface {p2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v0

    invoke-interface {p2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    invoke-interface {p2, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "Adn custom feed ad : callNativeOnDownloadFailed totalBytes:"

    invoke-static {v0, v1, v9, v4}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v5

    move-object v5, v10

    move-object v6, v2

    move-wide v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/ox/dq/dq/s;->ox(JJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x1fdb

    if-ne p1, v4, :cond_e

    invoke-interface {p2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v4

    invoke-interface {p2, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Adn custom feed ad : callNativeOnDownloadFinished totalBytes:"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x1fdc

    if-ne p1, v3, :cond_f

    invoke-interface {p2, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adn custom feed ad : callNativeOnDownloadFinished  fileName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x1ff9

    if-ne p1, v3, :cond_10

    const-string v1, "Adn custom feed ad : callNativeDislikeShow"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->uo()V

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x1ff8

    if-ne p1, v3, :cond_11

    const-string v1, "Adn custom feed ad : callNativeDislikeCancel"

    invoke-static {v7, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/dq/s;->gv()V

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x17c5

    if-eq p1, v3, :cond_16

    const/16 v3, 0x1fae

    if-ne p1, v3, :cond_12

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->xx()Z

    move-result v1

    const-string v2, "Adn custom feed ad : isClientBiddingAd :"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_12
    const/16 v3, 0x1fc8

    if-ne p1, v3, :cond_13

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v1

    const-string v2, "Adn custom feed ad : isServerBiddingAd :"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_13
    const/16 v3, 0x1fe0

    if-ne p1, v3, :cond_14

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->yy()Z

    move-result v1

    const-string v2, "Adn custom feed ad : isUseCustomVideo :"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_14
    const/16 v3, 0x2022

    if-ne p1, v3, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v1

    const-string v2, "Adn custom feed ad : getBiddingType :"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_15
    const/16 v3, 0x1fc4

    if-ne p1, v3, :cond_16

    const/16 v1, 0x1f66

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    const/16 v3, 0x1f67

    invoke-interface {p2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adn custom feed ad : callNativeDislikeSelected postion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/msdk/ox/dq/dq/s;->dq(ILjava/lang/String;)V

    :cond_16
    :goto_0
    invoke-static {p3}, Lcom/bytedance/msdk/core/cd/dq;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public ce()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fd5

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dn()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->uh()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e41

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/16 v2, 0x17b8

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p1, Lcom/bytedance/msdk/ox/dq/dq/s$1;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/msdk/ox/dq/dq/s$1;-><init>(Lcom/bytedance/msdk/ox/dq/dq/s;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public dq(JJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(JJ)V

    :cond_0
    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JJIILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e41

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f83

    invoke-virtual {v0, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f84

    invoke-virtual {v0, p1, p3}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f85

    invoke-virtual {v0, p1, p4}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f86

    invoke-virtual {v0, p1, p5}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f87

    invoke-static {p6}, Lcom/bytedance/msdk/api/p/dq/mn/no;->dq(Lcom/bytedance/msdk/api/p/dq/mn/no;)Lcom/bytedance/msdk/dq/p/d/dq;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 p4, 0x1fdf

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    const v2, 0xbf74

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/dq;->dq()I

    move-result v4

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/dq;->d()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_2
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(ZDILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq(ZDILjava/util/Map;)V

    move-object v0, p5

    move p5, p4

    move-wide p3, p2

    move p2, p1

    move-object p1, p0

    iget-object v1, p1, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/16 v2, 0x20d6

    invoke-virtual {v1, v2, p2}, Lg/hat;->i(IZ)V

    const/16 p2, 0x20d7

    invoke-virtual {v1, p2, p3, p4}, Lg/hat;->j(ID)V

    const/16 p2, 0x20d8

    invoke-virtual {v1, p2, p5}, Lg/hat;->o(II)V

    const/16 p2, 0x1f8b

    invoke-virtual {v1, p2, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p2, p1, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p3

    const-class p4, Ljava/lang/Void;

    const/16 p5, 0x2021

    invoke-interface {p2, p5, p3, p4}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public el()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->yy()V

    :cond_0
    return-void
.end method

.method public er()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fd4

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public fa()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->v()V

    :cond_0
    return-void
.end method

.method public gh()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Landroid/view/View;

    const/16 v3, 0x1814

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->gh()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public gv()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->d()V

    :cond_0
    return-void
.end method

.method public hg()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d;->dq()V

    :cond_0
    return-void
.end method

.method public ig()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Landroid/view/View;

    const/16 v3, 0x17c1

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->ig()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public kf()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/dq/dq/s$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/dq/dq/s$3;-><init>(Lcom/bytedance/msdk/ox/dq/dq/s;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/dq/dq/ia;->d(Lcom/bytedance/msdk/ox/dq/dq/dq;)V

    return-void
.end method

.method public kr()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->op()Lcom/bytedance/msdk/api/p/dq/mn/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->xz()V

    :cond_0
    return-void
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    const/16 v3, 0x1fb9

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public mp()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x2024

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->mp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1fc7

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->o()Z

    move-result v0

    return v0
.end method

.method public ox(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ir()Lcom/bytedance/msdk/api/p/dq/d;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/msdk/api/p/dq/d;->d(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fad

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public q()Lcom/bytedance/msdk/api/p/dq/mn/iw;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/16 v3, 0x2080

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/iw;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)Lcom/bytedance/msdk/api/p/dq/ox/p;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->q()Lcom/bytedance/msdk/api/p/dq/mn/iw;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/dq/dq/s$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/dq/dq/s$2;-><init>(Lcom/bytedance/msdk/ox/dq/dq/s;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/dq/dq/ia;->dq(Lcom/bytedance/msdk/ox/dq/dq/dq;)V

    return-void
.end method

.method public uo()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq()V

    :cond_0
    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
