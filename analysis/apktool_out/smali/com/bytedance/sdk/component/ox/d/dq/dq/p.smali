.class public final Lcom/bytedance/sdk/component/ox/d/dq/dq/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;,
        Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;,
        Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;
    }
.end annotation


# static fields
.field static final dq:Ljava/util/regex/Pattern;

.field static final synthetic mp:Z = true


# instance fields
.field private cd:J

.field final d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

.field private final f:Ljava/io/File;

.field private final fw:I

.field private gh:J

.field private final i:Ljava/util/concurrent/Executor;

.field ia:Z

.field ig:Z

.field final iw:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;",
            ">;"
        }
    .end annotation
.end field

.field private final jy:Ljava/io/File;

.field kk:Z

.field private final le:Ljava/lang/Runnable;

.field mn:I

.field no:Z

.field o:Z

.field final ox:Ljava/io/File;

.field final p:I

.field private final q:Ljava/io/File;

.field private r:J

.field s:Lcom/bytedance/sdk/component/ox/dq/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq:Ljava/util/regex/Pattern;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    const-string v2, "\""

    invoke-static {v1, p1, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dq(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    if-nez v5, :cond_2

    new-instance v5, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    invoke-direct {v5, p0, v4}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-boolean v1, v5, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->s:Z

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    invoke-virtual {v5, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq([Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    invoke-direct {p1, p0, v5}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;)V

    iput-object p1, v5, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    return-void

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ia()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->jy:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    :goto_2
    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v4, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->ox:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v4, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->p:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private iw()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->dq(Ljava/io/File;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->f()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->fw:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq(Ljava/lang/String;)V
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
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn:I

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    throw v0
.end method

.method private declared-synchronized kk()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private mn()Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->ox(Ljava/io/File;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$1;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Lcom/bytedance/sdk/component/ox/dq/cd;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->kk:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->o:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->o:Z
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

.method public declared-synchronized d()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->jy:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->d(Ljava/io/File;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->fw:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->ig(J)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v4, v3, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v3, v3, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    const-string v4, "CLEAN"

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v4, v3, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq(Lcom/bytedance/sdk/component/ox/dq/p;)V

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->p(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->f:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->dq(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->jy:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->dq(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ig:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    throw v1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->close()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ox:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->iw(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized dq(Ljava/lang/String;J)Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->kk()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->mn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object p2, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-object v3

    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->no:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ig:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V

    iget-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ia:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    monitor-exit p0

    return-object v3

    :cond_4
    if-nez v0, :cond_5

    :try_start_3
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;)V

    iput-object p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->i:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->le:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mp:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->kk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->p(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->p(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->dq(Ljava/io/File;Ljava/io/File;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->q:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->p(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    :try_start_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ia()V

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->kk:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ox:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3, v0}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->o:Z

    goto :goto_2

    :catchall_1
    move-exception v1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->o:Z

    throw v1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d()V

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->kk:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public declared-synchronized dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-boolean v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->s:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->d:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v4, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->p:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->p(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ge v1, p1, :cond_5

    iget-object p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->p:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    invoke-interface {v2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->p(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->ox:[Ljava/io/File;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    invoke-interface {v3, p1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->dq(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d:[J

    aget-wide v3, p1, v1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->s(Ljava/io/File;)J

    move-result-wide v5

    iget-object p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d:[J

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    invoke-interface {v2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn:I

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    iget-boolean p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->s:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    iput-boolean v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->s:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq(Lcom/bytedance/sdk/component/ox/dq/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    if-eqz p2, :cond_7

    iget-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->r:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->r:J

    iput-wide p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->mn:J

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p2, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V

    iget-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->cd:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ox()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->i:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->le:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->ox:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    iget-object v3, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->d:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    const-wide/16 v1, 0x0

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->kk(I)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->dq:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->ox()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->i:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->le:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->kk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->kk()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->s:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
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

.method public ox()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->mn:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public s()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->gh:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->cd:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->iw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->no:Z

    return-void
.end method
