.class public Lcom/bytedance/sdk/component/iw/ox/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/mp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/iw/ox/s$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private dq:Lcom/bytedance/sdk/component/iw/ig;

.field private ia:Lcom/bytedance/sdk/component/iw/d;

.field private iw:Lcom/bytedance/sdk/component/iw/ox;

.field private kk:Lcom/bytedance/sdk/component/iw/i;

.field private mn:Lcom/bytedance/sdk/component/iw/fw;

.field private ox:Lcom/bytedance/sdk/component/iw/p;

.field private p:Lcom/bytedance/sdk/component/iw/cd;

.field private s:Lcom/bytedance/sdk/component/iw/gh;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/iw/ox/s$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->dq(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->dq:Lcom/bytedance/sdk/component/iw/ig;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->d(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->ox(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->ox:Lcom/bytedance/sdk/component/iw/p;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->p(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->p:Lcom/bytedance/sdk/component/iw/cd;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->s(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->s:Lcom/bytedance/sdk/component/iw/gh;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->iw(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->iw:Lcom/bytedance/sdk/component/iw/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->mn(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->ia:Lcom/bytedance/sdk/component/iw/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->ia(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/fw;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->mn:Lcom/bytedance/sdk/component/iw/fw;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->kk(Lcom/bytedance/sdk/component/iw/ox/s$dq;)Lcom/bytedance/sdk/component/iw/i;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/s;->kk:Lcom/bytedance/sdk/component/iw/i;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/iw/ox/s$dq;Lcom/bytedance/sdk/component/iw/ox/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/s;-><init>(Lcom/bytedance/sdk/component/iw/ox/s$dq;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/iw/ox/s;
    .locals 0

    new-instance p0, Lcom/bytedance/sdk/component/iw/ox/s$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/ox/s$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/iw/ox/s$dq;->dq()Lcom/bytedance/sdk/component/iw/ox/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/iw/ig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->dq:Lcom/bytedance/sdk/component/iw/ig;

    return-object v0
.end method

.method public ia()Lcom/bytedance/sdk/component/iw/fw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->mn:Lcom/bytedance/sdk/component/iw/fw;

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/component/iw/gh;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->s:Lcom/bytedance/sdk/component/iw/gh;

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/component/iw/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->ia:Lcom/bytedance/sdk/component/iw/d;

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/iw/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->iw:Lcom/bytedance/sdk/component/iw/ox;

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/iw/i;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->kk:Lcom/bytedance/sdk/component/iw/i;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/iw/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->ox:Lcom/bytedance/sdk/component/iw/p;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/iw/cd;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/s;->p:Lcom/bytedance/sdk/component/iw/cd;

    return-object v0
.end method
