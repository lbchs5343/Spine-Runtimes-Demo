.class final Lcom/bytedance/embedapplog/y;
.super Lcom/bytedance/embedapplog/tl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/tl<",
        "Lcom/bytedance/embedapplog/mp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.samsung.android.deviceidservice"

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/tl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/embedapplog/o$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/embedapplog/o$d<",
            "Lcom/bytedance/embedapplog/mp;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/embedapplog/y$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/y$1;-><init>(Lcom/bytedance/embedapplog/y;)V

    return-object v0
.end method

.method public ox(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.deviceidservice"

    const-string v1, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
