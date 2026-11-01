.class public final Lg/gxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dcm;


# static fields
.field public static final a:Lg/gxe;

.field public static final b:Lg/gxe;

.field public static final c:Lg/gxe;

.field public static final d:Lg/gxe;

.field public static final e:Lg/gxe;


# instance fields
.field public final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gxe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/gxe;-><init>(I)V

    sput-object v0, Lg/gxe;->d:Lg/gxe;

    new-instance v0, Lg/gxe;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/gxe;-><init>(I)V

    sput-object v0, Lg/gxe;->e:Lg/gxe;

    new-instance v0, Lg/gxe;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/gxe;-><init>(I)V

    sput-object v0, Lg/gxe;->a:Lg/gxe;

    new-instance v0, Lg/gxe;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/gxe;-><init>(I)V

    sput-object v0, Lg/gxe;->b:Lg/gxe;

    new-instance v0, Lg/gxe;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/gxe;-><init>(I)V

    sput-object v0, Lg/gxe;->c:Lg/gxe;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/gxe;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 2

    iget v0, p0, Lg/gxe;->f:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0

    :pswitch_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0

    :pswitch_2
    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    :goto_0
    return p1

    :pswitch_4
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
