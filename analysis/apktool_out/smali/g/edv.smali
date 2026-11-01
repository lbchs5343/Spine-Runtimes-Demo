.class public final Lg/edv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bvw;

.field public final synthetic b:Lg/ayw;


# direct methods
.method public constructor <init>(Lg/bvw;Lg/ayw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/edv;->a:Lg/bvw;

    iput-object p2, p0, Lg/edv;->b:Lg/ayw;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/edv;->a:Lg/bvw;

    invoke-virtual {v0, p1}, Lg/bvw;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lg/das;

    invoke-virtual {v0}, Lg/bvw;->e()I

    move-result v0

    invoke-direct {p1, v0}, Lg/das;-><init>(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lg/gpr;->a:Lg/gpr;

    :goto_0
    iget-object v0, p0, Lg/edv;->b:Lg/ayw;

    check-cast v0, Lg/dgs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lg/dgs;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
