.class public final Lg/fzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/blx;


# static fields
.field public static final b:Lg/dba;


# instance fields
.field public final c:Z

.field public d:Ljava/util/zip/ZipFile;

.field public final e:Ljava/io/File;

.field public final f:Lg/ctk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/fzz;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/fzz;->b:Lg/dba;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lg/fdy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fzz;->e:Ljava/io/File;

    iget-object p1, p2, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, Lg/ctk;

    iput-object p1, p0, Lg/fzz;->f:Lg/ctk;

    invoke-interface {p1}, Lg/ctk;->bw()Z

    move-result p1

    iput-boolean p1, p0, Lg/fzz;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lg/eqm;
    .locals 8

    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lg/fzz;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lg/fzz;->d:Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lg/fzz;->f:Lg/ctk;

    invoke-interface {v0}, Lg/ctk;->bx()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7fffffff

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lg/fzz;->d:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lg/bsl;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p0, v5}, Lg/bsl;-><init>(Lg/fzz;Ljava/util/zip/ZipEntry;)V

    invoke-interface {v0, v4}, Lg/ctk;->bv(Lg/ffs;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v6, Lg/fzz;->b:Lg/dba;

    const-string v7, "Zip entry \'{}\' is invalid and excluded from processing"

    invoke-interface {v6, v4, v7}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Max entries count limit exceeded: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lg/eqm;

    invoke-direct {v0, p0, v2}, Lg/eqm;-><init>(Lg/blx;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lg/fzz;->d:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lg/fzz;->d:Ljava/util/zip/ZipFile;

    return-void

    :goto_1
    iput-object v0, p0, Lg/fzz;->d:Ljava/util/zip/ZipFile;

    throw v1
.end method

.method public final g(Lg/bsl;)Ljava/io/BufferedInputStream;
    .locals 4

    iget-object v0, p0, Lg/fzz;->d:Ljava/util/zip/ZipFile;

    iget-object p1, p1, Lg/bsl;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lg/fzz;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Lg/cwf;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lg/cwf;-><init>(JLjava/io/InputStream;)V

    move-object v0, v1

    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method
