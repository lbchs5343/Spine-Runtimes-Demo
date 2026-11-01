.class public final Lg/ddn;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;


# instance fields
.field public final synthetic a:Lg/grq;


# direct methods
.method public constructor <init>(Lg/grq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ddn;->a:Lg/grq;

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 3

    iget-object v0, p0, Lg/ddn;->a:Lg/grq;

    iget-object v1, v0, Lg/grq;->bf:Lg/bsb;

    invoke-virtual {v1}, Lg/bsb;->c()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v0, Lg/grq;->bd:Z

    if-eq v1, v2, :cond_1

    iput-boolean v1, v0, Lg/grq;->bd:Z

    iget-object v0, v0, Lg/grq;->af:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    :cond_1
    return-void
.end method
