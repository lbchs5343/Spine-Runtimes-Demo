.class abstract Lcom/bytedance/embedapplog/tl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/hy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/hy;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/embedapplog/io;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/io<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/embedapplog/tl$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/tl$1;-><init>(Lcom/bytedance/embedapplog/tl;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/tl;->d:Lcom/bytedance/embedapplog/io;

    iput-object p1, p0, Lcom/bytedance/embedapplog/tl;->dq:Ljava/lang/String;

    return-void
.end method

.method private dq(Ljava/lang/String;)Lcom/bytedance/embedapplog/hy$dq;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/embedapplog/hy$dq;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/hy$dq;-><init>()V

    iput-object p1, v0, Lcom/bytedance/embedapplog/hy$dq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/embedapplog/tl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/embedapplog/tl;->dq:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d(Landroid/content/Context;)Lcom/bytedance/embedapplog/hy$dq;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/tl;->ox(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/tl;->dq()Lcom/bytedance/embedapplog/o$d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/embedapplog/o;

    invoke-direct {v2, p1, v0, v1}, Lcom/bytedance/embedapplog/o;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/embedapplog/o$d;)V

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/o;->dq()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/tl;->dq(Ljava/lang/String;)Lcom/bytedance/embedapplog/hy$dq;

    move-result-object p1

    return-object p1
.end method

.method public abstract dq()Lcom/bytedance/embedapplog/o$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/embedapplog/o$d<",
            "TSERVICE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public dq(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/tl;->d:Lcom/bytedance/embedapplog/io;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/io;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public abstract ox(Landroid/content/Context;)Landroid/content/Intent;
.end method
