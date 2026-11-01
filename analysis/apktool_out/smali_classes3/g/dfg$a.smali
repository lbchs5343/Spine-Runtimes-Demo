.class public Lg/dfg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/dfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lg/eem;Lg/ri;)Lg/bke;
    .locals 0

    iget-object p1, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class p2, Ljava/sql/Time;

    if-ne p1, p2, :cond_0

    new-instance p1, Lg/dfg;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/dfg;-><init>(I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
