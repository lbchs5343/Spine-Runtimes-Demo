.class public final Lg/arf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:F

.field public c:Z

.field public d:Z

.field public e:Lg/brh;

.field public final f:I

.field public g:Lg/brh;

.field public final h:Lg/brh;

.field public i:Lg/brh;

.field public j:Z

.field public final k:Z

.field public l:I

.field public m:Lg/brh;

.field public n:I

.field public o:Z

.field public p:Lg/brh;

.field public q:Lg/brh;


# direct methods
.method public constructor <init>(Lg/brh;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/arf;->b:F

    iput-object p1, p0, Lg/arf;->h:Lg/brh;

    iput p2, p0, Lg/arf;->f:I

    iput-boolean p3, p0, Lg/arf;->k:Z

    return-void
.end method
