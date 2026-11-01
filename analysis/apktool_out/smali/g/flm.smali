.class public final Lg/flm;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dpy;


# instance fields
.field public final a:Lg/dlz;

.field public final b:Lg/dlz;

.field public final c:Lg/gqk;

.field public final d:Lg/dlz;

.field public final f:Landroid/graphics/Path$FillType;

.field public final g:Lg/dlz;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/gqk;Landroid/graphics/Path$FillType;Lg/dlz;Lg/dlz;Lg/dlz;Lg/dlz;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/flm;->c:Lg/gqk;

    iput-object p3, p0, Lg/flm;->f:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lg/flm;->g:Lg/dlz;

    iput-object p5, p0, Lg/flm;->a:Lg/dlz;

    iput-object p6, p0, Lg/flm;->b:Lg/dlz;

    iput-object p7, p0, Lg/flm;->d:Lg/dlz;

    iput-boolean p8, p0, Lg/flm;->h:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/fts;Lg/cgf;Lg/grq;)Lg/dvz;
    .locals 1

    new-instance v0, Lg/com;

    invoke-direct {v0, p1, p2, p3, p0}, Lg/com;-><init>(Lg/fts;Lg/cgf;Lg/grq;Lg/flm;)V

    return-object v0
.end method
