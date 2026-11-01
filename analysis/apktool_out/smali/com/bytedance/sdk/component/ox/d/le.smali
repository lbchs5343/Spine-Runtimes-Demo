.class public final Lcom/bytedance/sdk/component/ox/d/le;
.super Lcom/bytedance/sdk/component/ox/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/le$dq;,
        Lcom/bytedance/sdk/component/ox/d/le$d;
    }
.end annotation


# static fields
.field public static final d:Lcom/bytedance/sdk/component/ox/d/i;

.field public static final dq:Lcom/bytedance/sdk/component/ox/d/i;

.field private static final ia:[B

.field private static final iw:[B

.field private static final mn:[B

.field public static final ox:Lcom/bytedance/sdk/component/ox/d/i;

.field public static final p:Lcom/bytedance/sdk/component/ox/d/i;

.field public static final s:Lcom/bytedance/sdk/component/ox/d/i;


# instance fields
.field private final ig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/le$d;",
            ">;"
        }
    .end annotation
.end field

.field private final kk:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private mp:J

.field private final no:Lcom/bytedance/sdk/component/ox/d/i;

.field private final o:Lcom/bytedance/sdk/component/ox/d/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/le;->dq:Lcom/bytedance/sdk/component/ox/d/i;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/le;->d:Lcom/bytedance/sdk/component/ox/d/i;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/le;->ox:Lcom/bytedance/sdk/component/ox/d/i;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/le;->p:Lcom/bytedance/sdk/component/ox/d/i;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/le;->s:Lcom/bytedance/sdk/component/ox/d/i;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/bytedance/sdk/component/ox/d/le;->iw:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/bytedance/sdk/component/ox/d/le;->mn:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/le;->ia:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/iw;Lcom/bytedance/sdk/component/ox/d/i;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ox/dq/iw;",
            "Lcom/bytedance/sdk/component/ox/d/i;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/le$d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/h;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/le;->mp:J

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/le;->kk:Lcom/bytedance/sdk/component/ox/dq/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/le;->o:Lcom/bytedance/sdk/component/ox/d/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/le;->no:Lcom/bytedance/sdk/component/ox/d/i;

    invoke-static {p3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/le;->ig:Ljava/util/List;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/dq/p;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/le;->ig:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/d/le;->ig:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/ox/d/le$d;

    iget-object v7, v6, Lcom/bytedance/sdk/component/ox/d/le$d;->dq:Lcom/bytedance/sdk/component/ox/d/cd;

    iget-object v6, v6, Lcom/bytedance/sdk/component/ox/d/le$d;->d:Lcom/bytedance/sdk/component/ox/d/h;

    sget-object v8, Lcom/bytedance/sdk/component/ox/d/le;->ia:[B

    invoke-interface {p1, v8}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v8, p0, Lcom/bytedance/sdk/component/ox/d/le;->kk:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-interface {p1, v8}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Lcom/bytedance/sdk/component/ox/dq/iw;)Lcom/bytedance/sdk/component/ox/dq/p;

    sget-object v8, Lcom/bytedance/sdk/component/ox/d/le;->mn:[B

    invoke-interface {p1, v8}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v10

    sget-object v11, Lcom/bytedance/sdk/component/ox/d/le;->iw:[B

    invoke-interface {v10, v11}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v10

    sget-object v11, Lcom/bytedance/sdk/component/ox/d/le;->mn:[B

    invoke-interface {v10, v11}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/bytedance/sdk/component/ox/d/h;->dq()Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v8

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ox/d/i;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v7

    sget-object v8, Lcom/bytedance/sdk/component/ox/d/le;->mn:[B

    invoke-interface {v7, v8}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    :cond_2
    invoke-virtual {v6}, Lcom/bytedance/sdk/component/ox/d/h;->d()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v9

    sget-object v10, Lcom/bytedance/sdk/component/ox/d/le;->mn:[B

    invoke-interface {v9, v10}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->cd()V

    return-wide v9

    :cond_4
    :goto_3
    sget-object v9, Lcom/bytedance/sdk/component/ox/d/le;->mn:[B

    invoke-interface {p1, v9}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v6, p1}, Lcom/bytedance/sdk/component/ox/d/h;->dq(Lcom/bytedance/sdk/component/ox/dq/p;)V

    :goto_4
    invoke-interface {p1, v9}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lcom/bytedance/sdk/component/ox/d/le;->ia:[B

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/le;->kk:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Lcom/bytedance/sdk/component/ox/dq/iw;)Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/le;->mn:[B

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([B)Lcom/bytedance/sdk/component/ox/dq/p;

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide p1

    add-long/2addr p1, v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->cd()V

    return-wide p1

    :cond_7
    return-wide v3
.end method

.method public static dq(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public d()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/le;->mp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/d/le;->dq(Lcom/bytedance/sdk/component/ox/dq/p;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/le;->mp:J

    return-wide v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/i;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/le;->no:Lcom/bytedance/sdk/component/ox/d/i;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/le;->dq(Lcom/bytedance/sdk/component/ox/dq/p;Z)J

    return-void
.end method
