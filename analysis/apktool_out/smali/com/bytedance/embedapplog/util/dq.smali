.class public Lcom/bytedance/embedapplog/util/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/util/dq$dq;
    }
.end annotation


# instance fields
.field private final d:[Ljava/lang/String;

.field private final dq:Ljava/lang/String;

.field private final iw:Ljava/lang/String;

.field private final mn:Ljava/lang/String;

.field private final ox:[Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final s:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/embedapplog/util/dq$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq$dq;->dq(Lcom/bytedance/embedapplog/util/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq$dq;->d(Lcom/bytedance/embedapplog/util/dq$dq;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->d:[Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq$dq;->ox(Lcom/bytedance/embedapplog/util/dq$dq;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->ox:[Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq$dq;->p(Lcom/bytedance/embedapplog/util/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq$dq;->s(Lcom/bytedance/embedapplog/util/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq$dq;->iw(Lcom/bytedance/embedapplog/util/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->iw:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/embedapplog/util/dq$dq;->mn(Lcom/bytedance/embedapplog/util/dq$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/util/dq;->mn:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/embedapplog/util/dq$dq;Lcom/bytedance/embedapplog/util/dq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/util/dq;-><init>(Lcom/bytedance/embedapplog/util/dq$dq;)V

    return-void
.end method

.method public static dq(I)Lcom/bytedance/embedapplog/util/dq;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/embedapplog/util/d;->dq(I)Lcom/bytedance/embedapplog/util/dq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/util/dq;->s:Ljava/lang/String;

    return-object v0
.end method
