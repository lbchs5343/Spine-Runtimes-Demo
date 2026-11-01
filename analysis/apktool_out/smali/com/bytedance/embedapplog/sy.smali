.class final Lcom/bytedance/embedapplog/sy;
.super Lcom/bytedance/embedapplog/tl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/tl<",
        "Lcom/bytedance/embedapplog/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.zui.deviceidservice"

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
            "Lcom/bytedance/embedapplog/q;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/embedapplog/sy$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/sy$1;-><init>(Lcom/bytedance/embedapplog/sy;)V

    return-object v0
.end method

.method public ox(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.zui.deviceidservice"

    const-string v1, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
