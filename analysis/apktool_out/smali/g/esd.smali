.class public final Lg/esd;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dpy;


# instance fields
.field public final a:F

.field public final b:Lg/dlz;

.field public final c:Lg/cnc;

.field public final d:Lg/cnc;

.field public final f:Lg/ctn;

.field public final g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Lg/dlz;

.field public final j:Lg/fvo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/cnc;Ljava/util/ArrayList;Lg/dlz;Lg/dlz;Lg/cnc;Lg/ctn;Lg/fvo;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/esd;->d:Lg/cnc;

    iput-object p3, p0, Lg/esd;->h:Ljava/util/ArrayList;

    iput-object p4, p0, Lg/esd;->i:Lg/dlz;

    iput-object p5, p0, Lg/esd;->b:Lg/dlz;

    iput-object p6, p0, Lg/esd;->c:Lg/cnc;

    iput-object p7, p0, Lg/esd;->f:Lg/ctn;

    iput-object p8, p0, Lg/esd;->j:Lg/fvo;

    iput p9, p0, Lg/esd;->a:F

    iput-boolean p10, p0, Lg/esd;->g:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/fts;Lg/cgf;Lg/grq;)Lg/dvz;
    .locals 0

    new-instance p2, Lg/dib;

    invoke-direct {p2, p1, p3, p0}, Lg/dib;-><init>(Lg/fts;Lg/grq;Lg/esd;)V

    return-object p2
.end method
