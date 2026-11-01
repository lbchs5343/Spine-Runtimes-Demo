.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final dq:Lcom/bykv/vk/openvk/preload/dq/i;


# instance fields
.field private final d:Lcom/bykv/vk/openvk/preload/dq/iw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;->dq:Lcom/bykv/vk/openvk/preload/dq/i;

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/iw;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;->d:Lcom/bykv/vk/openvk/preload/dq/iw;

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia$2;->dq:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/ia;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox()V

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq()V

    :goto_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;->d:Lcom/bykv/vk/openvk/preload/dq/iw;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/ia;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    return-void
.end method
