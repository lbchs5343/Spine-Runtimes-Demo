.class public final Lg/awr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/ffs;

.field public b:Ljava/lang/String;

.field public final c:Lg/cqc;

.field public final d:Ljava/lang/String;

.field public e:Lg/ag;


# direct methods
.method public constructor <init>(Lg/cqc;Ljava/lang/String;Lg/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/awr;->c:Lg/cqc;

    iput-object p2, p0, Lg/awr;->d:Ljava/lang/String;

    iput-object p3, p0, Lg/awr;->e:Lg/ag;

    return-void
.end method


# virtual methods
.method public final f()Lg/mf;
    .locals 5

    iget-object v0, p0, Lg/awr;->c:Lg/cqc;

    sget-object v1, Lg/cvm;->a:Lg/dba;

    :try_start_0
    iget-object v1, v0, Lg/cqc;->l:Lg/cvm;

    new-instance v2, Lg/eoc;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lg/eoc;-><init>(Lg/cvm;Lg/awr;I)V

    invoke-static {p0, v2}, Lg/cvm;->f(Lg/awr;Lg/ery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/mf;
    :try_end_0
    .catch Lg/uc; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lg/cvm;->a:Lg/dba;

    const-string v3, "Decode error"

    invoke-interface {v2, v3, v1}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lg/cqc;->j:Lg/dwg;

    invoke-virtual {v0}, Lg/dwg;->ac()Lg/flc;

    move-result-object v0

    const-string v2, "Error decode "

    invoke-virtual {v0, v2}, Lg/flc;->o(Ljava/lang/String;)V

    iget-object v2, p0, Lg/awr;->e:Lg/ag;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/flc;->o(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lg/evh;->j(Lg/eos;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lg/awr;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/awr;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Lg/flc;->finish()Lg/emz;

    move-result-object v0

    new-instance v2, Lg/mf;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v4, Lg/gju;->TEXT:Lg/gju;

    invoke-direct {v2, v1, v3, v0, v4}, Lg/mf;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lg/gju;)V

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceFile{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/awr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/awr;->e:Lg/ag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
