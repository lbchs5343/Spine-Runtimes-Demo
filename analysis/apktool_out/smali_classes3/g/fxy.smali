.class public final Lg/fxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Lg/hu;

.field public static final e:Ljava/lang/String;


# instance fields
.field public final f:Ljava/util/LinkedHashMap;

.field public g:J

.field public h:Lg/ago;

.field public i:Z

.field public j:Z

.field public final k:Ljava/io/File;

.field public l:Z

.field public m:Z

.field public final n:Ljava/io/File;

.field public final o:Ljava/io/File;

.field public final p:Lg/lm;

.field public final q:Ljava/io/File;

.field public r:I

.field public final s:J

.field public t:Z

.field public final u:Lg/gfw;

.field public v:Z

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/hu;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lg/hu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/fxy;->d:Lg/hu;

    const-string v0, "CLEAN"

    sput-object v0, Lg/fxy;->a:Ljava/lang/String;

    const-string v0, "DIRTY"

    sput-object v0, Lg/fxy;->c:Ljava/lang/String;

    const-string v0, "REMOVE"

    sput-object v0, Lg/fxy;->b:Ljava/lang/String;

    const-string v0, "READ"

    sput-object v0, Lg/fxy;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLg/amr;)V
    .locals 4

    const-string v0, "taskRunner"

    invoke-static {p4, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fxy;->q:Ljava/io/File;

    iput-wide p2, p0, Lg/fxy;->s:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p4}, Lg/amr;->l()Lg/gfw;

    move-result-object p4

    iput-object p4, p0, Lg/fxy;->u:Lg/gfw;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lg/erq;->g:Ljava/lang/String;

    const-string v1, " Cache"

    invoke-static {p4, v0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lg/lm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lg/lm;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v0, p0, Lg/fxy;->p:Lg/lm;

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-lez p4, :cond_0

    new-instance p2, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lg/fxy;->k:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lg/fxy;->n:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lg/fxy;->o:Ljava/io/File;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static x(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lg/fxy;->d:Lg/hu;

    invoke-virtual {v0, p0}, Lg/hu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized aa(Ljava/lang/String;)Lg/px;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fxy;->ae()V

    invoke-virtual {p0}, Lg/fxy;->ag()V

    invoke-static {p1}, Lg/fxy;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/egq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lg/egq;->k()Lg/px;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget v1, p0, Lg/fxy;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/fxy;->r:I

    iget-object v1, p0, Lg/fxy;->h:Lg/ago;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    sget-object v2, Lg/fxy;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-interface {v1, p1}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    const/16 p1, 0xa

    invoke-interface {v1, p1}, Lg/cbs;->writeByte(I)Lg/cbs;

    invoke-virtual {p0}, Lg/fxy;->ak()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/fxy;->u:Lg/gfw;

    iget-object v1, p0, Lg/fxy;->p:Lg/lm;

    invoke-static {p1, v1}, Lg/gfw;->g(Lg/gfw;Lg/fyg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final ab(Lg/egq;)V
    .locals 10

    iget-object v0, p1, Lg/egq;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lg/fxy;->m:Z

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p1, Lg/egq;->a:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lg/fxy;->h:Lg/ago;

    if-eqz v1, :cond_0

    sget-object v5, Lg/fxy;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v1, v3}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v1, v0}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v1, v2}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v1}, Lg/ago;->flush()V

    :cond_0
    iget v1, p1, Lg/egq;->a:I

    if-gtz v1, :cond_1

    iget-object v1, p1, Lg/egq;->j:Lg/abv;

    if-eqz v1, :cond_2

    :cond_1
    iput-boolean v4, p1, Lg/egq;->e:Z

    return-void

    :cond_2
    iget-object v1, p1, Lg/egq;->j:Lg/abv;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lg/abv;->h()V

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v1, v5, :cond_6

    iget-object v5, p1, Lg/egq;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    const-string v6, "file"

    invoke-static {v5, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iget-wide v5, p0, Lg/fxy;->w:J

    iget-object v7, p1, Lg/egq;->g:[J

    aget-wide v8, v7, v1

    sub-long/2addr v5, v8

    iput-wide v5, p0, Lg/fxy;->w:J

    const-wide/16 v5, 0x0

    aput-wide v5, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget p1, p0, Lg/fxy;->r:I

    add-int/2addr p1, v4

    iput p1, p0, Lg/fxy;->r:I

    iget-object p1, p0, Lg/fxy;->h:Lg/ago;

    if-eqz p1, :cond_7

    sget-object v1, Lg/fxy;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v3}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {p1, v0}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v2}, Lg/ago;->writeByte(I)Lg/cbs;

    :cond_7
    iget-object p1, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lg/fxy;->ak()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lg/fxy;->u:Lg/gfw;

    iget-object v0, p0, Lg/fxy;->p:Lg/lm;

    invoke-static {p1, v0}, Lg/gfw;->g(Lg/gfw;Lg/fyg;)V

    :cond_8
    return-void
