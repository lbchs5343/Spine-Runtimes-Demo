.class Lcom/bytedance/embedapplog/er$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/er;->dq()Lcom/bytedance/embedapplog/o$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/o$d<",
        "Lcom/bytedance/embedapplog/jy;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/embedapplog/er;


# direct methods
.method public constructor <init>(Lcom/bytedance/embedapplog/er;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/er$1;->dq:Lcom/bytedance/embedapplog/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/jy;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/embedapplog/jy$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/jy;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dq(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/er$1;->d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/jy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/bytedance/embedapplog/jy;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/er$1;->dq(Lcom/bytedance/embedapplog/jy;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/embedapplog/jy;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/embedapplog/jy;->ox()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
