.class public final Lg/bqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cka;


# instance fields
.field public final c:Lg/gez;

.field public final d:Lg/cqv;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/gez;

    invoke-direct {v0}, Lg/gez;-><init>()V

    iput-object v0, p0, Lg/bqb;->c:Lg/gez;

    new-instance v1, Lg/cqv;

    invoke-direct {v1, v0}, Lg/cqv;-><init>(Lg/gez;)V

    iput-object v1, p0, Lg/bqb;->d:Lg/cqv;

    return-void
.end method


# virtual methods
.method public final a()Lg/dpa;
    .locals 4

    new-instance v0, Lg/dpa;

    const-string v1, "Dex Input"

    const-string v2, "Load .dex and .apk files"

    const-string v3, "dex-input"

    invoke-direct {v0, v3, v1, v2}, Lg/dpa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lg/gay;)V
    .locals 3

    iget-object v0, p0, Lg/bqb;->c:Lg/gez;

    iget-object v1, p1, Lg/gay;->f:Lg/cqc;

    :try_start_0
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lg/gay;->b:Lg/gez;

    iget-object v2, v1, Lg/cqc;->k:Lg/ur;

    iget-object v2, v2, Lg/ur;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lg/gez;->l(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lg/gpy;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lg/gpy;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lg/gay;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/bqb;->d:Lg/cqv;

    iget-object v0, v1, Lg/cqc;->i:Lg/eie;

    iput-object v0, p1, Lg/cqv;->d:Lg/eie;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lg/gck;

    iget-object p1, p1, Lg/gay;->c:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v2, "Failed to apply options for plugin: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
