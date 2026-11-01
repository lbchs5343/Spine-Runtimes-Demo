.class public final Lg/gqt;
.super Ljava/lang/Object;

# interfaces
.implements Lg/bdu;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lg/fts;


# direct methods
.method public constructor <init>(Lg/fts;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gqt;->c:Lg/fts;

    iput p2, p0, Lg/gqt;->a:I

    iput p3, p0, Lg/gqt;->b:I

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 5

    iget-object v0, p0, Lg/gqt;->c:Lg/fts;

    iget-object v1, v0, Lg/fts;->x:Lg/cgf;

    iget v2, p0, Lg/gqt;->a:I

    iget v3, p0, Lg/gqt;->b:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/fts;->al:Ljava/util/ArrayList;

    new-instance v4, Lg/gqt;

    invoke-direct {v4, v0, v2, v3}, Lg/gqt;-><init>(Lg/fts;II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    int-to-float v1, v2

    int-to-float v2, v3

    const v3, 0x3f7d70a4    # 0.99f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lg/bzg;->q(FF)V

    return-void
.end method
