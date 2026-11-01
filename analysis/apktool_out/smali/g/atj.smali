.class public abstract Lg/atj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;

.field public static final b:Lg/eem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/atj;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/atj;->a:Lg/dba;

    invoke-static {}, Lg/acr;->ap()Lg/aud;

    move-result-object v0

    sget-object v1, Lg/fvw;->LOWER_CASE_WITH_DASHES:Lg/fvw;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lg/aud;->n:Lg/fvw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/aud;->k:Z

    invoke-virtual {v0}, Lg/aud;->p()Lg/eem;

    move-result-object v0

    sput-object v0, Lg/atj;->b:Lg/eem;

    return-void
.end method

.method public static c(Lg/dwg;)V
    .locals 9

    new-instance v0, Lg/emk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lg/dwg;->e:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lg/emk;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cci;

    iget-object v3, v2, Lg/cci;->ak:Lg/ve;

    new-instance v4, Lg/clx;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lg/clx;-><init>(IZ)V

    iget-object v5, v3, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    invoke-virtual {v3}, Lg/ve;->m()Ljava/lang/String;

    invoke-virtual {v2}, Lg/cci;->bd()Lg/cci;

    move-result-object v5

    iget-object v5, v5, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v5}, Lg/ve;->o()Ljava/lang/String;

    invoke-virtual {v3}, Lg/ve;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lg/cci;->bd()Lg/cci;

    move-result-object v3

    iget-object v3, v3, Lg/cci;->ak:Lg/ve;

    iget-object v3, v3, Lg/ve;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v3, v2, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x6

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lg/clx;->e:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/hcd;

    new-instance v7, Lg/cfg;

    invoke-direct {v7, v6}, Lg/cfg;-><init>(I)V

    iget-object v5, v5, Lg/hcd;->g:Lg/dsj;

    iget-object v5, v5, Lg/dsj;->e:Ljava/lang/String;

    iget-object v5, v4, Lg/clx;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lg/cci;->av()V

    iget-object v2, v2, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v4, Lg/clx;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hed;

    new-instance v5, Lg/fbc;

    invoke-direct {v5, v6}, Lg/fbc;-><init>(I)V

    iget-object v7, v3, Lg/hed;->al:Lg/ayu;

    iget-object v7, v7, Lg/ayu;->e:Ljava/lang/String;

    iget-boolean v7, v3, Lg/hed;->ar:Z

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x0

    goto :goto_4

    :cond_4
    iget-object v3, v3, Lg/hed;->ab:Lg/atc;

    invoke-interface {v3}, Lg/atc;->j()I

    move-result v3

    int-to-long v7, v3

    :goto_4
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    iget-object v3, v4, Lg/clx;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_5
    iget-object v2, v0, Lg/emk;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object p0, p0, Lg/dwg;->i:Lg/ur;

    iget-object p0, p0, Lg/ur;->s:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    const-string v2, "mapping.json"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lg/bqu;->c:Lg/dba;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lg/bqu;->f(Ljava/io/File;)V

    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v2, Lg/atj;->b:Lg/eem;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lg/emk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, p0}, Lg/eem;->o(Ljava/io/Writer;)Lg/fwg;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lg/eem;->m(Ljava/lang/Object;Ljava/lang/Class;Lg/fwg;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lg/atj;->a:Lg/dba;

    const-string v2, "Save mappings to {}"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Lg/gyr;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    :try_start_6
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception p0

    new-instance v0, Lg/gck;

    const-string v1, "Failed to save mapping json"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
