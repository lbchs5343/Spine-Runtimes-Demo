.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/q$15;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "Lcom/bykv/vk/openvk/preload/dq/no;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    return-void
.end method

.method private d(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Lcom/bykv/vk/openvk/preload/dq/no;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$24;->dq:[I

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/q;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/q;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox()V

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$15;->d(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/dq/q;->dq(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/dq/no;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/kk;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/kk;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq()V

    :goto_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$15;->d(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/kk;->dq(Lcom/bykv/vk/openvk/preload/dq/no;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no()V

    sget-object p1, Lcom/bykv/vk/openvk/preload/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/mp;

    return-object p1

    :pswitch_3
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/f;

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/mn;

    invoke-direct {v1, p1}, Lcom/bykv/vk/openvk/preload/dq/d/mn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/f;-><init>(Ljava/lang/Number;)V

    return-object v0

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

.method private dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Lcom/bykv/vk/openvk/preload/dq/no;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_a

    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/dq/mp;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/dq/f;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/dq/no;->mn()Lcom/bykv/vk/openvk/preload/dq/f;

    move-result-object p2

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/dq/f;->dq:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/dq/f;->dq()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq(Ljava/lang/Number;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/dq/f;->iw()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq(Z)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/dq/f;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->d(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_3
    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/dq/kk;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/bykv/vk/openvk/preload/dq/kk;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/dq/kk;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/no;

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$15;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Lcom/bykv/vk/openvk/preload/dq/no;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->d()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a JSON Array: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/dq/q;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    if-eqz v0, :cond_8

    check-cast p2, Lcom/bykv/vk/openvk/preload/dq/q;

    iget-object p2, p2, Lcom/bykv/vk/openvk/preload/dq/q;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/dq/d/ia;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/no;

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$15;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Lcom/bykv/vk/openvk/preload/dq/no;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not a JSON Object: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void
.end method


# virtual methods
.method public final synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$15;->d(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/bykv/vk/openvk/preload/dq/no;

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$15;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Lcom/bykv/vk/openvk/preload/dq/no;)V

    return-void
.end method
