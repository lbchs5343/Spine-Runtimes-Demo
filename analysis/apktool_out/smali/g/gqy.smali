.class public final Lg/gqy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Lg/ert;

.field public i:I

.field public j:Z

.field public k:I

.field public l:Ljava/lang/Boolean;

.field public final m:J

.field public n:Ljava/lang/Boolean;

.field public o:I

.field public p:Lg/bpi;

.field public q:I

.field public r:J


# direct methods
.method public constructor <init>(Lg/ert;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/bpi;->SEARCH:Lg/bpi;

    iput-object v0, p0, Lg/gqy;->p:Lg/bpi;

    const/4 v0, -0x1

    iput v0, p0, Lg/gqy;->k:I

    iput v0, p0, Lg/gqy;->d:I

    iput v0, p0, Lg/gqy;->c:I

    iput v0, p0, Lg/gqy;->o:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lg/gqy;->r:J

    iput-object p1, p0, Lg/gqy;->h:Lg/ert;

    iput-wide p2, p0, Lg/gqy;->m:J

    return-void
.end method
