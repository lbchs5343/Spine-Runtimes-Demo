.class final Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field dq:Ljava/lang/String;

.field ia:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

.field iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;",
            ">;"
        }
    .end annotation
.end field

.field kk:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

.field mn:I

.field o:Ljava/lang/Object;

.field ox:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

.field p:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

.field s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(I)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->mn:I

    return-object p0
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/d$d;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->kk:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

    return-object p0
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->p:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/kk;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->ia:Lcom/bykv/vk/openvk/component/video/dq/d/kk;

    return-object p0
.end method

.method public dq(Ljava/lang/Object;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawKey == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/util/List;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;",
            ">;)",
            "Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->iw:Ljava/util/List;

    return-object p0
.end method

.method public dq()Lcom/bykv/vk/openvk/component/video/dq/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->p:Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->s:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/d;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/d;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
