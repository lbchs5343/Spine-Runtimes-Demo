.class public final Lg/dcj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/dcj;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/dcj;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/dcj;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/dcj;->c:Ljava/util/HashSet;

    return-void
.end method

.method public static d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    invoke-interface {p0}, Lg/awj;->a()Lg/dwg;

    move-result-object v0

    iget-object v0, v0, Lg/dwg;->p:Lg/dcj;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lg/dcj;->b:Ljava/util/HashSet;

    move-object v2, p0

    check-cast v2, Lg/epk;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lg/dcj;->e(Lg/awj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, p2, Ljava/lang/StackOverflowError;

    if-eqz v2, :cond_0

    sget-object v2, Lg/dcj;->a:Lg/dba;

    const-string v3, "{}, error: StackOverflowError"

    invoke-interface {v2, v1, v3}, Lg/dba;->m(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    instance-of v2, p2, Lg/blf;

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lg/blf;

    invoke-direct {v2, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lg/dcj;->a:Lg/dba;

    const-string v4, "{}, details: {}"

    invoke-interface {v3, v1, v4, p2}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p2, Lg/dcj;->a:Lg/dba;

    const-string v3, "{}"

    invoke-interface {p2, v1, v3}, Lg/dba;->m(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object p2, v2

    goto :goto_2

    :cond_3
    sget-object v2, Lg/dcj;->a:Lg/dba;

    invoke-interface {v2, v1, p2}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    check-cast p0, Lg/epk;

    sget-object v1, Lg/acq;->af:Lg/acq;

    new-instance v2, Lg/hab;

    invoke-direct {v2, p1, p2}, Lg/hab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p0, Lg/lh;

    invoke-virtual {p0, v1, v2}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static e(Lg/awj;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, " in "

    invoke-static {p1, v0}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lg/awj;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lg/awj;->_by()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
