.class public final Lcom/bytedance/sdk/component/kk/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/kk/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field d:I

.field dq:I

.field private iw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mn:Landroid/os/Bundle;

.field ox:I

.field p:Z

.field final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/dq/kk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->p:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->s:Ljava/util/List;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->dq:I

    iput v0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->d:I

    iput v0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->ox:I

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/kk/dq$dq;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->iw:Ljava/util/Set;

    return-object p0
.end method

.method private static dq(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " too small."

    invoke-static {p0, p2}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p0, p1

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " too large."

    invoke-static {p0, p2}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " < 0"

    invoke-static {p0, p2}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/kk/dq$dq;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->mn:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/kk/dq$dq;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->d:I

    return-object p0
.end method

.method public dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/kk/dq$dq;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->dq:I

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/kk/dq$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public dq(Ljava/util/Set;)Lcom/bytedance/sdk/component/kk/dq$dq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/kk/dq$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->iw:Ljava/util/Set;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/component/kk/dq$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->p:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/kk/dq;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/kk/dq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/kk/dq;-><init>(Lcom/bytedance/sdk/component/kk/dq$dq;Lcom/bytedance/sdk/component/kk/dq$1;)V

    return-object v0
.end method

.method public ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/kk/dq$dq;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/kk/dq$dq;->ox:I

    return-object p0
.end method
