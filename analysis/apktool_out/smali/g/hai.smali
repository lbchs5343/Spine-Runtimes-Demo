.class public final Lg/hai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final synthetic a:Lg/cdj;

.field public final synthetic c:Lg/fkj;


# direct methods
.method public constructor <init>(Lg/cdj;Lg/fkj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hai;->a:Lg/cdj;

    iput-object p2, p0, Lg/hai;->c:Lg/fkj;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lg/bfx;

    iget-object p2, p0, Lg/hai;->a:Lg/cdj;

    iget-object v0, p0, Lg/hai;->c:Lg/fkj;

    invoke-interface {p2, v0, p1}, Lg/cdj;->a(Lg/fkj;Lg/bfx;)V

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
