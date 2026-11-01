.class public final Lg/gdp;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $attributionSource:Landroid/net/Uri;

.field final synthetic $inputEvent:Landroid/view/InputEvent;

.field label:I

.field final synthetic this$0:Lg/cev;


# direct methods
.method public constructor <init>(Lg/cev;Landroid/net/Uri;Landroid/view/InputEvent;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/gdp;->this$0:Lg/cev;

    iput-object p2, p0, Lg/gdp;->$attributionSource:Landroid/net/Uri;

    iput-object p3, p0, Lg/gdp;->$inputEvent:Landroid/view/InputEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/gdp;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/gdp;->this$0:Lg/cev;

    iget-object p1, p1, Lg/cev;->a:Lg/fuk;

    iget-object v1, p0, Lg/gdp;->$attributionSource:Landroid/net/Uri;

    iget-object v3, p0, Lg/gdp;->$inputEvent:Landroid/view/InputEvent;

    iput v2, p0, Lg/gdp;->label:I

    invoke-virtual {p1, v1, v3, p0}, Lg/fuk;->g(Landroid/net/Uri;Landroid/view/InputEvent;Lg/bdp;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/gdp;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/gdp;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/gdp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 3

    new-instance p1, Lg/gdp;

    iget-object v0, p0, Lg/gdp;->this$0:Lg/cev;

    iget-object v1, p0, Lg/gdp;->$attributionSource:Landroid/net/Uri;

    iget-object v2, p0, Lg/gdp;->$inputEvent:Landroid/view/InputEvent;

    invoke-direct {p1, v0, v1, v2, p2}, Lg/gdp;-><init>(Lg/cev;Landroid/net/Uri;Landroid/view/InputEvent;Lg/bdp;)V

    return-object p1
.end method
