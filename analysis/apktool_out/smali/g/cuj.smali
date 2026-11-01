.class public final Lg/cuj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:Lg/hed;

.field public final c:Lg/fza;

.field public final d:[Lg/vm;


# direct methods
.method public constructor <init>(Lg/hed;Lg/fza;[Lg/vm;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cuj;->b:Lg/hed;

    iput-object p2, p0, Lg/cuj;->c:Lg/fza;

    iput-object p3, p0, Lg/cuj;->d:[Lg/vm;

    iput-object p4, p0, Lg/cuj;->a:[I

    return-void
.end method


# virtual methods
.method public final e(Lg/gks;)Lg/vm;
    .locals 4

    iget v0, p1, Lg/gks;->e:I

    iget-object v1, p0, Lg/cuj;->a:[I

    aget v2, v1, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, v1, v0

    iget-object v1, p0, Lg/cuj;->b:Lg/hed;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg/vm;

    invoke-direct {v3, v0, v2, p1}, Lg/vm;-><init>(IILg/gks;)V

    iget-object p1, v1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lg/hed;->at:Ljava/util/List;

    :cond_0
    iget-object p1, v1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/cuj;->d:[Lg/vm;

    aput-object v3, p1, v0

    return-object v3
.end method
