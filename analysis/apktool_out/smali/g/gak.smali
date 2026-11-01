.class public final Lg/gak;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# static fields
.field public static final a:Lg/gak;

.field public static final b:Lg/gak;

.field public static final c:Lg/gak;

.field public static final e:Lg/gak;

.field public static final f:Lg/gak;

.field public static final g:Lg/gak;


# instance fields
.field public final synthetic i:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/gak;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/gak;-><init>(II)V

    sput-object v0, Lg/gak;->f:Lg/gak;

    new-instance v0, Lg/gak;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/gak;-><init>(II)V

    sput-object v0, Lg/gak;->b:Lg/gak;

    new-instance v0, Lg/gak;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lg/gak;-><init>(II)V

    sput-object v0, Lg/gak;->c:Lg/gak;

    new-instance v0, Lg/gak;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lg/gak;-><init>(II)V

    sput-object v0, Lg/gak;->e:Lg/gak;

    new-instance v0, Lg/gak;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lg/gak;-><init>(II)V

    sput-object v0, Lg/gak;->g:Lg/gak;

    new-instance v0, Lg/gak;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lg/gak;-><init>(II)V

    sput-object v0, Lg/gak;->a:Lg/gak;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lg/gak;->i:I

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/gak;->i:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/glc;

    check-cast p2, Lg/erz;

    return-object p1

    :pswitch_0
    check-cast p1, Lg/od;

    check-cast p2, Lg/erz;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lg/od;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lg/od;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_1
    check-cast p2, Lg/erz;

    instance-of v0, p2, Lg/od;

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_3

    :cond_4
    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    :goto_3
    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lg/erz;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lg/erz;

    return-object p1

    :pswitch_4
    check-cast p1, Lg/boj;

    check-cast p2, Lg/erz;

    invoke-interface {p1, p2}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
