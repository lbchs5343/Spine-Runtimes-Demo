.class public final Lcom/bytedance/sdk/component/ox/d/k$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field public bl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cd:Lcom/bytedance/sdk/component/ox/d/d;

.field d:Ljava/net/Proxy;

.field dq:Lcom/bytedance/sdk/component/ox/d/q;

.field public e:I

.field f:Lcom/bytedance/sdk/component/ox/d/mn;

.field fw:Lcom/bytedance/sdk/component/ox/d/d;

.field gh:Lcom/bytedance/sdk/component/ox/d/o;

.field h:I

.field i:Z

.field ia:Ljava/net/ProxySelector;

.field ig:Ljavax/net/SocketFactory;

.field public ir:Ljava/util/concurrent/TimeUnit;

.field final iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;"
        }
    .end annotation
.end field

.field public ji:Landroid/os/Bundle;

.field jy:Ljavax/net/ssl/HostnameVerifier;

.field k:Z

.field kk:Lcom/bytedance/sdk/component/ox/d/mp;

.field public kx:I

.field le:Z

.field mn:Lcom/bytedance/sdk/component/ox/d/f$dq;

.field mp:Ljavax/net/ssl/SSLSocketFactory;

.field public n:Ljava/util/concurrent/TimeUnit;

.field no:Lcom/bytedance/sdk/component/ox/d/dq/dq/iw;

.field o:Lcom/bytedance/sdk/component/ox/d/ox;

.field public op:Ljava/util/concurrent/TimeUnit;

.field public ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/no;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/bytedance/sdk/component/ox/d/dq/kk/ox;

.field r:Lcom/bytedance/sdk/component/ox/d/jy;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;"
        }
    .end annotation
.end field

.field public wp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/k$dq;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->s:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->iw:Ljava/util/List;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->n:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->op:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->ir:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/q;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ox/d/q;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->dq:Lcom/bytedance/sdk/component/ox/d/q;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/k;->dq:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->ox:Ljava/util/List;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/k;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->p:Ljava/util/List;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/f;->dq:Lcom/bytedance/sdk/component/ox/d/f;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/f;->dq(Lcom/bytedance/sdk/component/ox/d/f;)Lcom/bytedance/sdk/component/ox/d/f$dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->mn:Lcom/bytedance/sdk/component/ox/d/f$dq;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->ia:Ljava/net/ProxySelector;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/mp;->dq:Lcom/bytedance/sdk/component/ox/d/mp;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->kk:Lcom/bytedance/sdk/component/ox/d/mp;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->ig:Ljavax/net/SocketFactory;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/dq/kk/s;->dq:Lcom/bytedance/sdk/component/ox/d/dq/kk/s;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->jy:Ljavax/net/ssl/HostnameVerifier;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/mn;->dq:Lcom/bytedance/sdk/component/ox/d/mn;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->f:Lcom/bytedance/sdk/component/ox/d/mn;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/d;->dq:Lcom/bytedance/sdk/component/ox/d/d;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->fw:Lcom/bytedance/sdk/component/ox/d/d;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->cd:Lcom/bytedance/sdk/component/ox/d/d;

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/o;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/d/o;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->gh:Lcom/bytedance/sdk/component/ox/d/o;

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/jy;->dq:Lcom/bytedance/sdk/component/ox/d/jy;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->r:Lcom/bytedance/sdk/component/ox/d/jy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->i:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->le:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->k:Z

    const/16 p1, 0x2710

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->wp:I

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->e:I

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->kx:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->h:I

    return-void
.end method


# virtual methods
.method public d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/k$dq;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->e:I

    return-object p0
.end method

.method public dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/k$dq;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->wp:I

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/r;)Lcom/bytedance/sdk/component/ox/d/k$dq;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/util/Set;)Lcom/bytedance/sdk/component/ox/d/k$dq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/ox/d/k$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->bl:Ljava/util/Set;

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/k;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/k;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/k;-><init>(Lcom/bytedance/sdk/component/ox/d/k$dq;)V

    return-object v0
.end method

.method public ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/k$dq;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/k$dq;->kx:I

    return-object p0
.end method
