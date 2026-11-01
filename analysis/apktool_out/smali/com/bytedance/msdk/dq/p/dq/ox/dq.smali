.class public Lcom/bytedance/msdk/dq/p/dq/ox/dq;
.super Lcom/bytedance/msdk/api/p/dq/d/p/dq;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

.field private ox:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/d/d/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    iput-object p2, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->gx()V

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->by()V

    :cond_0
    return-void
.end method

.method private by()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/dq/p/dq/ox/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/dq/p/dq/ox/dq$1;-><init>(Lcom/bytedance/msdk/dq/p/dq/ox/dq;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->dq(Lcom/bytedance/msdk/api/p/dq/d/ia/mn;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/p/dq/ox/dq;)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object p0
.end method

.method private dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
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

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 p4, 0x1fdf

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private gx()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    if-eqz v1, :cond_0

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

    invoke-virtual {v0, v12, v13}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->d(D)V

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq(Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ox(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->p(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->d(I)V

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ox(I)V

    invoke-virtual {v0, v15}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->s(Ljava/lang/String;)V

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->iw(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->p(I)V

    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->s(I)V

    move-wide/from16 v2, v21

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ox(D)V

    move-object/from16 v10, v18

    invoke-virtual {v0, v10}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->dq(Ljava/util/List;)V

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->mn(Ljava/lang/String;)V

    move/from16 v2, v17

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->dq(Z)V

    move/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->iw(I)V

    move/from16 v2, v23

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->mn(I)V

    if-eqz v1, :cond_0

    new-instance v2, Lcom/bytedance/msdk/dq/p/dq/p/p;

    invoke-direct {v2, v1}, Lcom/bytedance/msdk/dq/p/dq/p/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->dq(Lcom/bytedance/msdk/api/p/dq/mn/d;)V

    :cond_0
    return-void
.end method

.method private uh()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->q()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    const/16 v0, 0x1fc6

    const/16 v1, 0x1f4f

    const/16 v2, 0x1f4e

    if-ne p1, v0, :cond_0

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f6a

    const-class v2, Landroid/view/View;

    invoke-interface {p2, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->dq(Landroid/view/View;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x1fc5

    if-ne p1, v0, :cond_1

    const/16 p1, 0x1f68

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->floatValue(I)F

    move-result p1

    const/16 v0, 0x1f69

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->floatValue(I)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->dq(FF)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x1fc2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->f()V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x1fb1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->fw()V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1fd1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->cd()V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1fd2

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->gh()V

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x1fd6

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->r()V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x1fb6

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->i()V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x1fb5

    if-ne p1, v0, :cond_8

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/dq;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x1fda

    if-ne p1, v0, :cond_9

    const/16 p1, 0x1f88

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v0

    const/16 p1, 0x1f89

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->dq(JJ)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x1ff9

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->le()V

    goto :goto_0

    :cond_a
    const/16 v0, 0x1ff8

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->k()V

    goto :goto_0

    :cond_b
    const/16 v0, 0x17c5

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->by()V

    goto :goto_0

    :cond_c
    const/16 v0, 0x1fae

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->uh()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_d
    const/16 v0, 0x1fc8

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->ob()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_e
    const/16 v0, 0x1fe0

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
    const/16 v0, 0x2022

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_10
    const/16 v0, 0x1fc4

    if-ne p1, v0, :cond_11

    const/16 p1, 0x1f66

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    const/16 v0, 0x1f67

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->dq(ILjava/lang/String;)V

    :cond_11
    :goto_0
    invoke-static {p3}, Lcom/bytedance/msdk/core/cd/dq;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Landroid/view/View;

    const/16 v3, 0x17c1

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x17c3

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 7
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
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            ")V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->o()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    return-void
.end method

.method public dq(ZDILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x20d6

    invoke-virtual {v0, v1, p1}, Lg/hat;->i(IZ)V

    const/16 p1, 0x20d7

    invoke-virtual {v0, p1, p2, p3}, Lg/hat;->j(ID)V

    const/16 p1, 0x20d8

    invoke-virtual {v0, p1, p4}, Lg/hat;->o(II)V

    const/16 p1, 0x1f8b

    invoke-virtual {v0, p1, p5}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 p4, 0x2021

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ia()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

.method public iw()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fd4

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public kk()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x2024

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/dq/d/ia/dq;->kk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mn()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fad

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ox()Lcom/bytedance/msdk/api/p/dq/ox/p;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

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
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->ox()Lcom/bytedance/msdk/api/p/dq/ox/p;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

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
    invoke-super {p0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->p()Z

    move-result v0

    return v0
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/ox/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fd5

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
