.class public final Lg/cqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Lg/chm;

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/ArrayList;

.field public final i:Lg/eie;

.field public j:Lg/dwg;

.field public final k:Lg/ur;

.field public final l:Lg/cvm;

.field public final m:Lg/cln;

.field public final n:Lg/erf;

.field public final o:Ljava/util/ArrayList;

.field public p:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cqc;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cqc;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/ur;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cqc;->f:Ljava/util/ArrayList;

    new-instance v0, Lg/chm;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cqc;->b:Lg/chm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cqc;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cqc;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/cqc;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cqc;->o:Ljava/util/ArrayList;

    new-instance v0, Lg/erf;

    invoke-direct {v0}, Lg/erf;-><init>()V

    iput-object v0, p0, Lg/cqc;->n:Lg/erf;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg/cqc;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lg/cqc;->k:Lg/ur;

    new-instance v0, Lg/cln;

    invoke-direct {v0, p0}, Lg/cln;-><init>(Lg/cqc;)V

    iput-object v0, p0, Lg/cqc;->m:Lg/cln;

    new-instance v0, Lg/cvm;

    invoke-direct {v0, p0}, Lg/cvm;-><init>(Lg/cqc;)V

    iput-object v0, p0, Lg/cqc;->l:Lg/cvm;

    new-instance v0, Lg/eie;

    iget-object p1, p1, Lg/ur;->am:Lg/cvp;

    new-instance v1, Lg/fdy;

    const-class v2, Lg/evu;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    const/16 v3, 0x11

    invoke-direct {v1, p1, v3, v2}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/16 p1, 0x15

    invoke-direct {v0, p1, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/cqc;->i:Lg/eie;

    return-void
.end method

.method public static q(Ljava/util/ArrayList;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lg/cqc;->a:Lg/dba;

    const-string v4, "Fail to close \'{}\'"

    invoke-interface {v3, v1, v4, v2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    throw v0
.end method


# virtual methods
.method public final aa(Lg/eie;)V
    .locals 14

    invoke-virtual {p0}, Lg/cqc;->z()V

    invoke-static {p0}, Lg/yf;->c(Lg/cqc;)V

    sget-object v0, Lg/cqc;->a:Lg/dba;

    const-string v1, "loading (resources only) ..."

    invoke-interface {v0, v1}, Lg/dba;->j(Ljava/lang/String;)V

    const-wide/16 v5, 0x64

    const-string v7, "MSG:init_engine"

    const-wide/16 v3, 0x5

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lg/eie;->u(JJLjava/lang/String;)V

    move-object v8, v2

    iget-object p1, p0, Lg/cqc;->k:Lg/ur;

    iget-object p1, p1, Lg/ur;->i:Lg/ao;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/fvm;->a:Ljava/nio/file/Path;

    invoke-static {p1}, Lg/cnh;->u(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    sget-object v0, Lg/bqu;->c:Lg/dba;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lg/bqu;->f(Ljava/io/File;)V

    :cond_0
    invoke-static {p1}, Lg/bqu;->g(Ljava/nio/file/Path;)V

    invoke-virtual {p0}, Lg/cqc;->x()V

    const-wide/16 v11, 0x64

    const-string v13, "MSG:read_dex"

    const-wide/16 v9, 0xf

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    invoke-virtual {p0}, Lg/cqc;->r()V

    const-string v13, "MSG:prepare_class_map"

    const-wide/16 v9, 0x1e

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    new-instance p1, Lg/dwg;

    invoke-direct {p1, p0}, Lg/dwg;-><init>(Lg/cqc;)V

    iput-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lg/ur;->r:Ljava/util/EnumSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lg/ur;->af:Lg/bli;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v0, p0, Lg/cqc;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v8}, Lg/dwg;->y(Ljava/util/ArrayList;Lg/eie;)V

    const-wide/16 v11, 0x64

    const-string v13, "MSG:extract_res"

    const-wide/16 v9, 0x3c

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v0, p0, Lg/cqc;->l:Lg/cvm;

    invoke-virtual {p0}, Lg/cqc;->s()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lg/dwg;->aa(Lg/cvm;Ljava/util/List;)V

    const-string v13, "MSG:load_complete"

    const-wide/16 v9, 0x64

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 6

    invoke-virtual {p0}, Lg/cqc;->z()V

    iget-object v0, p0, Lg/cqc;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/cqc;->q(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/cqc;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/cqc;->q(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/cqc;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/cqc;->q(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/cqc;->o:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/cqc;->q(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/cqc;->k:Lg/ur;

    iget-object v1, v0, Lg/ur;->i:Lg/ao;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/fvm;->a:Ljava/nio/file/Path;

    invoke-static {v1}, Lg/cnh;->u(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Lg/bqu;->c:Lg/dba;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lg/bqu;->f(Ljava/io/File;)V

    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Lg/cnh;->e(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {v1, v2}, Lg/bqu;->j(Ljava/nio/file/Path;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lg/bqu;->c:Lg/dba;

    const-string v5, "Failed to delete dir: {}"

    invoke-static {v1}, Lg/cnf;->t(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v4, v1, v5, v3}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lg/ur;->close()V

    sget-object v0, Lg/bqu;->d:Ljava/nio/file/Path;

    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Lg/cnf;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/bqu;->d:Ljava/nio/file/Path;

    const/4 v1, 0x1

    :try_start_1
    invoke-static {v0, v1}, Lg/bqu;->j(Ljava/nio/file/Path;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Lg/gck;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to clear directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 10

    iget-object v0, p0, Lg/cqc;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lg/cqc;->k:Lg/ur;

    iget-object v1, v1, Lg/ur;->ad:Ljava/util/ArrayList;

    new-instance v2, Lg/gpn;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    invoke-static {v1, v2}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lg/bqu;->c:Lg/dba;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lg/cnf;->i(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Lg/cnf;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/nio/file/FileVisitOption;

    invoke-static {}, Lg/cnf;->w()Ljava/nio/file/FileVisitOption;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lg/cgw;->a(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Lj$/util/stream/Stream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v5, Lg/eck;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lg/gcg;

    invoke-direct {v6, v2}, Lg/gcg;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    :try_start_3
    invoke-interface {v4}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    sget-object v5, Lg/bqu;->c:Lg/dba;

    const-string v6, "Failed to list files in directory: {}"

    invoke-interface {v5, v3, v6, v4}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lg/cqc;->m:Lg/cln;

    iget-object v1, v1, Lg/cln;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    sget-object v6, Lg/cqc;->a:Lg/dba;

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gay;

    iget-object v7, v5, Lg/gay;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gpy;

    :try_start_5
    invoke-virtual {v8, v2}, Lg/gpy;->c(Ljava/util/ArrayList;)Lg/iu;

    move-result-object v8

    invoke-interface {v8}, Lg/iu;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    const-string v9, "Failed to load code for plugin: {}"

    invoke-interface {v6, v5, v9, v8}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lg/cqc;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Lg/dba;->af()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Loaded using {} inputs plugin in {} ms"

    invoke-interface {v6, v0, v2, v1}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final declared-synchronized s()Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/cqc;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/cqc;->j:Lg/dwg;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lg/cqc;->l:Lg/cvm;

    invoke-virtual {v1, v0}, Lg/cvm;->h(Lg/dwg;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lg/cqc;->c:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lg/cqc;->c:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final t(ZZ)Lg/fuo;
    .locals 10

    iget-object v0, p0, Lg/cqc;->j:Lg/dwg;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lg/cqc;->k:Lg/ur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/cqc;->k:Lg/ur;

    iget-object v1, v0, Lg/ur;->s:Ljava/io/File;

    iget-object v0, v0, Lg/ur;->z:Ljava/io/File;

    invoke-static {v1}, Lg/bqu;->f(Ljava/io/File;)V

    invoke-static {v0}, Lg/bqu;->f(Ljava/io/File;)V

    new-instance v2, Lg/fuo;

    invoke-direct {v2}, Lg/fuo;-><init>()V

    iget-object v3, p0, Lg/cqc;->k:Lg/ur;

    iget v3, v3, Lg/ur;->d:I

    iget-object v4, v2, Lg/fuo;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p2, :cond_9

    iget-object p2, p0, Lg/cqc;->k:Lg/ur;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lg/cqc;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/awr;

    iget-object v5, v4, Lg/awr;->e:Lg/ag;

    sget-object v6, Lg/ag;->MANIFEST:Lg/ag;

    if-ne v5, v6, :cond_0

    new-instance v3, Lg/oj;

    invoke-direct {v3, p0, v0, v4}, Lg/oj;-><init>(Lg/cqc;Ljava/io/File;Lg/awr;)V

    invoke-virtual {v3}, Lg/oj;->run()V

    :cond_1
    iget-object p2, p2, Lg/ur;->ad:Ljava/util/ArrayList;

    invoke-static {p2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lg/gpn;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lg/gpn;-><init>(I)V

    invoke-interface {p2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {p2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v4, v4, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cci;

    iget-object v6, v5, Lg/cci;->ac:Lg/cgt;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v5, Lg/cci;->x:Ljava/lang/String;

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lg/cqc;->s()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/awr;

    iget-object v7, v6, Lg/awr;->e:Lg/ag;

    sget-object v8, Lg/ag;->MANIFEST:Lg/ag;

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_5
    iget-object v8, v6, Lg/awr;->d:Ljava/lang/String;

    sget-object v9, Lg/ag;->ARSC:Lg/ag;

    if-eq v7, v9, :cond_6

    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    new-instance v7, Lg/gtt;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v6, v0, v8}, Lg/gtt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v2, v4}, Lg/fuo;->k(Ljava/util/ArrayList;)V

    :cond_9
    if-eqz p1, :cond_12

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    if-nez p1, :cond_a

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_a
    :try_start_1
    iget-object p2, p0, Lg/cqc;->p:Ljava/util/List;

    if-nez p2, :cond_d

    iget-object p1, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cci;

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v4, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lg/cci;->bk()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0, v0}, Lg/cqc;->y(Lg/cci;)Lg/cno;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg/cqc;->p:Ljava/util/List;

    :cond_d
    iget-object p1, p0, Lg/cqc;->p:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_3
    iget-object p2, p0, Lg/cqc;->k:Lg/ur;

    iget-object p2, p2, Lg/ur;->ac:Lg/ry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cno;

    iget-object v4, v3, Lg/cno;->e:Lg/cci;

    sget-object v5, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v6, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_4

    :cond_e
    if-eqz p2, :cond_f

    iget-object v6, v4, Lg/cci;->ak:Lg/ve;

    iget-object v6, v6, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lg/ry;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v4, v5}, Lg/lh;->w(Lg/csv;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    :try_start_2
    iget-object p1, p0, Lg/cqc;->b:Lg/chm;

    invoke-virtual {p1, v0}, Lg/chm;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lg/gtt;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v0, v1, v4}, Lg/gtt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    invoke-virtual {v2, p2}, Lg/fuo;->k(Ljava/util/ArrayList;)V

    return-object v2

    :catch_0
    move-exception p1

    new-instance p2, Lg/gck;

    const-string v0, "Decompilation batches build failed"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_12
    return-object v2

    :cond_13
    new-instance p1, Lg/gck;

    const-string p2, "No loaded files"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jadx decompiler "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lg/bcv;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lg/emr;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lg/cqc;->t(ZZ)Lg/fuo;

    move-result-object v0

    invoke-virtual {v0}, Lg/fuo;->l()V

    iget v1, v0, Lg/fuo;->b:I

    int-to-long v5, v1

    :goto_0
    iget-object v1, v0, Lg/fuo;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/cqc;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v1, v0, Lg/fuo;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-long v3, v1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lg/emr;->ae(JJLjava/lang/String;)V

    const/16 p1, 0xc8

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    sget-object v0, Lg/cqc;->a:Lg/dba;

    const-string v1, "Save resources interrupted"

    invoke-interface {v0, v1, p1}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final v(Lg/eie;)V
    .locals 14

    invoke-virtual {p0}, Lg/cqc;->z()V

    invoke-static {p0}, Lg/yf;->c(Lg/cqc;)V

    const-string v0, "loading ..."

    sget-object v1, Lg/cqc;->a:Lg/dba;

    invoke-interface {v1, v0}, Lg/dba;->j(Ljava/lang/String;)V

    const-wide/16 v5, 0x64

    const-string v7, "MSG:init_engine"

    const-wide/16 v3, 0x5

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lg/eie;->u(JJLjava/lang/String;)V

    move-object v8, v2

    iget-object p1, p0, Lg/cqc;->k:Lg/ur;

    iget-object p1, p1, Lg/ur;->i:Lg/ao;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/fvm;->a:Ljava/nio/file/Path;

    invoke-static {p1}, Lg/cnh;->u(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    sget-object v0, Lg/bqu;->c:Lg/dba;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lg/bqu;->f(Ljava/io/File;)V

    :cond_0
    invoke-static {p1}, Lg/bqu;->g(Ljava/nio/file/Path;)V

    invoke-virtual {p0}, Lg/cqc;->x()V

    const-wide/16 v11, 0x64

    const-string v13, "MSG:read_dex"

    const-wide/16 v9, 0xf

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    invoke-virtual {p0}, Lg/cqc;->r()V

    const-string v13, "MSG:prepare_class_map"

    const-wide/16 v9, 0x1e

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    new-instance p1, Lg/dwg;

    invoke-direct {p1, p0}, Lg/dwg;-><init>(Lg/cqc;)V

    iput-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lg/ur;->r:Ljava/util/EnumSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lg/ur;->af:Lg/bli;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v0, p0, Lg/cqc;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v8}, Lg/dwg;->y(Ljava/util/ArrayList;Lg/eie;)V

    const-wide/16 v11, 0x64

    const-string v13, "MSG:extract_res"

    const-wide/16 v9, 0x3c

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v0, p0, Lg/cqc;->l:Lg/cvm;

    invoke-virtual {p0}, Lg/cqc;->s()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lg/dwg;->aa(Lg/cvm;Ljava/util/List;)V

    const-string v13, "MSG:integrate_class_ref"

    const-wide/16 v9, 0x46

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v0, p1, Lg/dwg;->m:Ljava/util/ArrayList;

    iget-object v2, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Lg/dwg;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    iget-object v2, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lg/coq;

    invoke-direct {v4, v5}, Lg/coq;-><init>(I)V

    invoke-static {v4}, Lj$/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lg/brj;

    const/16 v6, 0x12

    invoke-direct {v4, v6}, Lg/brj;-><init>(I)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lg/agx;

    const/16 v6, 0x14

    invoke-direct {v4, v6, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    sget-object v3, Lg/dwg;->a:Lg/dba;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Loaded classes: {}"

    invoke-interface {v3, v2, v4}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    new-instance v3, Lg/gpn;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Lg/gpn;-><init>(I)V

    invoke-static {v3}, Lj$/util/Comparator$a;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p1, Lg/dwg;->i:Lg/ur;

    iget-boolean v2, v2, Lg/ur;->m:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cci;

    iget-object v7, v6, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v7}, Lg/ve;->n()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cci;

    iget-object v7, v6, Lg/cci;->ak:Lg/ve;

    iget-object v9, v7, Lg/ve;->c:Lg/ve;

    invoke-virtual {p1, v9}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v10

    if-nez v10, :cond_5

    if-eqz v9, :cond_5

    iget-object v9, v9, Lg/ve;->b:Ljava/lang/String;

    const/16 v11, 0x2e

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v3

    if-eq v11, v12, :cond_5

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object v9

    invoke-virtual {p1, v9}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9, v12}, Lg/cci;->at(Ljava/lang/String;)Lg/hed;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v10, v9, Lg/cci;->ab:Lg/dwg;

    iget-object v11, v7, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v7, v10, v11, v3}, Lg/ve;->k(Lg/dwg;Lg/cwx;Z)V

    iget-object v10, v9, Lg/cci;->ak:Lg/ve;

    iput-object v10, v7, Lg/ve;->c:Lg/ve;

    move-object v10, v9

    :cond_5
    if-nez v10, :cond_6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Lg/cci;->ak:Lg/ve;

    iget-object v9, v6, Lg/cci;->ab:Lg/dwg;

    iget-object v10, v7, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v7, v9, v10, v5}, Lg/ve;->k(Lg/dwg;Lg/cwx;Z)V

    const/4 v9, 0x0

    iput-object v9, v7, Lg/ve;->c:Lg/ve;

    iput-object v6, v6, Lg/cci;->ai:Lg/cci;

    goto :goto_1

    :cond_6
    iget-object v7, v10, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v10, Lg/cci;->i:Ljava/util/List;

    :cond_7
    iget-object v7, v10, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v10, v6, Lg/cci;->ai:Lg/cci;

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cci;

    iget-object v4, v4, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cci;

    iget-object v5, v5, Lg/cci;->ak:Lg/ve;

    iget-object v6, v5, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v5}, Lg/ve;->n()Z

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Lg/ve;->k(Lg/dwg;Lg/cwx;Z)V

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hbb;

    iget-object v2, v2, Lg/hbb;->d:Ljava/util/ArrayList;

    new-instance v4, Lg/brj;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Lg/brj;-><init>(I)V

    invoke-static {v2, v4}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto :goto_3

    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p1, Lg/dwg;->l:Lg/cut;

    if-nez v0, :cond_d

    new-instance v0, Lg/cut;

    invoke-direct {v0, p1}, Lg/cut;-><init>(Lg/dwg;)V

    iget-object v2, p1, Lg/dwg;->i:Lg/ur;

    iget-boolean v2, v2, Lg/ur;->ao:Z

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lg/cut;->j()V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_8

    :cond_c
    :goto_4
    iget-object v2, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lg/cut;->i(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lg/cut;->h()V

    iput-object v0, p1, Lg/dwg;->l:Lg/cut;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    const-wide/16 v11, 0x64

    const-string v13, "MSG:start_ast"

    const-wide/16 v9, 0x50

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v0, p1, Lg/dwg;->i:Lg/ur;

    iget-object v2, v0, Lg/ur;->aa:Lg/qp;

    sget-object v4, Lg/qp;->FALLBACK:Lg/qp;

    iget-object v5, p0, Lg/cqc;->g:Ljava/util/HashMap;

    if-eq v2, v4, :cond_f

    sget-object v4, Lg/qp;->SIMPLE:Lg/qp;

    if-ne v2, v4, :cond_e

    goto :goto_5

    :cond_e
    new-instance v2, Lg/dzh;

    iget-object v4, p1, Lg/dwg;->r:Ljava/util/ArrayList;

    const/16 v6, 0x9

    invoke-direct {v2, v6, v4}, Lg/dzh;-><init>(ILjava/lang/Object;)V

    sget-object v4, Lg/hba;->a:Lg/bjm;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v7, Lg/gpn;

    const/16 v9, 0x1c

    invoke-direct {v7, v9}, Lg/gpn;-><init>(I)V

    invoke-virtual {v2, v4, v7}, Lg/dzh;->ae(Ljava/util/List;Ljava/util/function/Function;)V

    new-instance v2, Lg/dzh;

    iget-object v4, p1, Lg/dwg;->v:Lg/at;

    iget-object v4, v4, Lg/at;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v6, v4}, Lg/dzh;-><init>(ILjava/lang/Object;)V

    sget-object v4, Lg/gj;->a:Lg/bjm;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v6, Lg/gpn;

    const/16 v7, 0x1d

    invoke-direct {v6, v7}, Lg/gpn;-><init>(I)V

    invoke-virtual {v2, v4, v6}, Lg/dzh;->ae(Ljava/util/List;Ljava/util/function/Function;)V

    iget-object v0, v0, Lg/ur;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lg/dcg;

    invoke-direct {v0, v2, v3}, Lg/dcg;-><init>(Ljava/util/HashSet;I)V

    iget-object v2, p1, Lg/dwg;->r:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object p1, p1, Lg/dwg;->v:Lg/at;

    iget-object p1, p1, Lg/at;->c:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_f
    :goto_5
    const-wide/16 v11, 0x64

    const-string v13, "MSG:init_core"

    const-wide/16 v9, 0x5f

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    iget-object p1, p0, Lg/cqc;->j:Lg/dwg;

    iget-object v0, p1, Lg/dwg;->v:Lg/at;

    iget-object v0, v0, Lg/at;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lg/pj;

    :try_start_1
    invoke-virtual {v3, p1}, Lg/pj;->h(Lg/dwg;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    sget-object v4, Lg/at;->a:Lg/dba;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Visitor init failed: {}"

    invoke-interface {v4, v3, v6, v0}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    const-string p1, "Load finished"

    invoke-interface {v1, p1}, Lg/dba;->o(Ljava/lang/String;)V

    sget-object p1, Lg/fux;->a:Lg/bjm;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {p1}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_12
    :goto_7
    const-wide/16 v11, 0x64

    const-string v13, "MSG:load_complete"

    const-wide/16 v9, 0x64

    invoke-virtual/range {v8 .. v13}, Lg/eie;->u(JJLjava/lang/String;)V

    return-void

    :goto_8
    new-instance v0, Lg/gck;

    const-string v1, "Error loading jadx class set"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final w(Lg/emr;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lg/cqc;->k:Lg/ur;

    iget-boolean v1, v0, Lg/ur;->ar:Z

    xor-int/lit8 v1, v1, 0x1

    iget-boolean v0, v0, Lg/ur;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lg/cqc;->t(ZZ)Lg/fuo;

    move-result-object v0

    invoke-virtual {v0}, Lg/fuo;->l()V

    iget v1, v0, Lg/fuo;->b:I

    int-to-long v5, v1

    :goto_0
    iget-object v1, v0, Lg/fuo;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/cqc;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v1, v0, Lg/fuo;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-long v3, v1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lg/emr;->ae(JJLjava/lang/String;)V

    const/16 p1, 0xc8

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    sget-object v0, Lg/cqc;->a:Lg/dba;

    const-string v1, "Save interrupted"

    invoke-interface {v0, v1, p1}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final x()V
    .locals 7

    iget-object v0, p0, Lg/cqc;->m:Lg/cln;

    const-string v1, "java-input"

    iget-object v2, p0, Lg/cqc;->k:Lg/ur;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "java-input"

    iget-object v0, v0, Lg/cln;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg/cqc;->m:Lg/cln;

    iget-object v1, p0, Lg/cqc;->k:Lg/ur;

    iget-object v1, v1, Lg/ur;->e:Lg/etc;

    iget-object v2, v0, Lg/cln;->g:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    new-instance v2, Lg/gzb;

    invoke-static {}, Lg/bcv;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    const-string v3, "dev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lg/cka;

    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cka;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cka;

    new-instance v3, Lg/gay;

    iget-object v4, v0, Lg/cln;->d:Lg/cqc;

    invoke-direct {v3, v4, v2}, Lg/gay;-><init>(Lg/cqc;Lg/cka;)V

    iget-object v4, v0, Lg/cln;->f:Ljava/util/HashSet;

    iget-object v5, v3, Lg/gay;->c:Lg/dpa;

    iget-object v5, v5, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lg/cln;->a:Lg/dba;

    const-string v5, "Loading plugin: {}"

    invoke-interface {v4, v3, v5}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lg/cln;->g:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, v0, Lg/cln;->e:Ljava/util/ArrayList;

    new-instance v4, Lg/agx;

    const/16 v5, 0x10

    invoke-direct {v4, v5, v3}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v4}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Duplicate plugin id: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lg/cln;->g:Ljava/util/TreeSet;

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/gpn;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    invoke-static {v2}, Lj$/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lg/jb;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v2}, Lg/jb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v3}, Lj$/util/Map$b;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v1, v0, Lg/cln;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    iget-object v1, v0, Lg/cln;->b:Ljava/util/TreeSet;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    sget-object v0, Lg/cqc;->a:Lg/dba;

    invoke-interface {v0}, Lg/dba;->af()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Resolved plugins: {}"

    iget-object v2, p0, Lg/cqc;->m:Lg/cln;

    iget-object v2, v2, Lg/cln;->b:Ljava/util/TreeSet;

    invoke-interface {v0, v2, v1}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lg/cqc;->m:Lg/cln;

    iget-object v1, v0, Lg/cln;->b:Ljava/util/TreeSet;

    new-instance v2, Lg/evf;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lg/evf;-><init>(IZ)V

    iget-object v0, v0, Lg/cln;->d:Lg/cqc;

    iget-object v0, v0, Lg/cqc;->k:Lg/ur;

    iget-object v0, v0, Lg/ur;->i:Lg/ao;

    iput-object v0, v2, Lg/evf;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gay;

    :try_start_1
    iget-object v4, v3, Lg/gay;->e:Lg/evf;

    if-nez v4, :cond_5

    iput-object v2, v3, Lg/gay;->e:Lg/evf;

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, v3, Lg/gay;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v6, v3, Lg/gay;->g:Lg/cka;

    invoke-interface {v6, v3}, Lg/cka;->b(Lg/gay;)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lg/gay;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sget-object v5, Lg/cln;->a:Lg/dba;

    const-string v6, "Failed to init plugin: {}"

    iget-object v3, v3, Lg/gay;->c:Lg/dpa;

    iget-object v3, v3, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v3, v6, v4}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gay;

    iget-object v2, v1, Lg/gay;->b:Lg/gez;

    if-eqz v2, :cond_7

    iget-object v1, v1, Lg/gay;->c:Lg/dpa;

    iget-object v1, v1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Lg/gez;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lg/esv;

    const/4 v5, 0x7

    invoke-direct {v4, v3, v5, v1}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2, v4}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null option descriptions in plugin id: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v0, Lg/cqc;->a:Lg/dba;

    invoke-interface {v0}, Lg/dba;->af()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lg/cqc;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/gpn;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/gpn;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "Loaded custom passes: {} {}"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2, v1}, Lg/dba;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public final declared-synchronized y(Lg/cci;)Lg/cno;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lg/cci;->ae:Lg/cno;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lg/cci;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/cno;

    iget-object v1, p1, Lg/cci;->ai:Lg/cci;

    invoke-virtual {p0, v1}, Lg/cqc;->y(Lg/cci;)Lg/cno;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lg/cno;-><init>(Lg/cci;Lg/cno;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, Lg/cno;

    invoke-direct {v0, p1, p0}, Lg/cno;-><init>(Lg/cci;Lg/cqc;)V

    :goto_0
    iput-object v0, p1, Lg/cci;->ae:Lg/cno;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final z()V
    .locals 5

    iget-object v0, p0, Lg/cqc;->m:Lg/cln;

    iget-object v0, v0, Lg/cln;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gay;

    :try_start_0
    iget-boolean v2, v1, Lg/gay;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lg/gay;->g:Lg/cka;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iget-object v4, v1, Lg/gay;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lg/cln;->a:Lg/dba;

    const-string v4, "Failed to unload plugin: {}"

    iget-object v1, v1, Lg/gay;->c:Lg/dpa;

    iget-object v1, v1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1, v4, v2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lg/cqc;->j:Lg/dwg;

    iput-object v0, p0, Lg/cqc;->p:Ljava/util/List;

    iput-object v0, p0, Lg/cqc;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lg/cqc;->n:Lg/erf;

    iget-object v0, v0, Lg/erf;->a:Lg/akj;

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lg/akj;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
