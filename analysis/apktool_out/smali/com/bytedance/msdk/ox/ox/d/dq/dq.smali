.class public Lcom/bytedance/msdk/ox/ox/d/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private d:I

.field private dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

.field private iw:Lcom/bytedance/msdk/api/dq/d;

.field private mn:Lcom/bytedance/msdk/core/no/no;

.field private ox:I

.field private p:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private s:Lcom/bytedance/msdk/ox/s/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/ox/d/dq/ox;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->d:I

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->jy()I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->ox:I

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->mn:Lcom/bytedance/msdk/core/no/no;

    return-void
.end method

.method private dq()Lcom/bytedance/msdk/d/s;
    .locals 3

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->ox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/dq/iw;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/iw;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/bytedance/msdk/ox/dq/s;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/s;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/bytedance/msdk/ox/dq/mn;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/ox/dq/mn;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;Lcom/bytedance/msdk/ox/ox/d/dq/ox;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/bytedance/msdk/ox/dq/s;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/s;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :pswitch_4
    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->ox:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/bytedance/msdk/ox/dq/ia;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/ia;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/bytedance/msdk/ox/dq/s;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/s;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/bytedance/msdk/ox/dq/ia;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/ia;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :pswitch_5
    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->ox:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/bytedance/msdk/ox/dq/mn;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/ox/dq/mn;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;Lcom/bytedance/msdk/ox/ox/d/dq/ox;)V

    return-object v0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/bytedance/msdk/ox/dq/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/ox;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/bytedance/msdk/ox/dq/mn;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/ox/dq/mn;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;Lcom/bytedance/msdk/ox/ox/d/dq/ox;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/bytedance/msdk/ox/dq/mn;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/ox/dq/mn;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;Lcom/bytedance/msdk/ox/ox/d/dq/ox;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/bytedance/msdk/ox/dq/kk;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/kk;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/bytedance/msdk/ox/dq/iw;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/iw;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/bytedance/msdk/ox/dq/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/ox/dq/ox;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/ox/d/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    return-object p0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
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

    const/16 v0, 0x1fac

    const/16 v1, 0x1f4f

    const/16 v2, 0x1f4e

    if-ne p1, v0, :cond_0

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x1fb0

    const/16 v3, 0x206f

    const-class v4, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-ne p1, v0, :cond_1

    invoke-interface {p2, v3, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v0

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    instance-of v1, p1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    new-instance v2, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v2, v0, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x1fab

    if-ne p1, v0, :cond_5

    const-class p1, Ljava/util/List;

    invoke-interface {p2, v3, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/msdk/d/s;

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x1fbf

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq()Lcom/bytedance/msdk/d/s;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 v0, 0x1fae

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v0, 0x1fc8

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    const/16 v0, 0x1fcd

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->wp()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v0, 0x1fc9

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 v0, 0x2022

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->s:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->gh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v0, 0x1fca

    if-ne p1, v0, :cond_c

    const/16 p1, 0x1f6b

    invoke-interface {p2, p1, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->p:Lcom/bykv/vk/openvk/api/proto/Bridge;

    goto :goto_1

    :cond_c
    const/16 v0, 0x2012

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_d
    const/16 v0, 0x4e20

    if-ne p1, v0, :cond_10

    const/16 p1, 0x271a

    invoke-interface {p2, p1, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/16 p1, 0x271b

    const-class v0, Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x2710

    const-class v1, Landroid/content/Context;

    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/content/Context;

    if-eqz v2, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->iw:Lcom/bytedance/msdk/api/dq/d;

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->mn:Lcom/bytedance/msdk/core/no/no;

    if-eqz p2, :cond_f

    iget p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->d:I

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->ox:I

    invoke-static {p1, p2, v0}, Lcom/bytedance/msdk/core/dq/dq/dq;->d(Ljava/lang/String;II)Lcom/bytedance/msdk/core/dq/dq/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->mn:Lcom/bytedance/msdk/core/no/no;

    new-instance v5, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;

    invoke-direct {v5, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)V

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/msdk/core/dq/dq/dq/dq;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/core/dq/dq/dq/d;)V

    goto :goto_1

    :cond_e
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1}, Lcom/bytedance/msdk/core/dq/dq/dq;->d(Lcom/bytedance/msdk/api/dq/d;)V

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1}, Lcom/bytedance/msdk/core/dq/dq/dq;->d(Lcom/bytedance/msdk/api/dq/d;)V

    :cond_10
    :goto_1
    invoke-static {p3}, Lcom/bytedance/msdk/core/cd/dq;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
