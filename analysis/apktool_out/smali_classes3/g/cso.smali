.class public final Lg/cso;
.super Lg/sz;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:Lg/dpd;

.field public static final f:Lg/dpd;

.field public static final g:[B

.field public static final h:[B


# instance fields
.field public i:J

.field public final j:Lg/gei;

.field public final k:Ljava/util/List;

.field public final l:Lg/dpd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lg/dpd;->a:Ljava/util/regex/Pattern;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object v0

    sput-object v0, Lg/cso;->b:Lg/dpd;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object v0

    sput-object v0, Lg/cso;->f:Lg/dpd;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lg/cso;->h:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lg/cso;->a:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lg/cso;->g:[B

    return-void

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

.method public constructor <init>(Lg/gei;Lg/dpd;Ljava/util/List;)V
    .locals 1

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cso;->j:Lg/gei;

    iput-object p3, p0, Lg/cso;->k:Ljava/util/List;

    sget-object p3, Lg/dpd;->a:Ljava/util/regex/Pattern;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/gei;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object p1

    iput-object p1, p0, Lg/cso;->l:Lg/dpd;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lg/cso;->i:J

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 5

    iget-wide v0, p0, Lg/cso;->i:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lg/cso;->m(Lg/cbs;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lg/cso;->i:J

    :cond_0
    return-wide v0
.end method

.method public final d()Lg/dpd;
    .locals 1

    iget-object v0, p0, Lg/cso;->l:Lg/dpd;

    return-object v0
.end method

.method public final e(Lg/cbs;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/cso;->m(Lg/cbs;Z)J

    return-void
.end method

.method public final m(Lg/cbs;Z)J
    .locals 16

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    new-instance v1, Lg/clq;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    :goto_0
    iget-object v3, v0, Lg/cso;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lg/cso;->j:Lg/gei;

    sget-object v10, Lg/cso;->g:[B

    sget-object v11, Lg/cso;->a:[B

    if-ge v8, v4, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/bmb;

    iget-object v13, v12, Lg/bmb;->a:Lg/dvq;

    iget-object v12, v12, Lg/bmb;->b:Lg/sz;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-interface {v1, v10}, Lg/cbs;->write([B)Lg/cbs;

    invoke-interface {v1, v9}, Lg/cbs;->g(Lg/gei;)Lg/cbs;

    invoke-interface {v1, v11}, Lg/cbs;->write([B)Lg/cbs;

    invoke-virtual {v13}, Lg/dvq;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_1

    invoke-virtual {v13, v10}, Lg/dvq;->e(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v14

    sget-object v15, Lg/cso;->h:[B

    invoke-interface {v14, v15}, Lg/cbs;->write([B)Lg/cbs;

    move-result-object v14

    invoke-virtual {v13, v10}, Lg/dvq;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v14

    invoke-interface {v14, v11}, Lg/cbs;->write([B)Lg/cbs;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lg/sz;->d()Lg/dpd;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, "Content-Type: "

    invoke-interface {v1, v10}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v10

    iget-object v9, v9, Lg/dpd;->c:Ljava/lang/String;

    invoke-interface {v10, v9}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v9

    invoke-interface {v9, v11}, Lg/cbs;->write([B)Lg/cbs;

    :cond_2
    invoke-virtual {v12}, Lg/sz;->c()J

    move-result-wide v9

    const-wide/16 v13, -0x1

    cmp-long v15, v9, v13

    if-eqz v15, :cond_3

    const-string v13, "Content-Length: "

    invoke-interface {v1, v13}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    move-result-object v13

    invoke-interface {v13, v9, v10}, Lg/cbs;->l(J)Lg/cbs;

    move-result-object v13

    invoke-interface {v13, v11}, Lg/cbs;->write([B)Lg/cbs;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lg/clq;->aa()V

    return-wide v13

    :cond_4
    :goto_3
    invoke-interface {v1, v11}, Lg/cbs;->write([B)Lg/cbs;

    if-eqz p2, :cond_5

    add-long/2addr v6, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v1}, Lg/sz;->e(Lg/cbs;)V

    :goto_4
    invoke-interface {v1, v11}, Lg/cbs;->write([B)Lg/cbs;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-interface {v1, v10}, Lg/cbs;->write([B)Lg/cbs;

    invoke-interface {v1, v9}, Lg/cbs;->g(Lg/gei;)Lg/cbs;

    invoke-interface {v1, v10}, Lg/cbs;->write([B)Lg/cbs;

    invoke-interface {v1, v11}, Lg/cbs;->write([B)Lg/cbs;

    if-eqz p2, :cond_7

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-wide v3, v2, Lg/clq;->b:J

    add-long/2addr v6, v3

    invoke-virtual {v2}, Lg/clq;->aa()V

    :cond_7
    return-wide v6
.end method
