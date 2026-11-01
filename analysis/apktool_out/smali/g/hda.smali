.class public final Lg/hda;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Z

.field public final c:Ljava/util/List;

.field public final d:Lg/frk;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/List;

.field public final g:Landroid/content/Context;

.field public final h:Z

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Lg/hs;

.field public final n:Lg/bjg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg/hs;Lg/frk;Ljava/util/List;ZLg/bjg;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "migrationContainer"

    invoke-static {p4, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "journalMode"

    invoke-static {p7, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryExecutor"

    invoke-static {p8, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionExecutor"

    invoke-static {p9, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeConverters"

    invoke-static {p13, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoMigrationSpecs"

    invoke-static {p14, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hda;->g:Landroid/content/Context;

    iput-object p2, p0, Lg/hda;->k:Ljava/lang/String;

    iput-object p3, p0, Lg/hda;->m:Lg/hs;

    iput-object p4, p0, Lg/hda;->d:Lg/frk;

    iput-object p5, p0, Lg/hda;->f:Ljava/util/List;

    iput-boolean p6, p0, Lg/hda;->h:Z

    iput-object p7, p0, Lg/hda;->n:Lg/bjg;

    iput-object p8, p0, Lg/hda;->a:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lg/hda;->j:Ljava/util/concurrent/Executor;

    iput-boolean p10, p0, Lg/hda;->l:Z

    iput-boolean p11, p0, Lg/hda;->b:Z

    iput-object p12, p0, Lg/hda;->e:Ljava/util/Set;

    iput-object p13, p0, Lg/hda;->i:Ljava/util/List;

    iput-object p14, p0, Lg/hda;->c:Ljava/util/List;

    return-void
.end method
