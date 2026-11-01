.class Lcom/bytedance/embedapplog/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/y;->dq()Lcom/bytedance/embedapplog/o$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/o$d<",
        "Lcom/bytedance/embedapplog/mp;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/embedapplog/y;


# direct methods
.method public constructor <init>(Lcom/bytedance/embedapplog/y;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/embedapplog/y$1;->dq:Lcom/bytedance/embedapplog/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/mp;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/embedapplog/mp$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/mp;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dq(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/y$1;->d(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/mp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/bytedance/embedapplog/mp;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/y$1;->dq(Lcom/bytedance/embedapplog/mp;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/embedapplog/mp;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lcom/bytedance/embedapplog/mp;->dq()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
