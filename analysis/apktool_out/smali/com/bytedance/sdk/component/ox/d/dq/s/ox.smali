.class public final Lcom/bytedance/sdk/component/ox/d/dq/s/ox;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lcom/bytedance/sdk/component/ox/dq/iw;

.field public static final dq:Lcom/bytedance/sdk/component/ox/dq/iw;

.field public static final iw:Lcom/bytedance/sdk/component/ox/dq/iw;

.field public static final ox:Lcom/bytedance/sdk/component/ox/dq/iw;

.field public static final p:Lcom/bytedance/sdk/component/ox/dq/iw;

.field public static final s:Lcom/bytedance/sdk/component/ox/dq/iw;


# instance fields
.field public final ia:Lcom/bytedance/sdk/component/ox/dq/iw;

.field final kk:I

.field public final mn:Lcom/bytedance/sdk/component/ox/dq/iw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v0, ":status"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->d:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v0, ":method"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ox:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v0, ":path"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->s:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v0, ":authority"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->iw:Lcom/bytedance/sdk/component/ox/dq/iw;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/iw;Lcom/bytedance/sdk/component/ox/dq/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->mn:Lcom/bytedance/sdk/component/ox/dq/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ia:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->mn()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ox/dq/iw;->mn()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->kk:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/iw;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Lcom/bytedance/sdk/component/ox/dq/iw;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Lcom/bytedance/sdk/component/ox/dq/iw;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->mn:Lcom/bytedance/sdk/component/ox/dq/iw;

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->mn:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/iw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ia:Lcom/bytedance/sdk/component/ox/dq/iw;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ia:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->mn:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ia:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/iw;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->mn:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ia:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s: %s"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
