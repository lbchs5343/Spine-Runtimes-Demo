.class public final Lcom/bytedance/sdk/component/ox/d/dq/s/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;
    }
.end annotation


# static fields
.field private static final d:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private static final ia:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private static final iw:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private static final kk:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private static final mn:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private static final no:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/dq/iw;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/dq/iw;",
            ">;"
        }
    .end annotation
.end field

.field private static final ox:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private static final p:Lcom/bytedance/sdk/component/ox/dq/iw;

.field private static final s:Lcom/bytedance/sdk/component/ox/dq/iw;


# instance fields
.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

.field private final ig:Lcom/bytedance/sdk/component/ox/d/k;

.field private jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

.field private final mp:Lcom/bytedance/sdk/component/ox/d/r$dq;

.field private final q:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "connection"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->d:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v1, "host"

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->ox:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v2, "keep-alive"

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v3, "proxy-connection"

    invoke-static {v3}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v3

    sput-object v3, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->s:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v4, "transfer-encoding"

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v4

    sput-object v4, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->iw:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v5, "te"

    invoke-static {v5}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v5

    sput-object v5, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->mn:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v6, "encoding"

    invoke-static {v6}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v6

    sput-object v6, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->ia:Lcom/bytedance/sdk/component/ox/dq/iw;

    const-string v7, "upgrade"

    invoke-static {v7}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v7

    sput-object v7, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->kk:Lcom/bytedance/sdk/component/ox/dq/iw;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/bytedance/sdk/component/ox/dq/iw;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v10, 0x1

    aput-object v1, v8, v10

    const/4 v11, 0x2

    aput-object v2, v8, v11

    const/4 v12, 0x3

    aput-object v3, v8, v12

    const/4 v13, 0x4

    aput-object v5, v8, v13

    const/4 v14, 0x5

    aput-object v4, v8, v14

    const/4 v15, 0x6

    aput-object v6, v8, v15

    const/16 v16, 0x7

    aput-object v7, v8, v16

    sget-object v17, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ox:Lcom/bytedance/sdk/component/ox/dq/iw;

    const/16 v18, 0x0

    const/16 v9, 0x8

    aput-object v17, v8, v9

    sget-object v17, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    const/16 v19, 0x9

    aput-object v17, v8, v19

    sget-object v17, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->s:Lcom/bytedance/sdk/component/ox/dq/iw;

    const/16 v19, 0xa

    aput-object v17, v8, v19

    sget-object v17, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->iw:Lcom/bytedance/sdk/component/ox/dq/iw;

    const/16 v19, 0xb

    aput-object v17, v8, v19

    invoke-static {v8}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->o:Ljava/util/List;

    new-array v8, v9, [Lcom/bytedance/sdk/component/ox/dq/iw;

    aput-object v0, v8, v18

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    aput-object v5, v8, v13

    aput-object v4, v8, v14

    aput-object v6, v8, v15

    aput-object v7, v8, v16

    invoke-static {v8}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->no:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/r$dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/s/mn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->ig:Lcom/bytedance/sdk/component/ox/d/k;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->mp:Lcom/bytedance/sdk/component/ox/d/r$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->dq:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->q:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/component/ox/d/kx;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ox/d/kx;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/kx;->ox()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ox:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/kx;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->p:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/d/dq/ox/kk;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/d/kx;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    sget-object v4, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->iw:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-direct {v3, v4, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->s:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/gh;->ox()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v3

    sget-object v4, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;-><init>(Lcom/bytedance/sdk/component/ox/dq/iw;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static dq(Ljava/util/List;)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)",
            "Lcom/bytedance/sdk/component/ox/d/bl$dq;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;

    if-nez v5, :cond_0

    if-eqz v4, :cond_2

    iget v5, v4, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->d:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/cd$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;-><init>()V

    move-object v4, v2

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->mn:Lcom/bytedance/sdk/component/ox/dq/iw;

    iget-object v5, v5, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->ia:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/bytedance/sdk/component/ox/d/dq/s/ox;->d:Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/component/ox/dq/iw;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v4, "HTTP/1.1 "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/dq/ox/no;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->no:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6, v5}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd$dq;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    new-instance p0, Lcom/bytedance/sdk/component/ox/d/bl$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/wp;->p:Lcom/bytedance/sdk/component/ox/d/wp;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/wp;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p0

    iget v1, v4, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->d:I

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(I)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p0

    iget-object v1, v4, Lcom/bytedance/sdk/component/ox/d/dq/ox/no;->ox:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd$dq;->dq()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/bl$dq;->dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia()Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    return-void
.end method

.method public dq(Z)Lcom/bytedance/sdk/component/ox/d/bl$dq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->dq(Ljava/util/List;)Lcom/bytedance/sdk/component/ox/d/bl$dq;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/bl$dq;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/n;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/bl;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Lcom/bytedance/sdk/component/ox/d/bl;)J

    move-result-wide v1

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn()Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/bytedance/sdk/component/ox/d/dq/s/iw$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/iw;Lcom/bytedance/sdk/component/ox/dq/gh;)V

    new-instance v3, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V

    return-object v3
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;J)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia()Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    return-object p1
.end method

.method public dq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->q:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/kx;->p()Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->d(Lcom/bytedance/sdk/component/ox/d/kx;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->q:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(Ljava/util/List;Z)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->mp:Lcom/bytedance/sdk/component/ox/d/r$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/d/r$dq;->ox()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->mp:Lcom/bytedance/sdk/component/ox/d/r$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/d/r$dq;->p()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/r;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/dq/r;

    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/iw;->jy:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    :cond_0
    return-void
.end method
