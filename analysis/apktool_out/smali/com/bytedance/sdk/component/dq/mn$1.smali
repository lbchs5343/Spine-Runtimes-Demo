.class Lcom/bytedance/sdk/component/dq/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/dq/p$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/p;Lcom/bytedance/sdk/component/dq/iw;)Lcom/bytedance/sdk/component/dq/mn$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/dq/p;

.field final synthetic dq:Lcom/bytedance/sdk/component/dq/f;

.field final synthetic ox:Lcom/bytedance/sdk/component/dq/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/dq/mn;Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/mn$1;->dq:Lcom/bytedance/sdk/component/dq/f;

    iput-object p3, p0, Lcom/bytedance/sdk/component/dq/mn$1;->d:Lcom/bytedance/sdk/component/dq/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/mn;)Lcom/bytedance/sdk/component/dq/dq;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/mn;)Lcom/bytedance/sdk/component/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/component/dq/mn;->d(Lcom/bytedance/sdk/component/dq/mn;)Lcom/bytedance/sdk/component/dq/ia;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/dq/ia;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/wp;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/mn$1;->dq:Lcom/bytedance/sdk/component/dq/f;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/dq/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/mn;->ox(Lcom/bytedance/sdk/component/dq/mn;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn$1;->d:Lcom/bytedance/sdk/component/dq/p;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/mn;)Lcom/bytedance/sdk/component/dq/dq;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/mn;)Lcom/bytedance/sdk/component/dq/dq;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/wp;->dq(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/mn$1;->dq:Lcom/bytedance/sdk/component/dq/f;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/dq/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/dq/mn$1;->ox:Lcom/bytedance/sdk/component/dq/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/mn;->ox(Lcom/bytedance/sdk/component/dq/mn;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn$1;->d:Lcom/bytedance/sdk/component/dq/p;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
