.class public Lcom/bytedance/msdk/core/dq/s;
.super Lcom/bytedance/msdk/core/dq/d;


# instance fields
.field private ox:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/d;-><init>(Lcom/bytedance/msdk/dq/dq;)V

    return-void
.end method

.method private d(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
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
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

    const/16 p1, 0x1f75

    invoke-virtual {v0, p1, p7}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 p4, 0x1fdf

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public cd()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0x2001

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->cd()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0x1fe1

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->d()I

    move-result v0

    return v0
.end method

.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 33
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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x1fc2

    const/16 v4, 0x9

    const/4 v5, 0x5

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v5, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz v1, :cond_26

    invoke-interface {v1, v2}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    if-eqz v1, :cond_26

    invoke-interface {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v1

    if-ne v1, v4, :cond_26

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz v1, :cond_26

    invoke-interface {v1, v2}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1fb1

    if-ne v1, v3, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v1

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v1

    if-ne v1, v4, :cond_26

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1fc3

    const/16 v6, 0x1f64

    const-class v7, Ljava/util/Map;

    if-ne v1, v3, :cond_6

    iget-object v1, v0, Lcom/bytedance/msdk/core/dq/d;->d:Lcom/bytedance/msdk/dq/dq;

    if-eqz v1, :cond_26

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1f65

    invoke-interface {v2, v3, v7}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, v0, Lcom/bytedance/msdk/core/dq/d;->d:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v3, v0, v1, v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x1fc4

    if-ne v1, v3, :cond_8

    iget-object v1, v0, Lcom/bytedance/msdk/core/dq/d;->d:Lcom/bytedance/msdk/dq/dq;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/core/d/dq;->dq(Ljava/lang/String;)V

    :cond_7
    iget-object v1, v0, Lcom/bytedance/msdk/core/dq/s;->ox:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v1, :cond_26

    const/16 v1, 0x1f66

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    const/16 v3, 0x1f67

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/core/dq/s;->ox:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x1fc5

    if-ne v1, v3, :cond_b

    const/16 v1, 0x1f68

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->floatValue(I)F

    move-result v1

    const/16 v3, 0x1f69

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->floatValue(I)F

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v3

    if-ne v3, v5, :cond_9

    iget-object v3, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    instance-of v4, v3, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v4, :cond_26

    check-cast v3, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {v3, v1, v2}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(FF)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, v0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    instance-of v4, v3, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz v4, :cond_26

    check-cast v3, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    invoke-interface {v3, v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(FF)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v3

    if-ne v3, v4, :cond_26

    iget-object v3, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    instance-of v4, v3, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v4, :cond_26

    check-cast v3, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {v3, v1, v2}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(FF)V

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x1fc6

    const/16 v8, 0x1f4f

    const/16 v9, 0x1f4e

    if-ne v1, v3, :cond_e

    invoke-interface {v2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x1f6a

    const-class v7, Landroid/view/View;

    invoke-interface {v2, v6, v7}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v6

    if-ne v6, v5, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v4

    if-ne v4, v5, :cond_c

    iget-object v4, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    instance-of v5, v4, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v5, :cond_26

    check-cast v4, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {v4, v2, v3, v1}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, v0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    instance-of v5, v4, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    if-eqz v5, :cond_26

    check-cast v4, Lcom/bytedance/msdk/api/p/dq/mn/mn;

    invoke-interface {v4, v2, v3, v1}, Lcom/bytedance/msdk/api/p/dq/mn/mn;->dq(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v5

    if-ne v5, v4, :cond_26

    iget-object v4, v0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    instance-of v5, v4, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v5, :cond_26

    check-cast v4, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {v4, v2, v3, v1}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x1fcc

    const/16 v4, 0x1f78

    if-ne v1, v3, :cond_10

    const/16 v1, 0x1f6d

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1f6e

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1f6f

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v5

    const/16 v8, 0x1f70

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f71

    invoke-interface {v2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1f72

    invoke-interface {v2, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1f73

    invoke-interface {v2, v11}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v11

    const/16 v12, 0x1f74

    invoke-interface {v2, v12}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v12

    const/16 v13, 0x1f75

    const-class v14, Ljava/util/List;

    invoke-interface {v2, v13, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/16 v14, 0x1f76

    invoke-interface {v2, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1f77

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v15

    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1f79

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p1, v6

    const-class v6, Ljava/lang/Object;

    move-object/from16 v17, v4

    const/16 v4, 0x1f64

    invoke-interface {v2, v4, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0x1f7a

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    const/16 v6, 0x1f50

    move-object/from16 v18, v14

    move/from16 v19, v15

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v14

    const/16 v6, 0x1f61

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v6

    move/from16 v20, v6

    const/16 v6, 0x1f7c

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v6

    move/from16 v21, v6

    const/16 v6, 0x1f7d

    move-wide/from16 v22, v14

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    const/16 v15, 0x1f8e

    move-object/from16 v24, v14

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v14

    move-wide/from16 v25, v14

    const/16 v14, 0x1f8f

    invoke-interface {v2, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x20eb

    invoke-interface {v2, v15, v7}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const/16 v15, 0x1f90

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v15

    const/16 v15, 0x1f91

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v15

    const/16 v15, 0x1f92

    move-object/from16 v29, v14

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v14

    move-wide/from16 v30, v14

    const/16 v14, 0x1f7b

    invoke-interface {v2, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v14

    const/16 v15, 0x2167

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v15

    const/16 v15, 0x2169

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/d/s;->op(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/d/s;->i(I)V

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/d/s;->kx(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/bytedance/msdk/d/s;->ir(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/bytedance/msdk/d/s;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/bytedance/msdk/d/s;->r(I)V

    invoke-virtual {v0, v12}, Lcom/bytedance/msdk/d/s;->gh(I)V

    invoke-virtual {v0, v13}, Lcom/bytedance/msdk/d/s;->dq(Ljava/util/List;)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->bl(Ljava/lang/String;)V

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->ia(Z)V

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->i(Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->le(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v1

    const-string v3, "baidu"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "baidu_dislike_info"

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->mp(Ljava/lang/String;)V

    move-wide/from16 v3, v22

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/d/s;->dq(D)V

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->ji(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/d/s;->r(Ljava/lang/String;)V

    move-wide/from16 v3, v25

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/d/s;->d(J)V

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->k(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/bytedance/msdk/d/s;->s(Ljava/util/Map;)V

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->wp(Ljava/lang/String;)V

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->e(Ljava/lang/String;)V

    move-wide/from16 v3, v30

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/d/s;->p(D)V

    invoke-virtual {v0, v14}, Lcom/bytedance/msdk/d/s;->mp(I)V

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->no(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->ox(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x1fcf

    if-ne v1, v3, :cond_11

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_11
    const/16 v3, 0x1fd1

    if-ne v1, v3, :cond_12

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->uh()V

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x1fd2

    if-ne v1, v3, :cond_13

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->xz()V

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x1fb6

    if-ne v1, v3, :cond_14

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->v()V

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x1fb5

    if-ne v1, v3, :cond_15

    invoke-interface {v2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v3, :cond_26

    new-instance v4, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v4, v1, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(Lcom/bytedance/msdk/api/dq;)V

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x1fd6

    if-ne v1, v3, :cond_16

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->yy()V

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x401

    if-ne v1, v3, :cond_17

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz v1, :cond_26

    const/16 v1, 0x1f88

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v3

    const/16 v1, 0x1f89

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v1

    iget-object v5, v0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    invoke-interface {v5, v3, v4, v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(JJ)V

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x1fd8

    if-ne v1, v3, :cond_18

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/d;->dq()V

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x1fd9

    if-ne v1, v3, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x1ffb

    const/16 v5, 0x1f7f

    const/16 v6, 0x1f7e

    if-ne v1, v3, :cond_1a

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz v1, :cond_26

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v8

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v10

    const/16 v1, 0x1f80

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v12

    const/16 v1, 0x1f81

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v13

    iget-object v7, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    const-string v14, ""

    const-string v15, ""

    invoke-interface/range {v7 .. v15}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JJIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x1fdb

    const/16 v8, 0x1f82

    if-ne v1, v3, :cond_1b

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz v1, :cond_26

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    invoke-interface {v3, v5, v6, v1, v2}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x1fdc

    if-ne v1, v3, :cond_1c

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz v1, :cond_26

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    invoke-interface {v3, v1, v2}, Lcom/bytedance/msdk/api/p/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x1fdd

    if-ne v1, v3, :cond_1d

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz v1, :cond_26

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v10

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v12

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v15

    iget-object v9, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    invoke-interface/range {v9 .. v15}, Lcom/bytedance/msdk/api/p/dq/d;->d(JJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x1fde

    if-ne v1, v3, :cond_1e

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    if-eqz v1, :cond_26

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v10

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v12

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v15

    iget-object v9, v0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    invoke-interface/range {v9 .. v15}, Lcom/bytedance/msdk/api/p/dq/d;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x1fe0

    if-ne v1, v3, :cond_1f

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->yy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_1f
    const/16 v3, 0x17b5

    if-ne v1, v3, :cond_20

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->yo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_20
    const/16 v3, 0x1ff9

    if-ne v1, v3, :cond_21

    iget-object v1, v0, Lcom/bytedance/msdk/core/dq/s;->ox:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq()V

    goto :goto_0

    :cond_21
    const/16 v3, 0x1ff8

    if-ne v1, v3, :cond_22

    iget-object v1, v0, Lcom/bytedance/msdk/core/dq/s;->ox:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->d()V

    goto :goto_0

    :cond_22
    const/16 v3, 0x2004

    if-ne v1, v3, :cond_23

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->mc()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_23
    const/16 v3, 0x2005

    if-ne v1, v3, :cond_24

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->kk:Lcom/bytedance/msdk/api/p/dq/p;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/p;->dq()V

    goto :goto_0

    :cond_24
    const/16 v3, 0x2023

    if-ne v1, v3, :cond_25

    if-eqz v2, :cond_26

    const/16 v1, 0x1f8b

    invoke-interface {v2, v1, v7}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    goto :goto_0

    :cond_25
    const/16 v3, 0x17db

    if-ne v1, v3, :cond_26

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->o:Lcom/bytedance/msdk/api/p/dq/mn/o;

    if-eqz v1, :cond_26

    const/16 v1, 0x4e57

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    iget-object v2, v0, Lcom/bytedance/msdk/d/s;->o:Lcom/bytedance/msdk/api/p/dq/mn/o;

    invoke-interface {v2, v1}, Lcom/bytedance/msdk/api/p/dq/mn/o;->dq(I)V

    :cond_26
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/bytedance/msdk/core/cd/dq;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
    .locals 0
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
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-super/range {p0 .. p7}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/msdk/core/dq/s;->d(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 2

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/s;->ox:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p2, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    const/16 v0, 0x4e41

    invoke-virtual {p2, v0, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class v0, Ljava/lang/Void;

    const/16 v1, 0x17c5

    invoke-interface {p1, v1, p2, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x2000

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public fw()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x17cd

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public gh()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

.method public i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/util/Map;

    const/16 v3, 0x204d

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "imgUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v2, "valid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v2, "duration"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/bytedance/msdk/core/dq/s$1;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/msdk/core/dq/s$1;-><init>(Lcom/bytedance/msdk/core/dq/s;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object v0

    return-object v0
.end method

.method public ig()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

.method public iw()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x1fd3

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->iw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jy()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fff

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->keys()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->keys()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x1fb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v2, 0x0

    const-class v3, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    invoke-interface {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.method public le()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gdt"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_adapter_gdt_logo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/r;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_adapter_ks_logo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/r;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_adapter_baidu_logo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/r;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const-class v2, Landroid/graphics/Bitmap;

    const/16 v3, 0x204b

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :cond_3
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->le()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public mp()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x1fe3

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->mp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public no()V
    .locals 4

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->no()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x17c3

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Boolean;

    const/16 v2, 0x1fc7

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->o()Z

    move-result v0

    return v0
.end method

.method public ox()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0x1fe2

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->d()I

    move-result v0

    return v0
.end method

.method public q()Lcom/bytedance/msdk/api/p/dq/mn/iw;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2080

    const-class v3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/iw;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)Lcom/bytedance/msdk/api/p/dq/ox/p;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public r()D
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Double;

    const/16 v3, 0x204c

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->r()D

    move-result-wide v0

    return-wide v0
.end method
