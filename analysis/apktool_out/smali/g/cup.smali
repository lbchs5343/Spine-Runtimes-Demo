.class public final Lg/cup;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dpy;


# instance fields
.field public final a:Lg/cnc;

.field public final b:Lg/cnc;

.field public final c:Lg/cnc;

.field public final d:Lg/ezt;

.field public final f:Lg/cnc;

.field public final g:Z

.field public final h:Lg/cnc;

.field public final i:Z

.field public final j:Lg/eqn;

.field public final k:Lg/cnc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/ezt;Lg/cnc;Lg/eqn;Lg/cnc;Lg/cnc;Lg/cnc;Lg/cnc;Lg/cnc;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cup;->d:Lg/ezt;

    iput-object p3, p0, Lg/cup;->h:Lg/cnc;

    iput-object p4, p0, Lg/cup;->j:Lg/eqn;

    iput-object p5, p0, Lg/cup;->b:Lg/cnc;

    iput-object p6, p0, Lg/cup;->c:Lg/cnc;

    iput-object p7, p0, Lg/cup;->f:Lg/cnc;

    iput-object p8, p0, Lg/cup;->k:Lg/cnc;

    iput-object p9, p0, Lg/cup;->a:Lg/cnc;

    iput-boolean p10, p0, Lg/cup;->g:Z

    iput-boolean p11, p0, Lg/cup;->i:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/fts;Lg/cgf;Lg/grq;)Lg/dvz;
    .locals 0

    new-instance p2, Lg/gpb;

    invoke-direct {p2, p1, p3, p0}, Lg/gpb;-><init>(Lg/fts;Lg/grq;Lg/cup;)V

    return-object p2
.end method

.method public getType()Lg/ezt;
    .locals 1

    iget-object v0, p0, Lg/cup;->d:Lg/ezt;

    return-object v0
.end method
