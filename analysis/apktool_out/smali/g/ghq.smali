.class public final Lg/ghq;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dpy;


# instance fields
.field public final a:Z

.field public final b:Lg/eqn;

.field public final c:Lg/dlz;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/eqn;Lg/dlz;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ghq;->b:Lg/eqn;

    iput-object p3, p0, Lg/ghq;->c:Lg/dlz;

    iput-boolean p4, p0, Lg/ghq;->d:Z

    iput-boolean p5, p0, Lg/ghq;->a:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/fts;Lg/cgf;Lg/grq;)Lg/dvz;
    .locals 0

    new-instance p2, Lg/fop;

    invoke-direct {p2, p1, p3, p0}, Lg/fop;-><init>(Lg/fts;Lg/grq;Lg/ghq;)V

    return-object p2
.end method
