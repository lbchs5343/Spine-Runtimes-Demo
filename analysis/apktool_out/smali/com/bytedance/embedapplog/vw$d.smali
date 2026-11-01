.class Lcom/bytedance/embedapplog/vw$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/vw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field d:I

.field dq:Ljava/lang/String;

.field ox:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d()V
    .locals 6

    sget-object v0, Lcom/bytedance/embedapplog/vw;->ox:[Lcom/bytedance/embedapplog/vw$d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const-string v5, ""

    iput-object v5, v4, Lcom/bytedance/embedapplog/vw$d;->dq:Ljava/lang/String;

    iput v2, v4, Lcom/bytedance/embedapplog/vw$d;->d:I

    iput v2, v4, Lcom/bytedance/embedapplog/vw$d;->ox:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic dq()V
    .locals 0

    invoke-static {}, Lcom/bytedance/embedapplog/vw$d;->d()V

    return-void
.end method

.method private dq(Lcom/bytedance/embedapplog/ds;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/ds;->kk()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/bytedance/embedapplog/vw$d;->d:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/ds;->ia()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/vw$d;->dq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/bytedance/embedapplog/vw$d;->d:I

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/embedapplog/vw$d;Lcom/bytedance/embedapplog/ds;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/vw$d;->dq(Lcom/bytedance/embedapplog/ds;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/embedapplog/vw$d;->ox:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/embedapplog/vw$d;->dq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/embedapplog/vw$d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
