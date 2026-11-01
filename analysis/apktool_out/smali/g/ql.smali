.class public final Lg/ql;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ql;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ql;->a:Lg/dba;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SaveDeobfMapping"

    return-object v0
.end method

.method public final h(Lg/dwg;)V
    .locals 9

    iget-object v0, p1, Lg/dwg;->i:Lg/ur;

    iget-object v1, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg/ur;->o:Lg/dyx;

    sget-object v3, Lg/dyx;->JSON:Lg/dyx;

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v1, Lg/ur;->l:Lg/cgz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/cgz;->READ_OR_SAVE:Lg/cgz;

    if-eq v2, v3, :cond_1

    sget-object v4, Lg/cgz;->OVERWRITE:Lg/cgz;

    if-ne v2, v4, :cond_5

    :cond_1
    sget-object v4, Lg/ghc;->a:Lg/dba;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lg/ur;->ad:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-static {v4}, Lg/bnl;->u(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Lg/cnf;->t(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    sget-object v6, Lg/bqu;->c:Lg/dba;

    invoke-static {v4}, Lg/cnf;->n(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Lg/cnf;->q(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v4}, Lg/cnf;->y(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jobf"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lg/cnf;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    iget-object v1, v1, Lg/ur;->l:Lg/cgz;

    sget-object v6, Lg/cgz;->IGNORE:Lg/cgz;

    if-eq v1, v6, :cond_3

    sget-object v1, Lg/ghc;->a:Lg/dba;

    const-string v6, "Deobfuscation map file set to: {}"

    invoke-interface {v1, v4, v6}, Lg/dba;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lg/ghc;

    invoke-direct {v1, v4}, Lg/ghc;-><init>(Ljava/nio/file/Path;)V

    iget-object v4, v1, Lg/ghc;->e:Ljava/nio/file/Path;

    if-ne v2, v3, :cond_4

    new-array v2, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v2}, Lg/cnh;->e(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v2, v1, Lg/ghc;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lg/ghc;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lg/ghc;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lg/ghc;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1, p1}, Lg/ghc;->h(Lg/dwg;)V

    invoke-virtual {v1}, Lg/ghc;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Failed to save deobfuscation map file \'{}\'"

    invoke-static {v4}, Lg/cnf;->t(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, Lg/ql;->a:Lg/dba;

    invoke-interface {v4, v3, v2, v1}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object v0, v0, Lg/ur;->o:Lg/dyx;

    sget-object v1, Lg/dyx;->JSON:Lg/dyx;

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Lg/atj;->c(Lg/dwg;)V

    :cond_6
    return-void
.end method
