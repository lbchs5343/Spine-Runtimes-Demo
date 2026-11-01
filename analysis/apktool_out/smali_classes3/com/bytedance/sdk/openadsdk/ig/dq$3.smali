.class Lcom/bytedance/sdk/openadsdk/ig/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ig/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/ig/dq;

.field final synthetic ox:Landroid/webkit/WebResourceRequest;

.field final synthetic p:Landroid/util/Pair;

.field final synthetic s:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/util/Pair;Landroid/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->iw:Lcom/bytedance/sdk/openadsdk/ig/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->ox:Landroid/webkit/WebResourceRequest;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->p:Landroid/util/Pair;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->s:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->iw:Lcom/bytedance/sdk/openadsdk/ig/dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq$3;ZLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method
