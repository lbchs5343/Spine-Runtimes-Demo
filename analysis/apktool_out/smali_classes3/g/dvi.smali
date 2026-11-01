.class public final Lg/dvi;
.super Lg/gzh;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/dvi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/reflect/Type;)Lg/eya;
    .locals 1

    iget v0, p0, Lg/dvi;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lg/gzh;->b(Ljava/lang/reflect/Type;)Lg/eya;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-class v0, Lg/sz;

    invoke-static {p1}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lg/ao;->y:Lg/ao;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lg/daw;)Lg/eya;
    .locals 2

    iget v0, p0, Lg/dvi;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lg/aky;->af(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lg/aky;->aa(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lg/daw;->p(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lg/eya;

    move-result-object p1

    new-instance p2, Lg/emr;

    const/16 p3, 0xd

    invoke-direct {p2, p3, p1}, Lg/emr;-><init>(ILjava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1

    :pswitch_0
    const-class p3, Lg/ehi;

    if-ne p1, p3, :cond_2

    const-class p1, Lg/gmh;

    invoke-static {p2, p1}, Lg/aky;->r([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/dwm;->t:Lg/dwm;

    goto :goto_1

    :cond_1
    sget-object p1, Lg/bmr;->t:Lg/bmr;

    goto :goto_1

    :cond_2
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_3

    sget-object p1, Lg/bfy;->q:Lg/bfy;

    goto :goto_1

    :cond_3
    sget-boolean p2, Lg/aky;->a:Z

    if-eqz p2, :cond_4

    :try_start_0
    const-class p2, Lg/dgi;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_4

    sget-object p1, Lg/acq;->f:Lg/acq;

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lg/aky;->a:Z

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
