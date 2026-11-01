.class Lcom/bytedance/embedapplog/jn$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/jn;->d(Landroid/content/Context;)Lcom/bytedance/embedapplog/hy$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/o$d<",
        "Lcom/bytedance/embedapplog/f;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/embedapplog/jn;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/embedapplog/jn;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/jn$2;->d:Lcom/bytedance/embedapplog/jn;

    iput-object p2, p0, Lcom/bytedance/embedapplog/jn$2;->dq:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/f;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/embedapplog/f$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dq(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/jn$2;->d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/bytedance/embedapplog/f;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/jn$2;->dq(Lcom/bytedance/embedapplog/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/embedapplog/f;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/jn$2;->d:Lcom/bytedance/embedapplog/jn;

    iget-object v2, p0, Lcom/bytedance/embedapplog/jn$2;->dq:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/jn;->dq(Lcom/bytedance/embedapplog/jn;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/embedapplog/jn$2;->dq:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OUID"

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/embedapplog/f;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
