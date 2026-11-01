.class Lcom/bytedance/embedapplog/tv$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/tv;->iw(Landroid/content/Context;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/o$d<",
        "Lcom/bytedance/embedapplog/w;",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/embedapplog/tv;


# direct methods
.method public constructor <init>(Lcom/bytedance/embedapplog/tv;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/tv$2;->dq:Lcom/bytedance/embedapplog/tv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/w;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/embedapplog/w$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/w;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/embedapplog/w;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/w;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/embedapplog/w;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/embedapplog/w;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public synthetic dq(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/tv$2;->d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/bytedance/embedapplog/w;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/tv$2;->dq(Lcom/bytedance/embedapplog/w;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
