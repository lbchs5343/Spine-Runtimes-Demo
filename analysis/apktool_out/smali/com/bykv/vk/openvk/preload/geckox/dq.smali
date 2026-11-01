.class public Lcom/bykv/vk/openvk/preload/geckox/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/dq$dq;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/dq$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/dq;-><init>()V

    return-void
.end method

.method public static dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/dq;
    .locals 3

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/s;->d:Landroid/content/Context;

    sget-object p0, Lcom/bykv/vk/openvk/preload/geckox/s;->dq:Ljava/io/File;

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/s;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "gecko"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/s;->dq:Ljava/io/File;

    :cond_0
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/s$dq;->dq()Lcom/bykv/vk/openvk/preload/geckox/s;

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/dq$dq;->dq()Lcom/bykv/vk/openvk/preload/geckox/dq;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lcom/bykv/vk/openvk/preload/geckox/d;)V
    .locals 0

    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/geckox/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/d;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/s;->ox:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dq()Lcom/bykv/vk/openvk/preload/ox/dq/d;
    .locals 1

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/s$dq;->dq()Lcom/bykv/vk/openvk/preload/geckox/s;

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/s;->dq()Lcom/bykv/vk/openvk/preload/ox/dq/d;

    move-result-object v0

    return-object v0
.end method

.method public dq(JLjava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/q/dq;Ljava/util/Set;Lcom/bykv/vk/openvk/preload/geckox/mp/dq;Lcom/bykv/vk/openvk/preload/geckox/o/dq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/q/dq;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bykv/vk/openvk/preload/geckox/mp/dq;",
            "Lcom/bykv/vk/openvk/preload/geckox/o/dq;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/s$dq;->dq()Lcom/bykv/vk/openvk/preload/geckox/s;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/s;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/p$dq;-><init>(Landroid/content/Context;)V

    const-string v1, "4ab312f7094810afa84659d3dc6cf0fe"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->d:Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->ox:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->kk:Ljava/lang/Long;

    iput-object p3, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->no:Ljava/lang/String;

    const-string p1, "9999999.0.0"

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->o:Ljava/lang/String;

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq$dq;

    invoke-direct {p1}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq$dq;-><init>()V

    const/16 p2, 0x14

    iput p2, p1, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq$dq;->dq:I

    sget-object p2, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->ox:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

    if-nez p2, :cond_0

    sget-object p2, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->dq:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

    :cond_0
    iput-object p2, p1, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq$dq;->d:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;

    new-instance p2, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;-><init>(Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq$dq;B)V

    iput-object p2, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->ia:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    sget-object p1, Lcom/bykv/vk/openvk/preload/geckox/s;->dq:Ljava/io/File;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->mp:Ljava/io/File;

    iput-boolean p3, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->mn:Z

    sget-object p1, Lcom/bykv/vk/openvk/preload/geckox/s;->ox:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->ig:Ljava/lang/String;

    iput-object p4, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->iw:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    iput-object p6, v0, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/mp/dq;

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-direct {p1, v0, p3}, Lcom/bykv/vk/openvk/preload/geckox/p;-><init>(Lcom/bykv/vk/openvk/preload/geckox/p$dq;B)V

    iget-object p2, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    if-eqz p2, :cond_1

    sput-object p2, Lcom/bykv/vk/openvk/preload/geckox/utils/mn;->dq:Landroid/content/Context;

    :cond_1
    new-instance p2, Lcom/bykv/vk/openvk/preload/geckox/ox;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox;-><init>(Lcom/bykv/vk/openvk/preload/geckox/p;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    new-instance p6, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;

    invoke-direct {p6, p5}, Lcom/bykv/vk/openvk/preload/geckox/ig/dq$ox;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "default"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox;->dq(Ljava/util/Map;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p;->d()Ljava/util/concurrent/Executor;

    move-result-object p4

    new-instance p5, Lcom/bykv/vk/openvk/preload/geckox/ox$1;

    invoke-direct {p5, p2, p3, p7, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox$1;-><init>(Lcom/bykv/vk/openvk/preload/geckox/ox;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/o/dq;Ljava/util/Map;)V

    invoke-interface {p4, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target keys not in deployments keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deployments keys not in local keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "groupType == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "access key empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method
