.class public final synthetic Lg/eyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/cvw;

.field public final synthetic b:Lg/cet;

.field public final synthetic c:Lg/eje;

.field public final synthetic d:Lg/ao;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/ao;Ljava/lang/String;Lg/cvw;Lg/cet;Lg/eje;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eyb;->d:Lg/ao;

    iput-object p2, p0, Lg/eyb;->e:Ljava/lang/String;

    iput-object p3, p0, Lg/eyb;->a:Lg/cvw;

    iput-object p4, p0, Lg/eyb;->b:Lg/cet;

    iput-object p5, p0, Lg/eyb;->c:Lg/eje;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lg/eyb;->e:Ljava/lang/String;

    iget-object v1, p0, Lg/eyb;->a:Lg/cvw;

    iget-object v2, p0, Lg/eyb;->b:Lg/cet;

    iget-object v3, p0, Lg/eyb;->c:Lg/eje;

    iget-object v4, p0, Lg/eyb;->d:Lg/ao;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/baf;->am()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string v5, "label"

    invoke-static {v0, v5}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/baf;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lg/cvw;->invoke()Ljava/lang/Object;

    sget-object v0, Lg/gev;->a:Lg/bki;

    invoke-virtual {v2, v0}, Lg/cet;->aa(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lg/eje;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    new-instance v1, Lg/gwh;

    invoke-direct {v1, v0}, Lg/gwh;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lg/cet;->aa(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lg/eje;->f(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw v0
.end method
