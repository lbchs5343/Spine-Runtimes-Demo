.class final Lcom/bytedance/sdk/component/ox/d/ox$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final dq:Ljava/lang/String;


# instance fields
.field private final ia:Ljava/lang/String;

.field private final ig:J

.field private final iw:Lcom/bytedance/sdk/component/ox/d/wp;

.field private final kk:Lcom/bytedance/sdk/component/ox/d/cd;

.field private final mn:I

.field private final no:J

.field private final o:Lcom/bytedance/sdk/component/ox/d/fw;

.field private final ox:Ljava/lang/String;

.field private final p:Lcom/bytedance/sdk/component/ox/d/cd;

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/ox$d;->dq:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/ox$d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->ox:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->d(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->p:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->d()Lcom/bytedance/sdk/component/ox/d/wp;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->iw:Lcom/bytedance/sdk/component/ox/d/wp;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->ox()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->mn:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->ia:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->mn()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->kk:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->iw()Lcom/bytedance/sdk/component/ox/d/fw;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->o:Lcom/bytedance/sdk/component/ox/d/fw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->mp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->no:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/bl;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->ig:J

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/dq/p;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ox/dq/p;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq([B)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/dq/iw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->ox:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq(I)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->ox:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->s:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->p:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->p:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->p:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->p:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->iw:Lcom/bytedance/sdk/component/ox/d/wp;

    iget v5, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->mn:I

    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->ia:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;-><init>(Lcom/bytedance/sdk/component/ox/d/wp;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->kk:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->kk:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->kk:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->kk:Lcom/bytedance/sdk/component/ox/d/cd;

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/ox$d;->dq:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    iget-wide v5, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->no:J

    invoke-interface {v0, v5, v6}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/ox$d;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->ig:J

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/ox$d;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->o:Lcom/bytedance/sdk/component/ox/d/fw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/fw;->d()Lcom/bytedance/sdk/component/ox/d/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/ia;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->o:Lcom/bytedance/sdk/component/ox/d/fw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/fw;->ox()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/ox$d;->dq(Lcom/bytedance/sdk/component/ox/dq/p;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->o:Lcom/bytedance/sdk/component/ox/d/fw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/fw;->p()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/ox$d;->dq(Lcom/bytedance/sdk/component/ox/dq/p;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/ox$d;->o:Lcom/bytedance/sdk/component/ox/d/fw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/fw;->dq()Lcom/bytedance/sdk/component/ox/d/ir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/ir;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    return-void
.end method
