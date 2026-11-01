.class public abstract Lg/bmc;
.super Lg/emd;
.source "SourceFile"


# static fields
.field public static final j:Lg/dba;


# instance fields
.field public k:Lg/gdu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/bmc;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/bmc;->j:Lg/dba;

    return-void
.end method


# virtual methods
.method public final l()Lg/bvi;
    .locals 7

    iget-object v0, p0, Lg/bmc;->k:Lg/gdu;

    iget-wide v1, v0, Lg/gdu;->f:J

    const-wide/16 v3, 0x2

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Lg/gdu;->h()I

    move-result v0

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_0

    const-string v3, "Unexpected string pool header size: 0x{}, expected: 0x1C"

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lg/bmc;->j:Lg/dba;

    invoke-interface {v4, v0, v3}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v3, v1

    invoke-virtual {p0, v1, v2, v3, v4}, Lg/bmc;->n(JJ)Lg/bvi;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Decode error: "

    const-string v2, ", position: 0x"

    invoke-static {v1, p1, v2}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lg/bmc;->k:Lg/gdu;

    iget-wide v1, v1, Lg/gdu;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(JJ)Lg/bvi;
    .locals 7

    iget-object v0, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->i()I

    move-result v0

    iget-object v1, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v1}, Lg/gdu;->i()I

    iget-object v1, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v1}, Lg/gdu;->i()I

    move-result v1

    iget-object v2, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v2}, Lg/gdu;->i()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v4}, Lg/gdu;->i()I

    iget-object v4, p0, Lg/bmc;->k:Lg/gdu;

    iget-wide v5, v4, Lg/gdu;->f:J

    sub-long p1, v5, p1

    sub-long/2addr v2, p1

    sub-long p1, p3, v5

    long-to-int p2, p1

    invoke-virtual {v4, p2}, Lg/gdu;->o(I)[B

    move-result-object p1

    iget-object p2, p0, Lg/bmc;->k:Lg/gdu;

    const-string v4, "Expected strings pool end"

    invoke-virtual {p2, p3, p4, v4}, Lg/gdu;->m(JLjava/lang/String;)V

    new-instance p2, Lg/bvi;

    and-int/lit16 p3, v1, 0x100

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p2, Lg/bvi;->b:Ljava/lang/Object;

    iput v0, p2, Lg/bvi;->e:I

    iput-wide v2, p2, Lg/bvi;->d:J

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p2, Lg/bvi;->a:Ljava/lang/Object;

    sget-object p4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean p3, p2, Lg/bvi;->c:Z

    return-object p2
.end method
