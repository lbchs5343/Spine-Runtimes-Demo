.class public Lcom/bytedance/embedapplog/dk;
.super Lcom/bytedance/embedapplog/tl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/tl<",
        "Lcom/bytedance/embedapplog/b;",
        ">;"
    }
.end annotation


# instance fields
.field final d:Lcom/bytedance/embedapplog/a;

.field final dq:Lcom/bytedance/embedapplog/ny;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.hihonor.id"

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/tl;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/embedapplog/ny;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/ny;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embedapplog/dk;->dq:Lcom/bytedance/embedapplog/ny;

    new-instance v0, Lcom/bytedance/embedapplog/a;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embedapplog/dk;->d:Lcom/bytedance/embedapplog/a;

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;)Lcom/bytedance/embedapplog/hy$dq;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/dk;->ox(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/dk;->dq()Lcom/bytedance/embedapplog/o$d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/embedapplog/o;

    invoke-direct {v2, p1, v0, v1}, Lcom/bytedance/embedapplog/o;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/embedapplog/o$d;)V

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/o;->dq()Ljava/lang/Object;

    new-instance p1, Lcom/bytedance/embedapplog/hy$dq;

    invoke-direct {p1}, Lcom/bytedance/embedapplog/hy$dq;-><init>()V

    iget-object v0, p0, Lcom/bytedance/embedapplog/dk;->dq:Lcom/bytedance/embedapplog/ny;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ny;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/hy$dq;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/embedapplog/dk;->d:Lcom/bytedance/embedapplog/a;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a;->d()Z

    move-result v0

    iput-boolean v0, p1, Lcom/bytedance/embedapplog/hy$dq;->ox:Z

    return-object p1
.end method

.method public dq()Lcom/bytedance/embedapplog/o$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/embedapplog/o$d<",
            "Lcom/bytedance/embedapplog/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/embedapplog/dk$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/dk$1;-><init>(Lcom/bytedance/embedapplog/dk;)V

    return-object v0
.end method

.method public bridge synthetic dq(Landroid/content/Context;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/embedapplog/tl;->dq(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public ox(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hihonor.id.HnOaIdService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.hihonor.id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
