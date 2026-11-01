.class public abstract Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private s()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v0

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    const/4 p3, 0x2

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq(JII)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->p()V

    goto :goto_0

    :pswitch_3
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->ox(J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->ox()V

    goto :goto_0

    :pswitch_5
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->d(J)V

    goto :goto_0

    :pswitch_6
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq(J)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->d()V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x27935
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract d()V
.end method

.method public abstract d(J)V
.end method

.method public abstract dq()Ljava/lang/String;
.end method

.method public abstract dq(II)V
.end method

.method public abstract dq(J)V
.end method

.method public abstract dq(JII)V
.end method

.method public abstract ox()V
.end method

.method public abstract ox(J)V
.end method

.method public abstract p()V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->s()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
