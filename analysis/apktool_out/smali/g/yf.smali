.class public abstract Lg/yf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/yf;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/yf;->a:Lg/dba;

    return-void
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/fqy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " directory exists as file "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lg/cqc;)V
    .locals 7

    iget-object v0, p0, Lg/cqc;->k:Lg/ur;

    iget-object v1, v0, Lg/ur;->ad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lg/cqc;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lg/fqy;

    const-string v0, "Please specify input file"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lg/fqy;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "File not found "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lg/ur;->aj:Ljava/io/File;

    iget-object v1, v0, Lg/ur;->s:Ljava/io/File;

    iget-object v2, v0, Lg/ur;->z:Ljava/io/File;

    sget-object v3, Lg/yf;->a:Lg/dba;

    if-nez p0, :cond_8

    if-eqz v1, :cond_4

    move-object v4, v1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    move-object v4, v2

    goto :goto_3

    :cond_5
    iget-object p0, v0, Lg/ur;->ad:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string p0, "jadx-output"

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    const-string v4, "-jadx-output"

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string v4, "output directory: {}"

    invoke-interface {v3, p0, v4}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    iput-object v4, v0, Lg/ur;->aj:Ljava/io/File;

    :cond_8
    if-nez v1, :cond_9

    new-instance p0, Ljava/io/File;

    iget-object v1, v0, Lg/ur;->aj:Ljava/io/File;

    const-string v4, "sources"

    invoke-direct {p0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v0, Lg/ur;->s:Ljava/io/File;

    :cond_9
    if-nez v2, :cond_a

    new-instance p0, Ljava/io/File;

    iget-object v1, v0, Lg/ur;->aj:Ljava/io/File;

    const-string v2, "resources"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v0, Lg/ur;->z:Ljava/io/File;

    :cond_a
    iget-object p0, v0, Lg/ur;->aj:Ljava/io/File;

    const-string v1, "Output"

    invoke-static {p0, v1}, Lg/yf;->b(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, v0, Lg/ur;->s:Ljava/io/File;

    const-string v1, "Source output"

    invoke-static {p0, v1}, Lg/yf;->b(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, v0, Lg/ur;->z:Ljava/io/File;

    const-string v1, "Resources output"

    invoke-static {p0, v1}, Lg/yf;->b(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3}, Lg/dba;->af()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "Effective jadx args: {}"

    invoke-interface {v3, v0, p0}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
