.class public final Lg/gjb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lg/fvd;

.field public final c:Ljava/util/List;

.field public final d:Ljavax/net/SocketFactory;

.field public final e:Ljava/util/ArrayList;

.field public f:Lg/dfw;

.field public final g:Lg/bco;

.field public h:Lg/cop;

.field public i:I

.field public j:Z

.field public k:I

.field public l:Ljava/util/List;

.field public final m:Lg/bfy;

.field public final n:Z

.field public final o:Lg/fc;

.field public final p:Lg/ao;

.field public final q:Lg/gvr;

.field public r:I

.field public final s:Ljava/util/ArrayList;

.field public final t:Lg/bfy;

.field public final u:Lg/bws;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/cop;

    invoke-direct {v0}, Lg/cop;-><init>()V

    iput-object v0, p0, Lg/gjb;->h:Lg/cop;

    new-instance v0, Lg/fc;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/fc;-><init>(I)V

    iput-object v0, p0, Lg/gjb;->o:Lg/fc;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/gjb;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/gjb;->e:Ljava/util/ArrayList;

    new-instance v0, Lg/bco;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/bco;-><init>(I)V

    iput-object v0, p0, Lg/gjb;->g:Lg/bco;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gjb;->j:Z

    sget-object v1, Lg/bfy;->l:Lg/bfy;

    iput-object v1, p0, Lg/gjb;->t:Lg/bfy;

    iput-boolean v0, p0, Lg/gjb;->a:Z

    iput-boolean v0, p0, Lg/gjb;->n:Z

    sget-object v0, Lg/ao;->k:Lg/ao;

    iput-object v0, p0, Lg/gjb;->p:Lg/ao;

    sget-object v0, Lg/dfw;->r:Lg/cfg;

    iput-object v0, p0, Lg/gjb;->f:Lg/dfw;

    iput-object v1, p0, Lg/gjb;->m:Lg/bfy;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg/gjb;->d:Ljavax/net/SocketFactory;

    sget-object v0, Lg/fys;->a:Ljava/util/List;

    iput-object v0, p0, Lg/gjb;->c:Ljava/util/List;

    sget-object v0, Lg/fys;->b:Ljava/util/List;

    iput-object v0, p0, Lg/gjb;->l:Ljava/util/List;

    sget-object v0, Lg/gvr;->a:Lg/gvr;

    iput-object v0, p0, Lg/gjb;->q:Lg/gvr;

    sget-object v0, Lg/bws;->a:Lg/bws;

    iput-object v0, p0, Lg/gjb;->u:Lg/bws;

    const/16 v0, 0x2710

    iput v0, p0, Lg/gjb;->k:I

    iput v0, p0, Lg/gjb;->r:I

    iput v0, p0, Lg/gjb;->i:I

    return-void
.end method
