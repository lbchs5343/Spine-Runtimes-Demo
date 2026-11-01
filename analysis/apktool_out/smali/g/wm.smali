.class public abstract Lg/wm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/wm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/wm;->a:Lg/dba;

    return-void
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lg/bqu;->i(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lg/bqu;->f(Ljava/io/File;)V

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lg/wm;->a:Lg/dba;

    const-string v0, "Save file error"

    invoke-interface {p1, v0, p0}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/io/File;Lg/cci;Lg/emz;)V
    .locals 4

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    iget-object v2, p1, Lg/cci;->ab:Lg/dwg;

    iget-object p1, p1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lg/emz;->e:Lg/grx;

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lg/emz;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lg/dwg;->i:Lg/ur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lg/ve;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lg/dwg;->i:Lg/ur;

    iget-object p1, p1, Lg/ur;->o:Lg/dyx;

    sget-object v2, Lg/drd;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string p1, ".json"

    goto :goto_0

    :cond_3
    new-instance p0, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown output format: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p1, ".java"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lg/ur;->am:Lg/cvp;

    iget-object v0, v0, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v0, p1}, Lg/ctk;->bt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lg/wm;->b(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
