.class public final Lg/ahg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final a:Lg/cvu;


# direct methods
.method public constructor <init>(Lg/ayw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ahg;->a:Lg/cvu;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/ahg;->a:Lg/cvu;

    invoke-interface {v0, p1, p2}, Lg/cvu;->d(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
