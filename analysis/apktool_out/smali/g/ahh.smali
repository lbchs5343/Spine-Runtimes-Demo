.class public final Lg/ahh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ctk;


# static fields
.field public static final a:Lg/dba;

.field public static final b:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ahh;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ahh;->a:Lg/dba;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lg/bnl;->i([Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lg/cnf;->t(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lg/bnl;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lg/ahh;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final bt(Ljava/lang/String;)Z
    .locals 4

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    sget-object v2, Lg/ahh;->a:Lg/dba;

    if-eqz v0, :cond_1

    const-string v0, "../"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "..\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Path traversal attack detected in entry: \'{}\'"

    invoke-interface {v2, p1, v0}, Lg/dba;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lg/ahh;->b:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lg/cnf;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lg/bnl;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3, v0}, Lg/bnl;->p(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "Invalid file name or path traversal attack detected: {}"

    invoke-interface {v2, p1, v0}, Lg/dba;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    const-string v3, "Invalid file name or path traversal attack detected: {} - error: {}"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p1, v3, v0}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public final bu(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final bv(Lg/ffs;)Z
    .locals 10

    invoke-interface {p1}, Lg/ffs;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/ahh;->bt(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lg/ffs;->d()J

    move-result-wide v2

    invoke-interface {p1}, Lg/ffs;->c()J

    move-result-wide v4

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_1

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    const/high16 v7, 0x1900000

    int-to-long v7, v7

    cmp-long v9, v4, v7

    if-ltz v9, :cond_2

    const/16 v7, 0x64

    int-to-long v7, v7

    mul-long v7, v7, v2

    cmp-long v9, v7, v4

    if-gez v9, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v6, :cond_4

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    return v0

    :cond_4
    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1}, Lg/ffs;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    sget-object p1, Lg/ahh;->a:Lg/dba;

    invoke-interface {p1, v4}, Lg/dba;->x([Ljava/lang/Object;)V

    :cond_5
    return v1
.end method

.method public final bw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bx()I
    .locals 1

    const v0, 0x186a0

    return v0
.end method
