.class public final Lg/vi;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# static fields
.field public static final a:Lg/vi;

.field public static final b:Lg/vi;

.field public static final c:Lg/vi;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/vi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/vi;-><init>(II)V

    sput-object v0, Lg/vi;->c:Lg/vi;

    new-instance v0, Lg/vi;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/vi;-><init>(II)V

    sput-object v0, Lg/vi;->a:Lg/vi;

    new-instance v0, Lg/vi;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lg/vi;-><init>(II)V

    sput-object v0, Lg/vi;->b:Lg/vi;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lg/vi;->d:I

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/vi;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/pe;

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, " : "

    invoke-static {v0, v1}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(this)"

    invoke-static {p1, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lg/erz;

    instance-of v0, p1, Lg/cpk;

    if-eqz v0, :cond_1

    check-cast p1, Lg/cpk;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
