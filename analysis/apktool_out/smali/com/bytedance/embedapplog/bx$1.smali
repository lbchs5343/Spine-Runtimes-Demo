.class final Lcom/bytedance/embedapplog/bx$1;
.super Lcom/bytedance/embedapplog/io;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/io<",
        "Lcom/bytedance/embedapplog/sc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/io;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic dq([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bx$1;->ox([Ljava/lang/Object;)Lcom/bytedance/embedapplog/sc;

    move-result-object p1

    return-object p1
.end method

.method public varargs ox([Ljava/lang/Object;)Lcom/bytedance/embedapplog/sc;
    .locals 2

    new-instance v0, Lcom/bytedance/embedapplog/sc;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/bytedance/embedapplog/sc;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
