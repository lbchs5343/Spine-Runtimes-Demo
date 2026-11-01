.class public final Lg/cpp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# instance fields
.field public b:Lg/gtb;

.field public final c:Lg/fvi;

.field public final d:Lg/fdy;

.field public final e:Lg/bcp;

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Lg/eie;

.field public i:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg/cpp;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lg/fdy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/bcp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    iput-object v0, p0, Lg/cpp;->e:Lg/bcp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cpp;->g:Ljava/util/ArrayList;

    new-instance v0, Lg/eie;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/cpp;->h:Lg/eie;

    new-instance v0, Lg/fvi;

    invoke-direct {v0, v2, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/cpp;->c:Lg/fvi;

    iput-boolean v1, p0, Lg/cpp;->f:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/cpp;->i:F

    iput-object p1, p0, Lg/cpp;->d:Lg/fdy;

    return-void
.end method
