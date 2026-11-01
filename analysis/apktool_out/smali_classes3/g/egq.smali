.class public final Lg/egq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:J

.field public final g:[J

.field public final synthetic h:Lg/fxy;

.field public final i:Ljava/util/ArrayList;

.field public j:Lg/abv;


# direct methods
.method public constructor <init>(Lg/fxy;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/egq;->h:Lg/fxy;

    iput-object p2, p0, Lg/egq;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    new-array v0, p1, [J

    iput-object v0, p0, Lg/egq;->g:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/egq;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/egq;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/egq;->i:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lg/egq;->h:Lg/fxy;

    iget-object v4, v4, Lg/fxy;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/egq;->b:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lg/egq;->h:Lg/fxy;

    iget-object v4, v4, Lg/fxy;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final k()Lg/px;
    .locals 9

    sget-object v0, Lg/erq;->c:[B

    iget-boolean v0, p0, Lg/egq;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lg/egq;->h:Lg/fxy;

    iget-boolean v1, v0, Lg/fxy;->m:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/egq;->j:Lg/abv;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lg/egq;->e:Z

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/egq;->g:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [J

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lg/egq;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const-string v3, "file"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v3, Lg/dix;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lg/dme;->n:Lg/dey;

    invoke-direct {v3, v4, v2}, Lg/dix;-><init>(Ljava/io/InputStream;Lg/dme;)V

    iget-boolean v2, v0, Lg/fxy;->m:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lg/egq;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg/egq;->a:I

    new-instance v2, Lg/dsz;

    invoke-direct {v2, v3, v0, p0}, Lg/dsz;-><init>(Lg/dix;Lg/fxy;Lg/egq;)V

    move-object v3, v2

    :goto_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Lg/px;

    iget-object v3, p0, Lg/egq;->h:Lg/fxy;

    iget-object v4, p0, Lg/egq;->d:Ljava/lang/String;

    iget-wide v5, p0, Lg/egq;->f:J

    invoke-direct/range {v2 .. v8}, Lg/px;-><init>(Lg/fxy;Ljava/lang/String;JLjava/util/ArrayList;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cpv;

    invoke-static {v2}, Lg/erq;->m(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v0, p0}, Lg/fxy;->ab(Lg/egq;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l(Lg/ago;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/egq;->g:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {p1, v3, v4}, Lg/ago;->l(J)Lg/cbs;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
