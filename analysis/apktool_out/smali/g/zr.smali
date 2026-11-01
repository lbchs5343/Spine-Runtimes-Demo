.class public final Lg/zr;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $appContext:Landroid/content/Context;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/zr;->$appContext:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/zr;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lg/zr;->Z$0:Z

    iget-object v0, p0, Lg/zr;->$appContext:Landroid/content/Context;

    const-class v1, Lg/bmd;

    invoke-static {v0, v1, p1}, Lg/bcd;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/zr;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/zr;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/zr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 2

    new-instance v0, Lg/zr;

    iget-object v1, p0, Lg/zr;->$appContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lg/zr;-><init>(Landroid/content/Context;Lg/bdp;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lg/zr;->Z$0:Z

    return-object v0
.end method
