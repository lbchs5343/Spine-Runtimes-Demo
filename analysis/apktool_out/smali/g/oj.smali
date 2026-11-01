.class public final Lg/oj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Lg/cvp;

.field public final c:Lg/awr;

.field public final d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/oj;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/oj;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/cqc;Ljava/io/File;Lg/awr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lg/oj;->c:Lg/awr;

    iput-object p2, p0, Lg/oj;->d:Ljava/io/File;

    iget-object p1, p1, Lg/cqc;->k:Lg/ur;

    iget-object p1, p1, Lg/ur;->am:Lg/cvp;

    iput-object p1, p0, Lg/oj;->b:Lg/cvp;

    return-void
.end method

.method public static e(Lg/mf;Ljava/io/File;)V
    .locals 5

    sget-object v0, Lg/ghj;->a:[I

    iget-object v1, p0, Lg/mf;->c:Lg/gju;

    iget-object v2, p0, Lg/mf;->a:Ljava/lang/Object;

    iget-object p0, p0, Lg/mf;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const-string v3, "Resource \'{}\' not saved, got exception"

    sget-object v4, Lg/oj;->a:Lg/dba;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p1, "Resource \'{}\' not saved, unknown type"

    invoke-interface {v4, p0, p1}, Lg/dba;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast v2, Lg/awr;

    sget-object v0, Lg/bqu;->c:Lg/dba;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lg/bqu;->f(Ljava/io/File;)V

    :try_start_0
    new-instance v0, Lg/aoi;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v0}, Lg/cvm;->f(Lg/awr;Lg/ery;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-interface {v4, p0, v3, p1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast v2, [B

    sget-object v0, Lg/bqu;->c:Lg/dba;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lg/bqu;->f(Ljava/io/File;)V

    :try_start_1
    invoke-static {p1}, Lg/bnl;->u(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2, v0}, Lg/cnf;->o(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-interface {v4, p0, v3, p1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v2, Lg/emz;

    sget-object p0, Lg/wm;->a:Lg/dba;

    invoke-interface {v2}, Lg/emz;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lg/wm;->b(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f(Lg/mf;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lg/mf;->c:Lg/gju;

    sget-object v1, Lg/gju;->RES_TABLE:Lg/gju;

    iget-object v2, p0, Lg/oj;->d:Ljava/io/File;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v1, "res/values/public.xml"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lg/oj;->e(Lg/mf;Ljava/io/File;)V

    iget-object p1, p1, Lg/mf;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/mf;

    invoke-virtual {p0, v0}, Lg/oj;->f(Lg/mf;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lg/mf;->d:Ljava/lang/String;

    const/16 v3, 0x2f

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lg/oj;->b:Lg/cvp;

    iget-object v1, v1, Lg/cvp;->c:Lg/ctk;

    invoke-interface {v1, v2, v0}, Lg/ctk;->bu(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "Invalid resource name or path traversal attack detected: {}"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/oj;->a:Lg/dba;

    invoke-interface {v1, v0, p1}, Lg/dba;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1, v0}, Lg/oj;->e(Lg/mf;Ljava/io/File;)V

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lg/oj;->c:Lg/awr;

    :try_start_0
    invoke-virtual {v0}, Lg/awr;->f()Lg/mf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg/oj;->f(Lg/mf;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Failed to save resource: {}"

    iget-object v0, v0, Lg/awr;->d:Ljava/lang/String;

    sget-object v3, Lg/oj;->a:Lg/dba;

    invoke-interface {v3, v0, v2, v1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
