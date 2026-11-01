.class public final Lg/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;

.field public static final b:Lg/grx;


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/at;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/at;->a:Lg/dba;

    new-instance v0, Lg/grx;

    const-string v1, ""

    invoke-direct {v0, v1}, Lg/grx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/at;->b:Lg/grx;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lg/qp;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lg/at;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final d(Lg/cci;)V
    .locals 4

    invoke-virtual {p1}, Lg/cci;->bd()Lg/cci;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lg/at;->d(Lg/cci;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lg/at;->f(Lg/cci;Z)Lg/emz;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to process class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {p1}, Lg/ve;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e(Lg/cci;)Lg/emz;
    .locals 4

    invoke-virtual {p1}, Lg/cci;->bd()Lg/cci;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lg/at;->e(Lg/cci;)Lg/emz;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lg/at;->f(Lg/cci;Z)Lg/emz;

    sget-object p1, Lg/at;->b:Lg/grx;

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lg/cci;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cci;

    invoke-virtual {p0, v2, v1}, Lg/at;->f(Lg/cci;Z)Lg/emz;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lg/cci;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Lg/at;->f(Lg/cci;Z)Lg/emz;

    iget-object v0, p1, Lg/cci;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cci;

    invoke-virtual {p0, v2, v1}, Lg/at;->f(Lg/cci;Z)Lg/emz;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/at;->f(Lg/cci;Z)Lg/emz;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lg/gck;

    const-string v1, "Codegen failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to generate code for class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {p1}, Lg/ve;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final f(Lg/cci;Z)Lg/emz;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p1, Lg/cci;->ad:Lg/gwz;

    sget-object v2, Lg/gwz;->PROCESS_COMPLETE:Lg/gwz;

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lg/evh;->n()V

    iget-object v1, p1, Lg/cci;->ak:Lg/ve;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lg/csv;->CLASS_DEEP_RELOAD:Lg/csv;

    iget-object v3, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lg/lh;->v(Lg/csv;)V

    invoke-virtual {p1}, Lg/cci;->ax()V

    sget-object v2, Lg/csv;->CLASS_UNLOADED:Lg/csv;

    invoke-virtual {p1, v2}, Lg/lh;->w(Lg/csv;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v2, Lg/csv;->CLASS_UNLOADED:Lg/csv;

    iget-object v3, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v3, p1}, Lg/dwg;->z(Lg/cci;)V

    invoke-virtual {p1, v2}, Lg/lh;->v(Lg/csv;)V

    :cond_2
    iget-object v2, p1, Lg/cci;->ad:Lg/gwz;

    sget-object v3, Lg/gwz;->GENERATED_AND_UNLOADED:Lg/gwz;

    if-ne v2, v3, :cond_3

    sget-object v2, Lg/gwz;->NOT_LOADED:Lg/gwz;

    iput-object v2, p1, Lg/cci;->ad:Lg/gwz;

    :cond_3
    if-eqz p2, :cond_4

    sget-object v2, Lg/csv;->RELOAD_AT_CODEGEN_STAGE:Lg/csv;

    iget-object v3, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Lg/lh;->v(Lg/csv;)V

    invoke-virtual {p1}, Lg/cci;->bh()V

    :cond_4
    iget-object v2, p1, Lg/cci;->ad:Lg/gwz;

    sget-object v3, Lg/gwz;->NOT_LOADED:Lg/gwz;

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lg/cci;->aw()V

    :cond_5
    iget-object v2, p1, Lg/cci;->ad:Lg/gwz;

    sget-object v3, Lg/gwz;->LOADED:Lg/gwz;

    if-ne v2, v3, :cond_7

    sget-object v2, Lg/gwz;->PROCESS_STARTED:Lg/gwz;

    iput-object v2, p1, Lg/cci;->ad:Lg/gwz;

    iget-object v2, p0, Lg/at;->c:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/pj;

    invoke-static {v3, p1}, Lg/cmb;->w(Lg/pj;Lg/cci;)V

    goto :goto_1

    :cond_6
    sget-object v2, Lg/gwz;->PROCESS_COMPLETE:Lg/gwz;

    iput-object v2, p1, Lg/cci;->ad:Lg/gwz;

    :cond_7
    if-eqz p2, :cond_9

    invoke-static {}, Lg/evh;->n()V

    invoke-static {p1}, Lg/bff;->at(Lg/cci;)Lg/emz;

    move-result-object v2

    sget-object v3, Lg/csv;->DONT_UNLOAD_CLASS:Lg/csv;

    iget-object v4, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lg/cci;->bh()V

    sget-object v3, Lg/gwz;->GENERATED_AND_UNLOADED:Lg/gwz;

    iput-object v3, p1, Lg/cci;->ad:Lg/gwz;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :try_start_1
    monitor-exit v1

    return-object v2

    :cond_9
    monitor-exit v1

    return-object v0

    :goto_2
    if-nez p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class process error: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v1

    :goto_3
    return-object v0

    :cond_a
    throw v2

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
