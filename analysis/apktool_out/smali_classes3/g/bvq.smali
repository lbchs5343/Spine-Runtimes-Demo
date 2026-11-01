.class public final Lg/bvq;
.super Lg/kj;
.source "SourceFile"


# static fields
.field public static final a:Lg/bvq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/bvq;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/bvq;->a:Lg/bvq;

    return-void
.end method


# virtual methods
.method public final b(Lg/gea;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lg/bmb;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lg/gea;->i:Lg/dzh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
