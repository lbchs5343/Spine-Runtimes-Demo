.class public final Lg/cru;
.super Lg/ajj;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroid/graphics/Matrix;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lg/cru;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Lg/cru;->d:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lg/ajj;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Matrix;Lg/ech;ILandroid/graphics/Canvas;)V
    .locals 2

    iget-object p1, p0, Lg/cru;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ajj;

    iget-object v1, p0, Lg/cru;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, Lg/ajj;->c(Landroid/graphics/Matrix;Lg/ech;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
