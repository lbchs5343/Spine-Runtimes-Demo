.class Lcom/bytedance/embedapplog/dk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/dk;->dq()Lcom/bytedance/embedapplog/o$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/o$d<",
        "Lcom/bytedance/embedapplog/b;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/embedapplog/dk;


# direct methods
.method public constructor <init>(Lcom/bytedance/embedapplog/dk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/dk$1;->dq:Lcom/bytedance/embedapplog/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/b;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/embedapplog/b$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dq(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/dk$1;->d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/bytedance/embedapplog/b;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/dk$1;->dq(Lcom/bytedance/embedapplog/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/embedapplog/b;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "honor# "

    const-string v0, "service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/dk$1;->dq:Lcom/bytedance/embedapplog/dk;

    iget-object v0, v0, Lcom/bytedance/embedapplog/dk;->dq:Lcom/bytedance/embedapplog/ny;

    invoke-interface {p1, v0}, Lcom/bytedance/embedapplog/b;->dq(Lcom/bytedance/embedapplog/hf;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/dk$1;->dq:Lcom/bytedance/embedapplog/dk;

    iget-object v0, v0, Lcom/bytedance/embedapplog/dk;->d:Lcom/bytedance/embedapplog/a;

    invoke-interface {p1, v0}, Lcom/bytedance/embedapplog/b;->d(Lcom/bytedance/embedapplog/hf;)V

    const-string p1, ""

    return-object p1
.end method
