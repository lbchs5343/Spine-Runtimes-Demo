.class public final Lg/ru;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:[I

.field public e:I

.field public f:Z

.field public final synthetic g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ru;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Lg/ru;->h()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lg/ru;->c:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lg/ru;->e:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/ru;->f:Z

    iput-boolean v1, p0, Lg/ru;->a:Z

    iput-boolean v1, p0, Lg/ru;->b:Z

    iget-object v1, p0, Lg/ru;->d:[I

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method
