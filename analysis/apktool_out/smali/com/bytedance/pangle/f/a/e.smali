.class public final Lcom/bytedance/pangle/f/a/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lcom/bytedance/pangle/dex/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/dex/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/bytedance/pangle/dex/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/pangle/f/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/pangle/dex/a;->b()I

    move-result v0

    iput v0, p0, Lcom/bytedance/pangle/f/a/e;->b:I

    iput-object p1, p0, Lcom/bytedance/pangle/f/a/e;->c:Lcom/bytedance/pangle/dex/a;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/pangle/f/a/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/pangle/f/a/e;->b:I

    return-void
.end method
