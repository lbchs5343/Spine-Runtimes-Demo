.class public Lcom/bytedance/sdk/component/d/dq/ig;
.super Lcom/bytedance/sdk/component/d/dq/ia;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/d/dq/ig$dq;
    }
.end annotation


# static fields
.field static final ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/mp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:J

.field public dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/kk;",
            ">;"
        }
    .end annotation
.end field

.field public ig:Landroid/os/Bundle;

.field public iw:J

.field public kk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/mp;",
            ">;"
        }
    .end annotation
.end field

.field public mn:Ljava/util/concurrent/TimeUnit;

.field public no:Lcom/bytedance/sdk/component/ox/d/k$dq;

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ox:Ljava/util/concurrent/TimeUnit;

.field public p:J

.field public s:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bytedance/sdk/component/d/dq/mp;

    sget-object v1, Lcom/bytedance/sdk/component/d/dq/mp;->p:Lcom/bytedance/sdk/component/d/dq/mp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/sdk/component/d/dq/mp;->d:Lcom/bytedance/sdk/component/d/dq/mp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/d/o;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/d/dq/ig;->ia:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/d/dq/ig;-><init>(Lcom/bytedance/sdk/component/d/dq/ig$dq;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/ig$dq;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/dq/ia;-><init>()V

    iget-wide v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->d:J

    iget-wide v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->p:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->p:J

    iget-wide v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->iw:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->iw:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->ox:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->s:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->s:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->mn:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->mn:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->dq:Ljava/util/List;

    iget-object v0, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ia:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->kk:Ljava/util/List;

    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/ig$dq;->kk:Ljava/util/Set;

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig;->o:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/k$dq;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/dq/ia;-><init>()V

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->wp:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->d:J

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->e:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->p:J

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->kx:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->iw:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->n:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->ox:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->op:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->s:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->ir:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->mn:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/k$dq;->bl:Ljava/util/Set;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig;->o:Ljava/util/Set;

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig;->no:Lcom/bytedance/sdk/component/ox/d/k$dq;

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/d/dq/ig$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
