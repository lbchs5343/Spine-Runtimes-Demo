.class public final Lg/flk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lg/dwm;

.field public final d:Z

.field public final e:Lg/gjq;

.field public final f:Ljava/util/concurrent/ExecutorService;

.field public final g:Lg/bfy;

.field public final h:Lg/ao;

.field public final i:I

.field public final j:Lg/nt;

.field public final k:I

.field public final l:Ljava/util/concurrent/ExecutorService;

.field public final m:Lg/fnq;


# direct methods
.method public constructor <init>(Lg/bmr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Lg/baf;->at(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lg/flk;->f:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Lg/uj;->a:Lg/nt;

    iput-object p1, p0, Lg/flk;->j:Lg/nt;

    const/4 p1, 0x1

    invoke-static {p1}, Lg/baf;->at(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lg/flk;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lg/dwm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/dwm;-><init>(I)V

    iput-object v0, p0, Lg/flk;->c:Lg/dwm;

    sget-object v0, Lg/gjq;->a:Lg/gjq;

    iput-object v0, p0, Lg/flk;->e:Lg/gjq;

    sget-object v0, Lg/bfy;->aa:Lg/bfy;

    iput-object v0, p0, Lg/flk;->g:Lg/bfy;

    new-instance v0, Lg/fnq;

    invoke-direct {v0}, Lg/fnq;-><init>()V

    iput-object v0, p0, Lg/flk;->m:Lg/fnq;

    const/4 v0, 0x4

    iput v0, p0, Lg/flk;->a:I

    const v0, 0x7fffffff

    iput v0, p0, Lg/flk;->i:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    iput v0, p0, Lg/flk;->b:I

    const/16 v0, 0x8

    iput v0, p0, Lg/flk;->k:I

    iput-boolean p1, p0, Lg/flk;->d:Z

    new-instance p1, Lg/ao;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Lg/ao;-><init>(I)V

    iput-object p1, p0, Lg/flk;->h:Lg/ao;

    return-void
.end method
