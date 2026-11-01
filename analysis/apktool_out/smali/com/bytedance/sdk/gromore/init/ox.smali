.class public Lcom/bytedance/sdk/gromore/init/ox;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile dq:Z

.field private static volatile ox:Lcom/bykv/vk/openvk/api/proto/Result;

.field private static volatile p:Z


# instance fields
.field private iw:J

.field private s:Lcom/bykv/vk/openvk/api/proto/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/gromore/init/ox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/gromore/init/ox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "TMe"

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/gromore/init/ox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u901a\u77e5\u6210\u529f=----notifySdkSuccess"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/gromore/init/ox$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/gromore/init/ox$2;-><init>(Lcom/bytedance/sdk/gromore/init/ox;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "\u901a\u77e5\u6210\u529f\u6216\u5931\u8d25\u4e86\u4e0d\u5728\u901a\u77e5"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(ILjava/lang/String;)V
    .locals 4

    const v0, 0x9c44

    const-string v1, "TMe"

    if-ne p1, v0, :cond_0

    const-string p1, "sdk init call code is 40004 callback success"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/init/ox;->ox()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/ox;->s:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->s:J

    const-string v0, "sdk init call callback fail"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/cpq;->e:Z

    iput p1, v0, Lg/cpq;->d:I

    iput-object p2, v0, Lg/cpq;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/cpq;->h()Lg/gok;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/gromore/init/ox;->ox:Lcom/bykv/vk/openvk/api/proto/Result;

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/init/ox;->s:Lcom/bykv/vk/openvk/api/proto/EventListener;

    sget-object p2, Lcom/bytedance/sdk/gromore/init/ox;->ox:Lcom/bykv/vk/openvk/api/proto/Result;

    invoke-interface {p1, v1, p2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-static {}, Lcom/bytedance/msdk/s/iw;->dq()V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/init/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/init/ox;->ox()V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/gromore/dq/d/dq;)Lcom/bytedance/msdk/api/p/dq;
    .locals 3

    new-instance v0, Lcom/bytedance/msdk/api/p/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/dq$dq;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->iw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Z)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->jy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->d(Z)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->fw()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/init/d;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;)Lcom/bytedance/msdk/api/p/iw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Lcom/bytedance/msdk/api/p/iw;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->cd()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Ljava/util/Map;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->q()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Ljava/util/Map;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->gh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->ox(Z)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->r()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->ig()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->p(Z)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/api/p/ig$dq;

    invoke-direct {v1}, Lcom/bytedance/msdk/api/p/ig$dq;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->mn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ig$dq;->dq(Z)Lcom/bytedance/msdk/api/p/ig$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->ia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ig$dq;->d(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/ig$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ig$dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/ig$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ig$dq;->dq(I)Lcom/bytedance/msdk/api/p/ig$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->no()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ig$dq;->d(Z)Lcom/bytedance/msdk/api/p/ig$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->mp()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ig$dq;->dq([I)Lcom/bytedance/msdk/api/p/ig$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->cd()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/gromore/init/d;->dq(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ig$dq;->dq(Ljava/util/Map;)Lcom/bytedance/msdk/api/p/ig$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig$dq;->dq()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Lcom/bytedance/msdk/api/p/ig;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/api/p/ia$dq;

    invoke-direct {v1}, Lcom/bytedance/msdk/api/p/ia$dq;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->le()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ia$dq;->dq(Z)Lcom/bytedance/msdk/api/p/ia$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ia$dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/ia$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ia$dq;->d(Z)Lcom/bytedance/msdk/api/p/ia$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->wp()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/ia$dq;->ox(Z)Lcom/bytedance/msdk/api/p/ia$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ia$dq;->dq()Lcom/bytedance/msdk/api/p/ia;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Lcom/bytedance/msdk/api/p/ia;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/gromore/dq/d/dq;->d()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/msdk/api/p/dq$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq$dq;->dq()Lcom/bytedance/msdk/api/p/dq;

    move-result-object p1

    return-object p1
.end method

.method private dq(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/gromore/init/ox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/gromore/init/ox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/gromore/init/ox;->d(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "TMe"

    const-string p2, "\u901a\u77e5\u6210\u529f\u6216\u5931\u8d25\u4e86\u4e0d\u5728\u901a\u77e5"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/init/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/init/ox;->d()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/init/ox;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/gromore/init/ox;->dq(ILjava/lang/String;)V

    return-void
.end method

.method private ox()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/ox;->s:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/gromore/init/ox;->p:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/sdk/gromore/init/iw;->s:J

    iget-wide v1, p0, Lcom/bytedance/sdk/gromore/init/ox;->iw:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/gromore/init/ox;->iw:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/bytedance/sdk/gromore/init/iw;->mn:J

    :cond_0
    const-string v1, "TMe"

    const-string v2, "sdk init call callback success"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v1

    iput-boolean v0, v1, Lg/cpq;->e:Z

    invoke-virtual {v1}, Lg/cpq;->h()Lg/gok;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/gromore/init/ox;->ox:Lcom/bykv/vk/openvk/api/proto/Result;

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/ox;->s:Lcom/bykv/vk/openvk/api/proto/EventListener;

    const/4 v1, 0x0

    sget-object v2, Lcom/bytedance/sdk/gromore/init/ox;->ox:Lcom/bykv/vk/openvk/api/proto/Result;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-static {}, Lcom/bytedance/msdk/s/iw;->dq()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/gromore/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;J)V
    .locals 2

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/init/ox;->s:Lcom/bykv/vk/openvk/api/proto/EventListener;

    iput-wide p4, p0, Lcom/bytedance/sdk/gromore/init/ox;->iw:J

    const-string p4, "TMe"

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p5

    invoke-virtual {p2}, Lcom/bytedance/sdk/gromore/dq/d/dq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/bytedance/msdk/core/d;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p5

    invoke-virtual {p5}, Lcom/bytedance/msdk/core/d;->e()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {p2}, Lcom/bytedance/msdk/ia/p/s;->dq(Lcom/bytedance/sdk/gromore/dq/d/dq;)V

    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "init csjm "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/bytedance/sdk/gromore/init/ox;->dq:Z

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p5, Lcom/bytedance/sdk/gromore/init/ox;->dq:Z

    const/4 v1, 0x0

    if-nez p5, :cond_1

    invoke-static {p4, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    sput-boolean p3, Lcom/bytedance/sdk/gromore/init/ox;->dq:Z

    sget-object p3, Lcom/bytedance/sdk/gromore/init/ox;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/msdk/core/mp/dq;->d()V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object p3

    new-instance p4, Lcom/bytedance/sdk/gromore/init/ox$1;

    invoke-direct {p4, p0}, Lcom/bytedance/sdk/gromore/init/ox$1;-><init>(Lcom/bytedance/sdk/gromore/init/ox;)V

    invoke-virtual {p3, p4}, Lcom/bytedance/msdk/core/mp/dq;->dq(Lcom/bytedance/msdk/core/mp/d;)V

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/ox;->dq(Lcom/bytedance/sdk/gromore/dq/d/dq;)Lcom/bytedance/msdk/api/p/dq;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/msdk/api/p/o;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq;)V

    invoke-static {}, Lcom/bytedance/msdk/api/p/o;->p()V

    return-void

    :cond_1
    const-string p1, "init csjm already"

    invoke-static {p4, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    sget-object p1, Lcom/bytedance/sdk/gromore/init/ox;->ox:Lcom/bykv/vk/openvk/api/proto/Result;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/bytedance/sdk/gromore/init/ox;->ox:Lcom/bykv/vk/openvk/api/proto/Result;

    invoke-interface {p3, v1, p1}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void

    :cond_2
    const-string p1, "sdk\u6b63\u5728\u521d\u59cb\u5316...."

    invoke-static {p4, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "init csjm configValueSet is null"

    invoke-static {p4, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/gromore/init/ox;->p:Z

    return v0
.end method