.end method

.method public final ac()V
    .locals 5

    :goto_0
    iget-wide v0, p0, Lg/fxy;->w:J

    iget-wide v2, p0, Lg/fxy;->s:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/egq;

    iget-boolean v2, v1, Lg/egq;->e:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lg/fxy;->ab(Lg/egq;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fxy;->t:Z

    return-void
.end method

.method public final declared-synchronized ad()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/fxy;->h:Lg/ago;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ago;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/fxy;->n:Ljava/io/File;

    const-string v1, "file"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lg/dgz;

    new-instance v5, Lg/dme;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v3, v1, v5}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    sget-object v3, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lg/dgz;

    new-instance v0, Lg/dme;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v3, v1, v0}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_1
    invoke-static {v4}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lg/ago;->writeByte(I)Lg/cbs;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v0, v1}, Lg/ago;->writeByte(I)Lg/cbs;

    const v3, 0x31191

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lg/ago;->l(J)Lg/cbs;

    invoke-virtual {v0, v1}, Lg/ago;->writeByte(I)Lg/cbs;

    const/4 v3, 0x2

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lg/ago;->l(J)Lg/cbs;

    invoke-virtual {v0, v1}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-virtual {v0, v1}, Lg/ago;->writeByte(I)Lg/cbs;

    iget-object v3, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/egq;

    iget-object v5, v4, Lg/egq;->j:Lg/abv;

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    sget-object v5, Lg/fxy;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v0, v6}, Lg/ago;->writeByte(I)Lg/cbs;

    iget-object v4, v4, Lg/egq;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v0, v1}, Lg/ago;->writeByte(I)Lg/cbs;

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    sget-object v5, Lg/fxy;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v0, v6}, Lg/ago;->writeByte(I)Lg/cbs;

    iget-object v5, v4, Lg/egq;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v4, v0}, Lg/egq;->l(Lg/ago;)V

    invoke-virtual {v0, v1}, Lg/ago;->writeByte(I)Lg/cbs;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Lg/ago;->close()V

    sget-object v0, Lg/bfy;->r:Lg/bfy;

    iget-object v1, p0, Lg/fxy;->k:Ljava/io/File;

    invoke-virtual {v0, v1}, Lg/bfy;->ag(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg/fxy;->k:Ljava/io/File;

    iget-object v3, p0, Lg/fxy;->o:Ljava/io/File;

    invoke-virtual {v0, v1, v3}, Lg/bfy;->ae(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    iget-object v1, p0, Lg/fxy;->n:Ljava/io/File;

    iget-object v3, p0, Lg/fxy;->k:Ljava/io/File;

    invoke-virtual {v0, v1, v3}, Lg/bfy;->ae(Ljava/io/File;Ljava/io/File;)V

    iget-object v1, p0, Lg/fxy;->o:Ljava/io/File;

    invoke-virtual {v0, v1}, Lg/bfy;->ai(Ljava/io/File;)V

    invoke-virtual {p0}, Lg/fxy;->y()Lg/ago;

    move-result-object v0

    iput-object v0, p0, Lg/fxy;->h:Lg/ago;

    iput-boolean v2, p0, Lg/fxy;->j:Z

    iput-boolean v2, p0, Lg/fxy;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Lg/ckd;->n(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ae()V
    .locals 6

    const-string v0, "DiskLruCache "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lg/erq;->c:[B

    iget-boolean v1, p0, Lg/fxy;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lg/bfy;->r:Lg/bfy;

    iget-object v2, p0, Lg/fxy;->o:Ljava/io/File;

    invoke-virtual {v1, v2}, Lg/bfy;->ag(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/fxy;->k:Ljava/io/File;

    invoke-virtual {v1, v2}, Lg/bfy;->ag(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lg/fxy;->o:Ljava/io/File;

    invoke-virtual {v1, v2}, Lg/bfy;->ai(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lg/fxy;->o:Ljava/io/File;

    iget-object v3, p0, Lg/fxy;->k:Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lg/bfy;->ae(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lg/fxy;->o:Ljava/io/File;

    const-string v3, "file"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg/bfy;->af(Ljava/io/File;)Lg/dgz;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v1, v2}, Lg/bfy;->ai(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Lg/dgz;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-static {v3, v0}, Lg/ckd;->n(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-virtual {v3}, Lg/dgz;->close()V

    invoke-virtual {v1, v2}, Lg/bfy;->ai(Ljava/io/File;)V

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lg/fxy;->m:Z

    iget-object v1, p0, Lg/fxy;->k:Ljava/io/File;

    const-string v2, "file"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {p0}, Lg/fxy;->aj()V

    invoke-virtual {p0}, Lg/fxy;->ah()V

    iput-boolean v5, p0, Lg/fxy;->l:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    :try_start_7
    sget-object v2, Lg/bop;->h:Lg/bop;

    sget-object v2, Lg/bop;->h:Lg/bop;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxy;->q:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is corrupt: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lg/bop;->j(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0}, Lg/fxy;->close()V

    sget-object v0, Lg/bfy;->r:Lg/bfy;

    iget-object v1, p0, Lg/fxy;->q:Ljava/io/File;

    invoke-virtual {v0, v1}, Lg/bfy;->ad(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iput-boolean v4, p0, Lg/fxy;->v:Z

    goto :goto_2

    :catchall_3
    move-exception v0

    iput-boolean v4, p0, Lg/fxy;->v:Z

    throw v0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lg/fxy;->ad()V

    iput-boolean v5, p0, Lg/fxy;->l:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final af(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x6

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lg/dcv;->bh(Ljava/lang/CharSequence;CII)I

    move-result v0

    const-string v3, "unexpected journal line: "

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x4

    invoke-static {p1, v1, v5, v6}, Lg/dcv;->bh(Ljava/lang/CharSequence;CII)I

    move-result v6

    const-string v7, "this as java.lang.String).substring(startIndex)"

    iget-object v8, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    if-ne v6, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lg/fxy;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_1

    invoke-static {p1, v9, v2}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v9, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v9}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v8, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/egq;

    if-nez v9, :cond_2

    new-instance v9, Lg/egq;

    invoke-direct {v9, p0, v5}, Lg/egq;-><init>(Lg/fxy;Ljava/lang/String;)V

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v6, v4, :cond_4

    sget-object v5, Lg/fxy;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_4

    invoke-static {p1, v5, v2}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v0, [C

    aput-char v1, v4, v2

    invoke-static {p1, v4}, Lg/dcv;->bt(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    iput-boolean v0, v9, Lg/egq;->c:Z

    const/4 v0, 0x0

    iput-object v0, v9, Lg/egq;->j:Lg/abv;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v9, Lg/egq;->h:Lg/fxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_6

    iget-object v1, v9, Lg/egq;->g:[J

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v6, v4, :cond_5

    sget-object v1, Lg/fxy;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_5

    invoke-static {p1, v1, v2}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lg/abv;

    invoke-direct {p1, p0, v9}, Lg/abv;-><init>(Lg/fxy;Lg/egq;)V

    iput-object p1, v9, Lg/egq;->j:Lg/abv;

    return-void

    :cond_5
    if-ne v6, v4, :cond_7

    sget-object v1, Lg/fxy;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_7

    invoke-static {p1, v1, v2}, Lg/dmc;->bw(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized ag()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/fxy;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "cache is closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ah()V
    .locals 10

    sget-object v0, Lg/bfy;->r:Lg/bfy;

    iget-object v1, p0, Lg/fxy;->n:Ljava/io/File;

    invoke-virtual {v0, v1}, Lg/bfy;->ai(Ljava/io/File;)V

    iget-object v1, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "i.next()"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lg/egq;

    iget-object v3, v2, Lg/egq;->j:Lg/abv;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_1

    :goto_1
    if-ge v5, v4, :cond_0

    iget-wide v6, p0, Lg/fxy;->w:J

    iget-object v3, v2, Lg/egq;->g:[J

    aget-wide v8, v3, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lg/fxy;->w:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-object v3, v2, Lg/egq;->j:Lg/abv;

    :goto_2
    if-ge v5, v4, :cond_2

    iget-object v3, v2, Lg/egq;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v0, v3}, Lg/bfy;->ai(Ljava/io/File;)V

    iget-object v3, v2, Lg/egq;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v0, v3}, Lg/bfy;->ai(Ljava/io/File;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final declared-synchronized ai(Lg/abv;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lg/abv;->b:Lg/egq;

    iget-object v1, v0, Lg/egq;->j:Lg/abv;

    invoke-static {v1, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-boolean v3, v0, Lg/egq;->c:Z

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p1, Lg/abv;->c:[Z

    invoke-static {v4}, Lg/bff;->d(Ljava/lang/Object;)V

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, v0, Lg/egq;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const-string v5, "file"

    invoke-static {v4, v5}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lg/abv;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lg/abv;->f()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_6

    iget-object p1, v0, Lg/egq;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p2, :cond_3

    iget-boolean v3, v0, Lg/egq;->e:Z

    if-nez v3, :cond_3

    sget-object v3, Lg/bfy;->r:Lg/bfy;

    invoke-virtual {v3, p1}, Lg/bfy;->ag(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lg/egq;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v3, p1, v4}, Lg/bfy;->ae(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, v0, Lg/egq;->g:[J

    aget-wide v5, p1, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object p1, v0, Lg/egq;->g:[J

    aput-wide v3, p1, v2

    iget-wide v7, p0, Lg/fxy;->w:J

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    iput-wide v7, p0, Lg/fxy;->w:J

    goto :goto_2

    :cond_3
    const-string v3, "file"

    invoke-static {p1, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    iput-object p1, v0, Lg/egq;->j:Lg/abv;

    iget-boolean p1, v0, Lg/egq;->e:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Lg/fxy;->ab(Lg/egq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    iget p1, p0, Lg/fxy;->r:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lg/fxy;->r:I

    iget-object p1, p0, Lg/fxy;->h:Lg/ago;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lg/egq;->c:Z

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-nez v2, :cond_9

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    iget-object v1, v0, Lg/egq;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lg/fxy;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v4}, Lg/ago;->writeByte(I)Lg/cbs;

    iget-object p2, v0, Lg/egq;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v3}, Lg/ago;->writeByte(I)Lg/cbs;

    goto :goto_4

    :cond_9
    :goto_3
    iput-boolean v1, v0, Lg/egq;->c:Z

    sget-object v1, Lg/fxy;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {p1, v4}, Lg/ago;->writeByte(I)Lg/cbs;

    iget-object v1, v0, Lg/egq;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    invoke-virtual {v0, p1}, Lg/egq;->l(Lg/ago;)V

    invoke-virtual {p1, v3}, Lg/ago;->writeByte(I)Lg/cbs;

    if-eqz p2, :cond_a

    iget-wide v1, p0, Lg/fxy;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lg/fxy;->g:J

    iput-wide v1, v0, Lg/egq;->f:J

    :cond_a
    :goto_4
    invoke-virtual {p1}, Lg/ago;->flush()V

    iget-wide p1, p0, Lg/fxy;->w:J

    iget-wide v0, p0, Lg/fxy;->s:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_b

    invoke-virtual {p0}, Lg/fxy;->ak()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iget-object p1, p0, Lg/fxy;->u:Lg/gfw;

    iget-object p2, p0, Lg/fxy;->p:Lg/lm;

    invoke-static {p1, p2}, Lg/gfw;->g(Lg/gfw;Lg/fyg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :cond_d
    :try_start_3
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final aj()V
    .locals 11

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    const-string v2, "file"

    iget-object v3, p0, Lg/fxy;->k:Ljava/io/File;

    invoke-static {v3, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v2, Lg/dix;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lg/dme;->n:Lg/dey;

    invoke-direct {v2, v4, v3}, Lg/dix;-><init>(Ljava/io/InputStream;Lg/dme;)V

    invoke-static {v2}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {v2, v3, v4}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v4}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v4}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "libcore.io.DiskLruCache"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "1"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x31191

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v7, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v2, v3, v4}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg/fxy;->af(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v1, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lg/fxy;->r:I

    invoke-virtual {v2}, Lg/deb;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/fxy;->ad()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lg/fxy;->y()Lg/ago;

    move-result-object v0

    iput-object v0, p0, Lg/fxy;->h:Lg/ago;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v2}, Lg/deb;->close()V

    return-void

    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lg/ckd;->n(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ak()Z
    .locals 2

    iget v0, p0, Lg/fxy;->r:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized close()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/fxy;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lg/fxy;->v:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lg/egq;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/egq;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    iget-object v4, v4, Lg/egq;->j:Lg/abv;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lg/abv;->h()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/fxy;->ac()V

    iget-object v0, p0, Lg/fxy;->h:Lg/ago;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/ago;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fxy;->h:Lg/ago;

    iput-boolean v1, p0, Lg/fxy;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lg/fxy;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/fxy;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lg/fxy;->ag()V

    invoke-virtual {p0}, Lg/fxy;->ac()V

    iget-object v0, p0, Lg/fxy;->h:Lg/ago;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/ago;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final y()Lg/ago;
    .locals 5

    const-string v0, "file"

    iget-object v1, p0, Lg/fxy;->k:Ljava/io/File;

    invoke-static {v1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lg/dgz;

    new-instance v4, Lg/dme;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v2, v0, v4}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    sget-object v2, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lg/dgz;

    new-instance v1, Lg/dme;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v2, v0, v1}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    new-instance v0, Lg/eqv;

    new-instance v1, Lg/bmq;

    invoke-direct {v1, p0}, Lg/bmq;-><init>(Lg/fxy;)V

    invoke-direct {v0, v3, v1}, Lg/eqv;-><init>(Lg/dgz;Lg/and;)V

    invoke-static {v0}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized z(JLjava/lang/String;)Lg/abv;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fxy;->ae()V

    invoke-virtual {p0}, Lg/fxy;->ag()V

    invoke-static {p3}, Lg/fxy;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/egq;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lg/egq;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p1

    if-eqz v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object p1, v0, Lg/egq;->j:Lg/abv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_3

    monitor-exit p0

    return-object v3

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    iget p1, v0, Lg/egq;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    monitor-exit p0

    return-object v3

    :cond_4
    :try_start_3
    iget-boolean p1, p0, Lg/fxy;->t:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lg/fxy;->i:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lg/fxy;->h:Lg/ago;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    sget-object p2, Lg/fxy;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/ago;->j(Ljava/lang/String;)Lg/cbs;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lg/ago;->writeByte(I)Lg/cbs;

    invoke-interface {p1, p3}, Lg/cbs;->j(Ljava/lang/String;)Lg/cbs;

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Lg/cbs;->writeByte(I)Lg/cbs;

    invoke-virtual {p1}, Lg/ago;->flush()V

    iget-boolean p1, p0, Lg/fxy;->j:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_6

    monitor-exit p0

    return-object v3

    :cond_6
    if-nez v0, :cond_7

    :try_start_4
    new-instance v0, Lg/egq;

    invoke-direct {v0, p0, p3}, Lg/egq;-><init>(Lg/fxy;Ljava/lang/String;)V

    iget-object p1, p0, Lg/fxy;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance p1, Lg/abv;

    invoke-direct {p1, p0, v0}, Lg/abv;-><init>(Lg/fxy;Lg/egq;)V

    iput-object p1, v0, Lg/egq;->j:Lg/abv;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :goto_2
    :try_start_5
    iget-object p1, p0, Lg/fxy;->u:Lg/gfw;

    iget-object p2, p0, Lg/fxy;->p:Lg/lm;

    invoke-static {p1, p2}, Lg/gfw;->g(Lg/gfw;Lg/fyg;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
